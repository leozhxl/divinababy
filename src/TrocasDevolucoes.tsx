import Header from './Header';
import FloatingWhatsApp from './FloatingWhatsApp';
import { waLink } from './whatsapp';

function TrocasDevolucoes() {
  return (
    <div className="min-h-screen bg-cream-50">
      <Header />

      <section className="py-16 lg:py-24">
        <div className="max-w-3xl mx-auto px-6 lg:px-12">
          <h1 className="section-title mb-8">Trocas, Devoluções e Garantia</h1>

          <div className="space-y-6 font-sans-elegant text-sm text-nude-600 leading-relaxed" style={{ fontWeight: 300 }}>
            <h2 className="font-serif-elegant text-xl text-nude-800" style={{ fontWeight: 500 }}>
              Política de Troca em 7 Dias
            </h2>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>1. Prazo para Troca</p>
              <p>
                Você tem 7 dias a partir da data de recebimento do produto para solicitar a troca ou devolução. Após esse período, a solicitação de troca não será mais aceita.
              </p>
            </div>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>2. Condições para Troca</p>
              <p>Para que a troca seja efetuada, o produto deve atender às seguintes condições:</p>
              <ul className="list-disc pl-5 mt-2 space-y-1">
                <li>Estar na embalagem original e em perfeitas condições.</li>
                <li>Não apresentar sinais de uso, dano ou modificação.</li>
              </ul>
            </div>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>3. Como Solicitar a Troca</p>
              <p>Para iniciar o processo de troca, siga estas etapas:</p>
              <ul className="list-disc pl-5 mt-2 space-y-1">
                <li>Entre em contato com nosso atendimento ao cliente pelo Whatsapp (47) 99958-4448.</li>
                <li>Informe o número do pedido e o motivo da troca.</li>
                <li>Aguarde a autorização para enviar o produto de volta.</li>
              </ul>
            </div>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>4. Custos de Envio</p>
              <p>
                Os custos de envio para a troca é de responsabilidade do cliente, exceto em casos de produtos com defeito ou erros na entrega. O custo de envio poderá ser reembolsado de acordo com análise de nossa equipe, dependendo do motivo.
              </p>
            </div>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>5. Produtos Não Elegíveis para Troca</p>
              <p>Os seguintes produtos não podem ser trocados:</p>
              <ul className="list-disc pl-5 mt-2 space-y-1">
                <li>
                  Produtos personalizados ou feitos sob encomenda. Ex: Prendedor chupeta, Amigurumi, Mordedor, Chocalho, Kits Personalizados ou qualquer outro que seja feito sob encomenda.
                </li>
                <li>
                  Produtos de higiene pessoal ou íntima, se violada a embalagem original como por exemplo, Chupetas ou Mordedores.
                </li>
                <li>Produtos que foram modificados ou danificados pelo cliente.</li>
              </ul>
            </div>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>6. Troca por Valor</p>
              <p>
                Se o valor do novo produto for diferente do produto original, a diferença deverá ser paga ou será creditada, conforme o caso.
              </p>
            </div>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>7. Procedimento Após Recebimento</p>
              <p>
                Após receber o produto devolvido e confirmar que está nas condições mencionadas, processaremos a troca e enviaremos o novo produto no prazo de até 30 dias úteis.
              </p>
            </div>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>8. Cancelamento de Troca</p>
              <p>
                Em alguns casos, podemos cancelar a troca se o produto não atender às condições mencionadas. O cliente será informado e o produto será retornado ao endereço de origem.
              </p>
            </div>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>9. Contato</p>
              <p>
                Se você tiver alguma dúvida sobre a nossa política de troca, entre em contato com nossa equipe de atendimento ao cliente em nosso número Whatsapp (47) 99958-4448.
              </p>
            </div>

            <h2 className="font-serif-elegant text-xl text-nude-800 pt-4" style={{ fontWeight: 500 }}>
              Política de Garantia de 90 Dias
            </h2>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>1. Período de Garantia</p>
              <p>
                Oferecemos uma garantia de 90 dias a partir da data de recebimento do produto. Durante este período, qualquer defeito de fabricação será coberto.
              </p>
            </div>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>2. Cobertura da Garantia</p>
              <p>Esta garantia cobre:</p>
              <ul className="list-disc pl-5 mt-2 space-y-1">
                <li>Defeitos de fabricação.</li>
                <li>Problemas que afetem o funcionamento normal do produto.</li>
              </ul>
              <p className="mt-2">Não cobre:</p>
              <ul className="list-disc pl-5 mt-2 space-y-1">
                <li>Danos causados por uso inadequado, acidentes, ou desgaste natural.</li>
                <li>Problemas causados por modificações ou reparos não autorizados.</li>
              </ul>
            </div>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>3. Como Solicitar a Garantia</p>
              <p>Para solicitar a garantia:</p>
              <ul className="list-disc pl-5 mt-2 space-y-1">
                <li>Entre em contato com nosso atendimento ao cliente pelo telefone Whatsapp (47) 99958-4448.</li>
                <li>Forneça o número do pedido e uma descrição do problema.</li>
                <li>Envie fotos do produto e de qualquer dano visível, se solicitado.</li>
              </ul>
            </div>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>4. Procedimento</p>
              <p>Após a solicitação:</p>
              <ul className="list-disc pl-5 mt-2 space-y-1">
                <li>Se o problema for coberto pela garantia, orientaremos sobre como devolver o produto.</li>
                <li>O produto deve ser enviado na embalagem original com comprovante de compra.</li>
              </ul>
            </div>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>5. Custos de Envio</p>
              <p>
                O envio para análise do produto é de responsabilidade do cliente. Se o produto for considerado defeituoso, reembolsaremos o custo do envio.
              </p>
            </div>

            <div>
              <p className="text-nude-800 mb-1" style={{ fontWeight: 500 }}>6. Soluções Oferecidas</p>
              <p>Se o problema for coberto pela garantia, você pode escolher entre:</p>
              <ul className="list-disc pl-5 mt-2 space-y-1">
                <li>Substituição do produto por um novo.</li>
                <li>Reparo do produto.</li>
                <li>
                  Não será efetuado o reembolso do valor pago, somente troca pelo mesmo item ou outro de maior valor mediante pagamento da diferença.
                </li>
              </ul>
            </div>

            <h2 className="font-serif-elegant text-xl text-nude-800 pt-4" style={{ fontWeight: 500 }}>
              Política de Troca para produtos em promoção
            </h2>
            <p>
              Não aceitamos trocas ou devoluções para produtos em promoção. Todas as vendas de itens promocionais são finais. A promoção será avisada via Instagram ou site. Não se aplica para itens com desconto, e sim campanhas promocionais.
            </p>

            <h2 className="font-serif-elegant text-xl text-nude-800 pt-4" style={{ fontWeight: 500 }}>
              Contato para trocas, devoluções ou dúvidas
            </h2>
          </div>

          <a
            href={waLink('Olá! Gostaria de solicitar uma troca/devolução de um produto da Divina Baby.')}
            target="_blank"
            rel="noopener noreferrer"
            className="btn-primary inline-block mt-10"
          >
            Falar no WhatsApp
          </a>
        </div>
      </section>

      <FloatingWhatsApp />
    </div>
  );
}

export default TrocasDevolucoes;
