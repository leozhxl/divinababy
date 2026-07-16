import { Link } from 'react-router-dom';
import { ShoppingBag, MapPin, Clock, Phone, Star, Truck, ShieldCheck, Gift, Sparkles } from 'lucide-react';
import { waLink } from './whatsapp';
import FloatingWhatsApp from './FloatingWhatsApp';
import Header from './Header';
import ProductCard from './ProductCard';
import { products, categories } from './data/products';
import Reveal from './Reveal';
import HeroCarousel from './HeroCarousel';
import { useScrollToHash } from './useScrollToHash';

const heroImages = [
  '/WhatsApp Image 2026-07-12 at 16.40.54.jpeg',
  '/WhatsApp Image 2026-07-12 at 16.40.55 (2).jpeg',
  '/WhatsApp Image 2026-07-14 at 15.44.18.jpeg',
  '/WhatsApp Image 2026-07-14 at 15.44.18 (1).jpeg',
  '/WhatsApp Image 2026-07-14 at 15.44.18 (2).jpeg',
  '/WhatsApp Image 2026-07-14 at 15.44.18 (3).jpeg',
];

function InstagramIcon({
  size = 24,
  strokeWidth = 2,
  className,
}: {
  size?: number;
  strokeWidth?: number;
  className?: string;
}) {
  return (
    <svg
      width={size}
      height={size}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      strokeWidth={strokeWidth}
      strokeLinecap="round"
      strokeLinejoin="round"
      className={className}
    >
      <rect width="20" height="20" x="2" y="2" rx="5" ry="5" />
      <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z" />
      <line x1="17.5" x2="17.51" y1="6.5" y2="6.5" />
    </svg>
  );
}

const categoryImages: Record<string, string> = {
  'Prendedor de Chupeta Personalizado com Nome em Silicone': '/WhatsApp Image 2026-07-13 at 18.22.44.jpeg',
  'Prendedor de Chupeta Sem Personalização em Silicone': '/WhatsApp Image 2026-07-16 at 16.41.52.jpeg',
  Chaveiros: '/chaveiros.jpeg',
  'Chupetas de Borracha Natural para Bebês de 0 a 6 Meses': '/chupetas-0-6-meses-nova.jpeg',
  'Chupeta de Borracha Natural com Argolinha que Brilha no Escuro': '/WhatsApp Image 2026-07-10 at 16.18.18.jpeg',
  'Mordedor Personalizado com Nome em Silicone': '/mordedores-novo.jpeg',
  'Chupeta de Borracha Natural Modelo Flor': '/galeria-2.jpeg',
  Kits: '/kits-novo.jpeg',
  'Kit Pente e Escova de Madeira com Cerdas Naturais': '/kit-pente-escova-novo.jpeg',
};

const categoryDisplayNames: Record<string, string> = {};

function App() {
  useScrollToHash();

  const scrollToSection = (sectionId: string) => {
    const element = document.getElementById(sectionId);
    element?.scrollIntoView({ behavior: 'smooth' });
  };

  return (
    <div className="min-h-screen bg-cream-50">
      <Header />
      <div className="overflow-x-hidden">

      {/* Hero Section - Storefront Window */}
      <section id="home" className="relative pt-16 pb-16 lg:pt-20 lg:pb-20 flex items-center justify-center bg-gradient-oat-soft overflow-hidden">
        {/* Decorative Background Elements */}
        <div className="absolute inset-0 overflow-hidden">
          {/* Marble texture overlay */}
          <div className="absolute inset-0 opacity-30" style={{
            backgroundImage: `url("data:image/svg+xml,%3Csvg viewBox='0 0 400 400' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noiseFilter'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noiseFilter)'/%3E%3C/svg%3E")`,
          }} />

          {/* Oat accent lines */}
          <div className="absolute top-0 left-1/4 w-px h-full bg-gradient-to-b from-transparent via-oat-300/20 to-transparent" />
          <div className="absolute top-0 right-1/4 w-px h-full bg-gradient-to-b from-transparent via-oat-300/20 to-transparent" />
          <div className="absolute top-1/3 left-0 w-full h-px bg-gradient-to-r from-transparent via-oat-200/30 to-transparent" />
        </div>

        {/* Main Storefront Content */}
        <div className="relative z-10 max-w-7xl mx-auto px-6 lg:px-12">
          <div className="grid lg:grid-cols-2 gap-16 lg:gap-20 items-center">
            {/* Left Content */}
            <div className="text-center lg:text-left order-2 lg:order-1">
              <div className="fade-in-element" style={{ animationDelay: '0.2s' }}>
                <p className="font-sans-elegant text-xs tracking-[0.35em] uppercase text-oat-500 mb-6" style={{ fontWeight: 300 }}>
                  Bem-vindo à
                </p>
              </div>

              <div className="fade-in-element" style={{ animationDelay: '0.4s' }}>
                <h2 className="font-serif-elegant text-5xl md:text-6xl lg:text-7xl text-nude-800 tracking-tight leading-tight mb-6" style={{ fontWeight: 400 }}>
                  Divina Baby
                </h2>
              </div>

              <div className="fade-in-element" style={{ animationDelay: '0.6s' }}>
                <p className="font-script text-xl md:text-2xl text-nude-600 italic mb-8" style={{ fontWeight: 300 }}>
                  Onde cada detalhe é pensado com amor
                </p>
              </div>

              <div className="fade-in-element" style={{ animationDelay: '0.8s' }}>
                <p className="font-sans-elegant text-sm md:text-base text-nude-600 leading-relaxed mb-10 max-w-md mx-auto lg:mx-0" style={{ fontWeight: 300 }}>
                  Peças exclusivas para bebês, criadas para quem aprecia elegância, qualidade e sofisticação em cada detalhe do enxoval.
                </p>
              </div>

              <div className="fade-in-element flex flex-col sm:flex-row gap-4 justify-center lg:justify-start" style={{ animationDelay: '1s' }}>
                <a
                  href={waLink('Olá! Vim pelo site da Divina Baby e quero comprar uma peça exclusiva 💕')}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="btn-primary inline-block"
                >
                  Comprar pelo WhatsApp
                </a>
                <button className="btn-outline" onClick={() => scrollToSection('colecoes')}>
                  Ver Coleções
                </button>
              </div>
            </div>

            {/* Right - Storefront Window Display */}
            <div className="order-1 lg:order-2 flex justify-center">
              <div className="fade-in-element relative" style={{ animationDelay: '0.6s' }}>
                {/* Window Frame */}
                <div className="relative w-80 md:w-96 lg:w-[420px] aspect-[3/4]">
                  {/* Outer Frame - Matte Gold */}
                  <div className="absolute inset-0 border-[6px] border-oat-400 rounded-sm shadow-luxury" />

                  {/* Inner Frame */}
                  <div className="absolute inset-3 border border-oat-300/50 rounded-sm" />

                  {/* Window Content - Interior Display */}
                  <HeroCarousel
                    images={heroImages}
                    alt="Bebês com prendedores de chupeta personalizados Divina Baby"
                  />

                  {/* Window Reflection */}
                  <div className="absolute inset-4 bg-gradient-to-br from-white/20 via-transparent to-transparent rounded-sm pointer-events-none" />

                  {/* Elegant drapes */}
                  <div className="absolute -left-4 top-4 bottom-4 w-8 bg-gradient-to-r from-oat-100 to-oat-50 rounded-l-full opacity-60" />
                  <div className="absolute -right-4 top-4 bottom-4 w-8 bg-gradient-to-l from-oat-100 to-oat-50 rounded-r-full opacity-60" />
                </div>

                {/* Decorative crown above window */}
                <div className="absolute -top-6 left-1/2 -translate-x-1/2">
                  <Star className="w-5 h-5 text-oat-400 float-animation" style={{ strokeWidth: 1 }} />
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Feature strip */}
      <section className="py-10 bg-white">
        <Reveal className="max-w-6xl mx-auto px-6 lg:px-12 grid grid-cols-2 md:grid-cols-4 gap-8">
          {[
            { icon: Sparkles, label: 'Feito à mão' },
            { icon: ShieldCheck, label: 'Seguro para o bebê' },
            { icon: Gift, label: 'Personalizável' },
            { icon: Truck, label: 'Envio para todo o Brasil' },
          ].map(({ icon: Icon, label }) => (
            <div key={label} className="flex flex-col items-center text-center gap-2">
              <Icon className="w-6 h-6 text-oat-500" style={{ strokeWidth: 1.5 }} />
              <span className="font-sans-elegant text-xs uppercase tracking-widest text-nude-700" style={{ fontWeight: 500 }}>
                {label}
              </span>
            </div>
          ))}
        </Reveal>
      </section>

      {/* Shop by Category */}
      <section className="py-16 lg:py-20 bg-cream-50">
        <Reveal className="max-w-6xl mx-auto px-6 lg:px-12">
          <div className="text-center mb-12">
            <p className="section-subtitle mb-4">Encontre o que procura</p>
            <h2 className="section-title">Compre por Categoria</h2>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-x-6 gap-y-10 justify-items-center">
            {categories.map((category) => (
              <Link
                key={category}
                to={`/produtos?categoria=${encodeURIComponent(category)}`}
                className="flex flex-col items-center gap-3 group w-28 lg:w-32"
              >
                <div className="w-24 h-24 lg:w-28 lg:h-28 rounded-full overflow-hidden border border-oat-300 group-hover:border-oat-500 transition-all duration-500 shrink-0 group-hover:-translate-y-1.5 group-hover:shadow-luxury">
                  <img
                    src={categoryImages[category]}
                    alt={category}
                    className="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
                  />
                </div>
                <span
                  className="font-sans-elegant text-[11px] leading-snug uppercase tracking-widest text-nude-700 group-hover:text-oat-600 transition-colors duration-300 text-center"
                  style={{ fontWeight: 500 }}
                >
                  {categoryDisplayNames[category] ?? category}
                </span>
              </Link>
            ))}
          </div>
        </Reveal>
      </section>

      {/* Brand Highlight */}
      <section className="py-16 lg:py-20 bg-gradient-luxury">
        <Reveal className="max-w-3xl mx-auto px-6 lg:px-12 text-center">
          <p className="font-serif-elegant text-2xl md:text-3xl text-nude-800 mb-2" style={{ fontWeight: 500 }}>
            Prendedores de Chupetas Personalizados
          </p>
          <a
            href="https://www.instagram.com/_divinababy_/"
            target="_blank"
            rel="noopener noreferrer"
            className="inline-block font-sans-elegant text-sm tracking-widest text-oat-500 mb-6 hover:text-oat-600 transition-colors duration-300"
            style={{ fontWeight: 400 }}
          >
            @_divinababy_
          </a>
          <p className="font-script text-xl md:text-2xl text-nude-600 italic mb-10" style={{ fontWeight: 300 }}>
            Vamos desenvolver algo único e exclusivo para você?
          </p>
          <div className="flex flex-col sm:flex-row items-center justify-center gap-6 sm:gap-10">
            <div className="flex items-center gap-2 text-nude-600">
              <Truck className="w-5 h-5 text-oat-400" style={{ strokeWidth: 1.5 }} />
              <span className="font-sans-elegant text-sm" style={{ fontWeight: 300 }}>
                Envios para todo o Brasil
              </span>
            </div>
            <div className="flex items-center gap-2 text-nude-600">
              <MapPin className="w-5 h-5 text-oat-400" style={{ strokeWidth: 1.5 }} />
              <span className="font-sans-elegant text-sm" style={{ fontWeight: 300 }}>
                Balneário Gaivota-SC
              </span>
            </div>
          </div>
        </Reveal>
      </section>

      {/* Featured Collections */}
      <section id="colecoes" className="py-20 lg:py-28 bg-cream-50">
        <div className="max-w-7xl mx-auto px-6 lg:px-12">
          {/* Section Header */}
          <div className="text-center mb-14 lg:mb-16">
            <p className="section-subtitle mb-4">Curadoria Exclusiva</p>
            <h2 className="section-title mb-6">Lançamentos</h2>
            <div className="w-16 h-px bg-oat-400 mx-auto" />
          </div>

          {/* Products Grid */}
          <div className="grid sm:grid-cols-2 lg:grid-cols-4 gap-x-6 gap-y-10">
            {products.slice(0, 8).map((product) => (
              <ProductCard key={product.id} product={product} />
            ))}
          </div>

          {/* View All Button */}
          <div className="text-center mt-16">
            <Link to="/produtos" className="btn-outline inline-block">
              Ver Todos os Produtos
            </Link>
          </div>

          {/* CTA - Modelos Personalizados */}
          <div className="text-center mt-16 pt-14 border-t border-oat-200/40">
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
          </div>
        </div>
      </section>

      {/* Perfect for Every Occasion */}
      <section className="py-16 lg:py-20 bg-white">
        <Reveal className="max-w-7xl mx-auto px-6 lg:px-12">
          <div className="text-center mb-12">
            <p className="section-subtitle mb-4">Feito com carinho</p>
            <h2 className="section-title">Perfeito para Cada Ocasião</h2>
          </div>

          <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-6">
            {[
              { product: products[1], occasion: 'Uso Diário' },
              { product: products[8], occasion: 'Passeios em Família' },
              { product: products[4], occasion: 'Ocasiões Especiais' },
              { product: products[6], occasion: 'Presente de Chá de Bebê' },
              { product: products[0], occasion: 'Essenciais do Enxoval' },
            ].map(({ product, occasion }) => (
              <Link key={occasion} to={`/produto/${product.slug}`} className="group text-center">
                <div className="aspect-square rounded-sm overflow-hidden mb-3 bg-cream-100">
                  <img
                    src={product.images[0]}
                    alt={product.name}
                    className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                  />
                </div>
                <p className="font-sans-elegant text-[10px] tracking-widest uppercase text-oat-500 mb-1" style={{ fontWeight: 600 }}>
                  {occasion}
                </p>
                <p className="font-sans-elegant text-xs text-nude-600" style={{ fontWeight: 300 }}>
                  {product.name}
                </p>
              </Link>
            ))}
          </div>
        </Reveal>
      </section>

      {/* Gallery Section */}
      <section id="galeria" className="py-24 lg:py-32 bg-cream-50">
        <Reveal className="max-w-7xl mx-auto px-6 lg:px-12">
          <div className="text-center mb-16 lg:mb-20">
            <p className="section-subtitle mb-4">Momentos Divina Baby</p>
            <h2 className="section-title mb-6">Galeria</h2>
            <div className="w-16 h-px bg-oat-400 mx-auto" />
          </div>

          <div className="columns-2 md:columns-3 lg:columns-4 gap-4 space-y-4">
            {Array.from({ length: 16 }, (_, i) => i + 1).map((n) => (
              <div key={n} className="break-inside-avoid overflow-hidden rounded-sm shadow-soft">
                <img
                  src={`/galeria-${n}.jpeg`}
                  alt={`Divina Baby - foto ${n}`}
                  className="w-full h-auto object-cover hover:scale-105 transition-transform duration-500"
                  loading="lazy"
                />
              </div>
            ))}
          </div>
        </Reveal>
      </section>

      {/* About Section */}
      <section id="sobre" className="relative py-16 lg:py-20 overflow-hidden">
        {/* Background image */}
        <div className="absolute inset-0">
          <img
            src="/WhatsApp Image 2026-07-10 at 11.12.04.jpeg"
            alt="Tamires, fundadora da Divina Baby, criando peças à mão"
            className="absolute inset-0 w-full h-full object-cover"
          />
          <div className="absolute inset-0 bg-nude-900/70" />
        </div>

        <Reveal className="relative max-w-3xl mx-auto px-6 lg:px-12">
          <div>
            <p className="section-subtitle mb-4 text-oat-300">Nossa História</p>
            <h2 className="font-serif-elegant text-3xl md:text-4xl lg:text-5xl text-cream-50 tracking-tight mb-8" style={{ fontWeight: 400 }}>
              Onde Tudo Começou...
            </h2>

              <div className="w-16 h-px bg-oat-400 mb-8" />

              <div className="space-y-6 text-cream-100 font-sans-elegant leading-relaxed" style={{ fontWeight: 300 }}>
                <p>
                  Se você chegou até aqui, quero dividir um pedacinho da nossa história com você. 🤍
                </p>
                <p>
                  Antes de existir a Divina Baby, existia um sonho: o sonho de ser mãe.
                </p>
                <p>
                  A minha filha, Elisa, foi muito desejada e esperada. Quando ela chegou, entendi que Deus havia me confiado a maior bênção da minha vida. O significado do seu nome é "Promessa Divina", e foi dela que nasceu o nome Divina Baby.
                </p>
                <p>
                  Depois que me tornei mãe, tudo mudou. Meu maior desejo passou a ser estar presente, acompanhar cada descoberta, cada sorriso e viver de perto cada fase da infância da Elisa.
                </p>
                <p>
                  Foi então que tomei uma das decisões mais importantes da minha vida: deixar o meu trabalho para empreender.
                </p>
                <p>
                  Confesso que senti medo, insegurança e aquele frio na barriga de quem está começando algo novo. Mas, em todos os momentos, Deus segurou a minha mão, fortaleceu o meu coração e mostrou que eu estava no caminho certo.
                </p>
                <p>
                  A Divina Baby nasceu da união entre a fé, a maternidade e o amor.
                </p>
                <p>
                  Cada peça é criada pelas minhas mãos com o mesmo carinho que sempre dediquei à minha filha. Mais do que produtos personalizados, meu propósito é entregar lembranças que façam parte dos momentos mais especiais da infância de cada bebê.
                </p>
                <p>
                  Meu maior desejo é que, quando a Elisa crescer, ela saiba que a Divina Baby nasceu junto com ela. Que ela foi a inspiração, o propósito e o maior presente que Deus poderia me dar.
                </p>
                <p>
                  Hoje, esse amor já alcançou inúmeras famílias, e sou profundamente grata por saber que um pedacinho da nossa história também faz parte da história de tantas outras.
                </p>
                <p>
                  Obrigada por estar aqui. Espero que, ao escolher a Divina Baby, você sinta todo o amor, o carinho e a dedicação que colocamos em cada detalhe. Será uma alegria fazer parte da história da sua família.
                </p>
                <p className="font-script text-lg italic text-cream-50" style={{ fontWeight: 400 }}>
                  Com carinho,<br />
                  Tamires — Mamãe da Elisa e fundadora da Divina Baby. 🤍
                </p>
              </div>

              <div className="mt-10 grid grid-cols-3 gap-6 text-center">
                <div>
                  <p className="font-serif-elegant text-3xl text-oat-300" style={{ fontWeight: 500 }}>500+</p>
                  <p className="font-sans-elegant text-xs tracking-widest uppercase text-cream-200 mt-1" style={{ fontWeight: 300 }}>Famílias Atendidas</p>
                </div>
                <div>
                  <p className="font-serif-elegant text-3xl text-oat-300" style={{ fontWeight: 500 }}>100%</p>
                  <p className="font-sans-elegant text-xs tracking-widest uppercase text-cream-200 mt-1" style={{ fontWeight: 300 }}>Qualidade Premium</p>
                </div>
                <div>
                  <p className="font-serif-elegant text-3xl text-oat-300" style={{ fontWeight: 500 }}>3 Anos</p>
                  <p className="font-sans-elegant text-xs tracking-widest uppercase text-cream-200 mt-1" style={{ fontWeight: 300 }}>De Cuidado</p>
                </div>
              </div>
          </div>
        </Reveal>
      </section>

      {/* Newsletter Section */}
      <section className="py-20 lg:py-28 bg-nude-800 relative overflow-hidden">
        {/* Decorative background */}
        <div className="absolute inset-0 opacity-10">
          <div className="absolute top-0 left-1/4 w-px h-full bg-oat-400" />
          <div className="absolute top-0 right-1/4 w-px h-full bg-oat-400" />
        </div>

        <Reveal className="relative max-w-3xl mx-auto px-6 lg:px-12 text-center">
          <p className="section-subtitle text-oat-300 mb-4">Fique Conectada</p>
          <h2 className="font-serif-elegant text-3xl md:text-4xl lg:text-5xl text-cream-50 tracking-tight mb-4" style={{ fontWeight: 400 }}>
            Novidades Exclusivas
          </h2>
          <p className="font-sans-elegant text-cream-200 mb-10 max-w-lg mx-auto" style={{ fontWeight: 300 }}>
            Receba em primeira mão lançamentos, promoções exclusivas e dicas especiais para o enxoval do seu bebê — direto no seu WhatsApp.
          </p>

          <a
            href={waLink('Olá! Quero receber as novidades e promoções da Divina Baby 💕')}
            target="_blank"
            rel="noopener noreferrer"
            className="inline-flex items-center gap-2 px-8 py-4 bg-oat-400 text-white font-sans-elegant font-medium tracking-widest uppercase text-sm hover:bg-oat-500 transition-colors duration-500"
          >
            <ShoppingBag size={16} style={{ strokeWidth: 1.5 }} />
            Quero receber no WhatsApp
          </a>
        </Reveal>
      </section>

      {/* Contact / Visit Section */}
      <section id="contato" className="py-24 lg:py-32 bg-cream-50">
        <div className="max-w-7xl mx-auto px-6 lg:px-12">
          <div className="text-center mb-16">
            <p className="section-subtitle mb-4">Venha Nos Visitar</p>
            <h2 className="section-title mb-6">Conheça a Divina Baby</h2>
            <div className="w-16 h-px bg-oat-400 mx-auto" />
          </div>

          <Reveal className="grid md:grid-cols-2 lg:grid-cols-4 gap-8 lg:gap-6">
            {/* Address */}
            <div className="text-center p-8 bg-gradient-to-br from-oat-50 to-cream-50 rounded-sm">
              <MapPin className="w-6 h-6 text-oat-400 mx-auto mb-4" style={{ strokeWidth: 1.5 }} />
              <h3 className="font-serif-elegant text-lg text-nude-800 mb-2" style={{ fontWeight: 500 }}>Localização</h3>
              <p className="font-sans-elegant text-sm text-nude-600" style={{ fontWeight: 300 }}>
                Balneário Gaivota, SC<br />
                Atendimento sob encomenda<br />
                Envios para todo o Brasil
              </p>
            </div>

            {/* Hours */}
            <div className="text-center p-8 bg-gradient-to-br from-cream-50 to-nude-50 rounded-sm">
              <Clock className="w-6 h-6 text-oat-400 mx-auto mb-4" style={{ strokeWidth: 1.5 }} />
              <h3 className="font-serif-elegant text-lg text-nude-800 mb-2" style={{ fontWeight: 500 }}>Horário</h3>
              <p className="font-sans-elegant text-sm text-nude-600" style={{ fontWeight: 300 }}>
                Seg - Sáb: 08h às 19h<br />
                Domingo: Fechado
              </p>
            </div>

            {/* Phone */}
            <div className="text-center p-8 bg-gradient-to-br from-nude-50 to-oat-50 rounded-sm">
              <Phone className="w-6 h-6 text-oat-400 mx-auto mb-4" style={{ strokeWidth: 1.5 }} />
              <h3 className="font-serif-elegant text-lg text-nude-800 mb-2" style={{ fontWeight: 500 }}>Contato</h3>
              <p className="font-sans-elegant text-sm text-nude-600 mb-3" style={{ fontWeight: 300 }}>
                tafibecker@gmail.com
              </p>
              <a
                href={waLink('Olá! Vim pelo site da Divina Baby e gostaria de mais informações 💕')}
                target="_blank"
                rel="noopener noreferrer"
                className="font-sans-elegant text-xs tracking-widest uppercase text-oat-500 hover:text-oat-600 transition-colors duration-300"
              >
                (48) 99836-4557 · Chamar no WhatsApp
              </a>
            </div>

            {/* Social */}
            <div className="text-center p-8 bg-gradient-to-br from-oat-50 to-cream-50 rounded-sm">
              <InstagramIcon className="w-6 h-6 text-oat-400 mx-auto mb-4" strokeWidth={1.5} />
              <h3 className="font-serif-elegant text-lg text-nude-800 mb-2" style={{ fontWeight: 500 }}>Redes Sociais</h3>
              <a
                href="https://www.instagram.com/_divinababy_/"
                target="_blank"
                rel="noopener noreferrer"
                className="font-sans-elegant text-sm text-nude-600 hover:text-oat-500 transition-colors duration-300"
                style={{ fontWeight: 300 }}
              >
                @_divinababy_
              </a>
            </div>
          </Reveal>

          {/* Map placeholder */}
          <div className="mt-12 h-64 lg:h-80 bg-gradient-to-br from-nude-100 to-cream-100 rounded-sm relative overflow-hidden">
            <div className="absolute inset-0 flex items-center justify-center">
              <div className="text-center">
                <MapPin className="w-12 h-12 text-oat-300 mx-auto mb-4" style={{ strokeWidth: 1 }} />
                <p className="font-serif-elegant text-nude-600" style={{ fontWeight: 400 }}>
                  Localização no mapa
                </p>
              </div>
            </div>
            <div className="absolute inset-6 border border-oat-200/30 rounded-sm" />
          </div>
        </div>
      </section>

      {/* Footer */}
      <footer className="py-16 lg:py-20 bg-nude-900 text-cream-100">
        <div className="max-w-7xl mx-auto px-6 lg:px-12">
          <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-10 lg:gap-8 mb-12">
            {/* Brand */}
            <div className="lg:col-span-2">
              <div className="flex items-center gap-3 mb-4">
                <svg width="28" height="24" viewBox="0 0 24 20" fill="none" className="text-oat-400">
                  <path d="M12 2L3 7L5 17H19L21 7L12 2Z" stroke="currentColor" strokeWidth="1" fill="none" />
                  <circle cx="6" cy="17" r="1" fill="currentColor" />
                  <circle cx="12" cy="17" r="1" fill="currentColor" />
                  <circle cx="18" cy="17" r="1" fill="currentColor" />
                </svg>
                <div>
                  <h3 className="font-serif-elegant text-xl text-cream-50" style={{ fontWeight: 400 }}>Divina Baby | Personalizados para Bebês</h3>
                </div>
              </div>
              <p className="font-sans-elegant text-sm text-cream-300 max-w-sm" style={{ fontWeight: 300 }}>
                Elegância e carinho em cada detalhe do enxoval do seu bebê. Produtos premium para momentos especiais.
              </p>
            </div>

            {/* Links */}
            <div>
              <h4 className="font-serif-elegant text-lg text-cream-50 mb-4" style={{ fontWeight: 500 }}>Navegação</h4>
              <ul className="space-y-3">
                {['Coleções', 'Nossa História', 'Novidades', 'Contato'].map((item) => (
                  <li key={item}>
                    <button className="font-sans-elegant text-sm text-cream-300 hover:text-oat-400 transition-colors duration-300" style={{ fontWeight: 300 }}>
                      {item}
                    </button>
                  </li>
                ))}
              </ul>
            </div>

            {/* Contact */}
            <div>
              <h4 className="font-serif-elegant text-lg text-cream-50 mb-4" style={{ fontWeight: 500 }}>Contato</h4>
              <ul className="space-y-3">
                <li>
                  <a
                    href={waLink('Olá! Vim pelo site da Divina Baby e gostaria de mais informações 💕')}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="font-sans-elegant text-sm text-cream-300 hover:text-oat-400 transition-colors duration-300"
                    style={{ fontWeight: 300 }}
                  >
                    (48) 99836-4557
                  </a>
                </li>
                <li className="font-sans-elegant text-sm text-cream-300" style={{ fontWeight: 300 }}>tafibecker@gmail.com</li>
                <li className="font-sans-elegant text-sm text-cream-300" style={{ fontWeight: 300 }}>Balneário Gaivota, SC</li>
              </ul>
            </div>
          </div>

          {/* Bottom */}
          <div className="pt-8 border-t border-cream-100/10 flex flex-col md:flex-row justify-between items-center gap-4">
            <p className="font-sans-elegant text-xs text-cream-400" style={{ fontWeight: 300 }}>
              © 2024 Divina Baby. Todos os direitos reservados.
            </p>
            <div className="flex items-center gap-4">
              <button className="p-2 text-cream-400 hover:text-oat-400 transition-colors duration-300">
                <InstagramIcon size={20} strokeWidth={1.5} />
              </button>
            </div>
          </div>
        </div>
      </footer>

      <FloatingWhatsApp />
      </div>
    </div>
  );
}

export default App;