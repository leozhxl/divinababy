import { Heart, Quote } from 'lucide-react';
import Header from './Header';
import FloatingWhatsApp from './FloatingWhatsApp';

type Depoimento = {
  nome: string;
  local?: string;
  texto: string;
};

const depoimentos: Depoimento[] = [
  {
    nome: 'Sabrina Gomes',
    local: 'São Leopoldo, RS',
    texto: 'Parabéns pelo capricho! Ao vivo ficou mais lindo ainda 🥰😘',
  },
  {
    nome: 'Gabrielle',
    texto: 'Coisa mais preciosa do mundo, quanto capricho!!!! Parabéns pelo seu trabalho, eu AMEIIIIII. 💗',
  },
  {
    nome: 'Poly',
    local: 'São Paulo, SP',
    texto: 'Passando pra agradecer pelo prendedor de chupeta. Simplesmente perfeito 😍',
  },
  {
    nome: 'Fabi',
    local: 'Itabirito, MG',
    texto: 'Chegooou! Muito obrigada pelo carinho, eu amei d+, seu trabalho é impecável.',
  },
  {
    nome: 'Thais R. D. S. Costa',
    local: 'Maringá, PR',
    texto:
      'Eu estou simplesmente apaixonada com tanta fofura! É uma experiência desde a embalagem rosa 😍 Que cuidado, que capricho, meus parabéns, vale cada centavo 🧡',
  },
  {
    nome: 'Sandra',
    local: 'Navegantes, SC',
    texto: 'Que coisa mais delicada e linda! Apaixonada nesse kit! 💙 Maravilhoso, obrigado!',
  },
  {
    nome: 'Rubya Vieira',
    texto:
      'Obrigada pelo trabalho impecável! Estou apaixonada em cada detalhe. Pode ter certeza que indicarei vocês sem sombra de dúvidas. Obrigada por todo carinho e atenção que vocês proporcionam à cliente.',
  },
];

function Depoimentos() {
  return (
    <div className="min-h-screen bg-cream-50">
      <Header />

      <section className="py-16 lg:py-24">
        <div className="max-w-6xl mx-auto px-6 lg:px-12">
          <h1 className="section-title mb-4">Depoimentos</h1>
          <p className="section-subtitle mb-12">
            Carinho de verdade contado por quem recebeu ✨
          </p>

          <div className="grid sm:grid-cols-2 lg:grid-cols-3 gap-6">
            {depoimentos.map((d) => (
              <div
                key={d.nome}
                className="bg-white border border-oat-200 rounded-sm p-6 flex flex-col gap-4 shadow-soft"
              >
                <Quote className="w-5 h-5 text-oat-400" strokeWidth={1.5} />

                <p
                  className="font-sans-elegant text-sm text-nude-700 leading-relaxed flex-1"
                  style={{ fontWeight: 300 }}
                >
                  {d.texto}
                </p>

                <div className="flex items-center gap-2 pt-2 border-t border-oat-100">
                  <Heart className="w-3.5 h-3.5 text-oat-400" strokeWidth={1.5} />
                  <span className="font-sans-elegant text-xs text-nude-800" style={{ fontWeight: 500 }}>
                    {d.nome}
                  </span>
                  {d.local && (
                    <span className="font-sans-elegant text-xs text-nude-500" style={{ fontWeight: 300 }}>
                      · {d.local}
                    </span>
                  )}
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>

      <FloatingWhatsApp />
    </div>
  );
}

export default Depoimentos;
