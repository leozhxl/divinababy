const MELHOR_ENVIO_API = 'https://melhorenvio.com.br/api/v2/me/shipment/calculate';

function onlyDigits(value: string): string {
  return value.replace(/\D/g, '');
}

interface QuoteOption {
  id: number;
  name: string;
  company: string;
  price: number;
  deliveryTime: number | null;
}

export default async function handler(req: any, res: any) {
  if (req.method !== 'POST') {
    res.status(405).json({ error: 'Método não permitido' });
    return;
  }

  const token = process.env.MELHOR_ENVIO_TOKEN;
  const originCep = process.env.MELHOR_ENVIO_ORIGIN_CEP;

  if (!token || !originCep) {
    res.status(500).json({ error: 'Cálculo de frete não configurado.' });
    return;
  }

  const { cep, quantity } = req.body as { cep?: string; quantity?: number };
  const destinationCep = onlyDigits(cep ?? '');

  if (destinationCep.length !== 8) {
    res.status(400).json({ error: 'CEP inválido.' });
    return;
  }

  const qty = Math.max(1, Number(quantity) || 1);
  const weight = Math.min(30, Math.max(0.3, qty * 0.15));

  try {
    const response = await fetch(MELHOR_ENVIO_API, {
      method: 'POST',
      headers: {
        Accept: 'application/json',
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`,
        'User-Agent': 'Divina Baby (leohenriquecandidocoelho@gmail.com)',
      },
      body: JSON.stringify({
        from: { postal_code: onlyDigits(originCep) },
        to: { postal_code: destinationCep },
        package: {
          height: 6,
          width: 16,
          length: 20,
          weight,
        },
      }),
    });

    if (!response.ok) {
      res.status(502).json({ error: 'Não foi possível calcular o frete agora.' });
      return;
    }

    const data = (await response.json()) as Array<{
      id: number;
      name: string;
      price?: string;
      delivery_time?: number;
      custom_delivery_time?: number;
      company?: { name?: string };
      error?: string;
    }>;

    const options: QuoteOption[] = data
      .filter((item) => !item.error && item.price)
      .map((item) => ({
        id: item.id,
        name: item.name,
        company: item.company?.name ?? '',
        price: Number(item.price),
        deliveryTime: item.custom_delivery_time ?? item.delivery_time ?? null,
      }))
      .sort((a, b) => a.price - b.price);

    res.status(200).json({ options });
  } catch {
    res.status(502).json({ error: 'Não foi possível calcular o frete agora.' });
  }
}
