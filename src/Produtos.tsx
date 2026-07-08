import { Link } from 'react-router-dom';
import { ArrowLeft, Heart, Star, Sparkles, Scissors, Baby } from 'lucide-react';
import { waLink } from './whatsapp';
import FloatingWhatsApp from './FloatingWhatsApp';
import Reveal from './Reveal';

const categorias = [
  {
    nome: 'Prendedores de Chupetas',
    descricao: 'Peças exclusivas feitas à mão',
    icon: Sparkles,
    imagem: '/prendedores-chupetas.jpeg',
  },
  {
    nome: 'Chaveiros',
    descricao: 'Detalhes delicados e sofisticados',
    icon: Star,
    imagem: '/chaveiros.jpeg',
  },
  {
    nome: 'Chupetas',
    descricao: 'Modelos únicos para o seu bebê',
    icon: Heart,
    imagem: '/chupetas.jpeg',
  },
  {
    nome: 'Pente e Escovas',
    descricao: 'Cuidado delicado para os fios do bebê',
    icon: Scissors,
    imagem: '/pente-escovas.jpeg',
  },
  {
    nome: 'Mordedores',
    descricao: 'Conforto e segurança na fase da dentição',
    icon: Baby,
    imagem: '/mordedores.jpeg',
  },
];

function Produtos() {
  return (
    <div className="min-h-screen bg-oat-200">
      <header className="sticky top-0 z-50 bg-oat-200/95 backdrop-blur-md shadow-soft">
        <div className="max-w-7xl mx-auto px-6 lg:px-12">
          <div className="flex items-center h-20 lg:h-24">
            <Link
              to="/"
              className="flex items-center gap-2 font-sans-elegant text-xs tracking-[0.2em] uppercase text-nude-700 hover:text-oat-500 transition-colors duration-300"
            >
              <ArrowLeft size={16} strokeWidth={1.5} />
              Voltar
            </Link>
            <h1
              className="absolute left-1/2 -translate-x-1/2 font-serif-elegant text-2xl lg:text-3xl tracking-[0.15em] text-nude-800"
              style={{ fontWeight: 400 }}
            >
              Divina Baby
            </h1>
          </div>
        </div>
      </header>

      <section className="py-20 lg:py-28">
        <div className="max-w-7xl mx-auto px-6 lg:px-12">
          <div className="text-center mb-16 lg:mb-20">
            <p className="section-subtitle mb-4">Catálogo Completo</p>
            <h2 className="section-title mb-6">Todas as Coleções</h2>
            <div className="w-16 h-px bg-oat-400 mx-auto" />
          </div>

          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8 lg:gap-10">
            {categorias.map(({ nome, descricao, icon: Icon, imagem }) => (
              <Reveal key={nome} className="group cursor-pointer">
                <div className="relative aspect-[4/5] bg-gradient-to-br from-oat-100 to-cream-100 mb-6 overflow-hidden">
                  {imagem ? (
                    <img src={imagem} alt={nome} className="absolute inset-0 w-full h-full object-cover" />
                  ) : (
                    <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 text-center px-4">
                      <Icon className="w-8 h-8 text-oat-300 mx-auto mb-3" style={{ strokeWidth: 1 }} />
                      <p className="font-serif-elegant text-nude-600 text-lg" style={{ fontWeight: 400 }}>
                        {nome}
                      </p>
                    </div>
                  )}
                  <div className="absolute inset-0 bg-gradient-to-t from-nude-900/10 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500" />

                  <div className="absolute inset-8 border border-oat-200/50 rounded-sm pointer-events-none" />

                  <div className="absolute top-3 left-3 w-4 h-4 border-l border-t border-oat-300" />
                  <div className="absolute top-3 right-3 w-4 h-4 border-r border-t border-oat-300" />
                  <div className="absolute bottom-3 left-3 w-4 h-4 border-l border-b border-oat-300" />
                  <div className="absolute bottom-3 right-3 w-4 h-4 border-r border-b border-oat-300" />
                </div>
                <h3 className="font-serif-elegant text-xl text-nude-800 text-center mb-2" style={{ fontWeight: 500 }}>
                  {nome}
                </h3>
                <p className="font-sans-elegant text-sm text-nude-500 text-center mb-4" style={{ fontWeight: 300 }}>
                  {descricao}
                </p>
                <div className="text-center">
                  <a
                    href={waLink(`Olá! Quero comprar um produto da categoria ${nome} da Divina Baby 💕`)}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="font-sans-elegant text-xs tracking-widest uppercase text-oat-500 hover:text-oat-600 transition-colors duration-300"
                  >
                    Comprar pelo WhatsApp →
                  </a>
                </div>
              </Reveal>
            ))}
          </div>
        </div>
      </section>

      {/* CTA - Modelos Personalizados */}
      <section className="py-16 lg:py-20 bg-gradient-luxury">
        <Reveal className="max-w-2xl mx-auto px-6 lg:px-12 text-center">
          <p className="font-serif-elegant text-2xl md:text-3xl text-nude-800 mb-4" style={{ fontWeight: 500 }}>
            Não encontrou o que procurava?
          </p>
          <p className="font-sans-elegant text-sm md:text-base text-nude-600 mb-8" style={{ fontWeight: 300 }}>
            Temos muito mais opções guardadas com carinho para você
          </p>
          <a
            href={waLink('Olá! Vim pelo site da Divina Baby e quero ver outros modelos personalizados 💕')}
            target="_blank"
            rel="noopener noreferrer"
            className="btn-primary inline-block"
          >
            Venha ver outros modelos personalizados no WhatsApp
          </a>
        </Reveal>
      </section>

      <FloatingWhatsApp />
    </div>
  );
}

export default Produtos;
