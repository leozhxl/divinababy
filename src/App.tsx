import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { ShoppingBag, MapPin, Clock, Phone, ChevronDown, Star, Truck } from 'lucide-react';
import { waLink } from './whatsapp';
import FloatingWhatsApp from './FloatingWhatsApp';
import Reveal from './Reveal';

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

function App() {
  const [isScrolled, setIsScrolled] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      setIsScrolled(window.scrollY > 50);
    };
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  const scrollToSection = (sectionId: string) => {
    const element = document.getElementById(sectionId);
    element?.scrollIntoView({ behavior: 'smooth' });
  };

  return (
    <div className="min-h-screen bg-cream-50 overflow-x-hidden">
      {/* Header */}
      <header
        className={`fixed top-0 left-0 right-0 z-50 transition-all duration-700 ${
          isScrolled
            ? 'bg-white/95 backdrop-blur-md shadow-soft'
            : 'bg-transparent'
        }`}
      >
        <div className="max-w-7xl mx-auto px-6 lg:px-12">
          <div className="flex items-center justify-between h-20 lg:h-24">
            {/* Left Navigation */}
            <nav className="hidden lg:flex items-center space-x-10 font-sans-elegant text-xs tracking-[0.2em] uppercase">
              <button
                onClick={() => scrollToSection('colecoes')}
                className={`transition-colors duration-300 ${
                  isScrolled ? 'text-nude-700 hover:text-rose-gold-500' : 'text-nude-700 hover:text-rose-gold-600'
                }`}
              >
                Coleções
              </button>
              <button
                onClick={() => scrollToSection('sobre')}
                className={`transition-colors duration-300 ${
                  isScrolled ? 'text-nude-700 hover:text-rose-gold-500' : 'text-nude-700 hover:text-rose-gold-600'
                }`}
              >
                Nossa História
              </button>
            </nav>

            {/* Logo */}
            <div className="absolute left-1/2 -translate-x-1/2 flex flex-col items-center">
              <button
                onClick={() => scrollToSection('home')}
                className="group"
              >
                <div className="flex flex-col items-center">
                  {/* Crown Icon */}
                  <div className="mb-1">
                    <svg
                      width="24"
                      height="20"
                      viewBox="0 0 24 20"
                      fill="none"
                      className={`transition-colors duration-300 ${
                        isScrolled ? 'text-rose-gold-400' : 'text-rose-gold-500'
                      }`}
                    >
                      <path
                        d="M12 2L3 7L5 17H19L21 7L12 2Z"
                        stroke="currentColor"
                        strokeWidth="1"
                        fill="none"
                      />
                      <path
                        d="M12 2L8 10H16L12 2Z"
                        stroke="currentColor"
                        strokeWidth="0.5"
                        fill="none"
                      />
                      <circle cx="6" cy="17" r="1" fill="currentColor" />
                      <circle cx="12" cy="17" r="1" fill="currentColor" />
                      <circle cx="18" cy="17" r="1" fill="currentColor" />
                    </svg>
                  </div>
                  <h1
                    className={`font-serif-elegant text-2xl lg:text-3xl tracking-[0.15em] transition-colors duration-300 ${
                      isScrolled ? 'text-nude-800' : 'text-nude-800'
                    }`}
                    style={{ fontWeight: 400 }}
                  >
                    Divina Baby
                  </h1>
                  <p
                    className={`font-sans-elegant text-[9px] tracking-[0.4em] uppercase mt-0.5 transition-colors duration-300 ${
                      isScrolled ? 'text-rose-gold-400' : 'text-rose-gold-500'
                    }`}
                    style={{ fontWeight: 200 }}
                  >
                    Boutique para Bebês
                  </p>
                </div>
              </button>
            </div>

            {/* Right Navigation */}
            <nav className="hidden lg:flex items-center space-x-8">
              <button
                onClick={() => scrollToSection('contato')}
                className={`font-sans-elegant text-xs tracking-[0.2em] uppercase transition-colors duration-300 ${
                  isScrolled ? 'text-nude-700 hover:text-rose-gold-500' : 'text-nude-700 hover:text-rose-gold-600'
                }`}
              >
                Contato
              </button>
              <a
                href={waLink('Olá! Vim pelo site e gostaria de comprar um produto da Divina Baby 💕')}
                target="_blank"
                rel="noopener noreferrer"
                className="flex items-center gap-2 px-4 py-2 bg-rose-gold-400 text-white font-sans-elegant text-xs tracking-widest uppercase hover:bg-rose-gold-500 transition-colors duration-300"
              >
                <ShoppingBag size={16} strokeWidth={1.5} />
                Comprar
              </a>
            </nav>

            {/* Mobile Menu */}
            <button className="lg:hidden p-2 text-nude-700">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.5">
                <line x1="3" y1="8" x2="21" y2="8" />
                <line x1="3" y1="16" x2="21" y2="16" />
              </svg>
            </button>
          </div>
        </div>
      </header>

      {/* Hero Section - Storefront Window */}
      <section id="home" className="relative min-h-screen flex items-center justify-center bg-gradient-rose-soft overflow-hidden">
        {/* Decorative Background Elements */}
        <div className="absolute inset-0 overflow-hidden">
          {/* Marble texture overlay */}
          <div className="absolute inset-0 opacity-30" style={{
            backgroundImage: `url("data:image/svg+xml,%3Csvg viewBox='0 0 400 400' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noiseFilter'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noiseFilter)'/%3E%3C/svg%3E")`,
          }} />

          {/* Rose gold accent lines */}
          <div className="absolute top-0 left-1/4 w-px h-full bg-gradient-to-b from-transparent via-rose-gold-300/20 to-transparent" />
          <div className="absolute top-0 right-1/4 w-px h-full bg-gradient-to-b from-transparent via-rose-gold-300/20 to-transparent" />
          <div className="absolute top-1/3 left-0 w-full h-px bg-gradient-to-r from-transparent via-baby-rose-200/30 to-transparent" />
        </div>

        {/* Main Storefront Content */}
        <div className="relative z-10 max-w-7xl mx-auto px-6 lg:px-12 py-32 lg:py-40">
          <div className="grid lg:grid-cols-2 gap-16 lg:gap-20 items-center">
            {/* Left Content */}
            <div className="text-center lg:text-left order-2 lg:order-1">
              <div className="fade-in-element" style={{ animationDelay: '0.2s' }}>
                <p className="font-sans-elegant text-xs tracking-[0.35em] uppercase text-rose-gold-500 mb-6" style={{ fontWeight: 300 }}>
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
                  <div className="absolute inset-0 border-[6px] border-rose-gold-400 rounded-sm shadow-luxury" />

                  {/* Inner Frame */}
                  <div className="absolute inset-3 border border-rose-gold-300/50 rounded-sm" />

                  {/* Window Content - Interior Display */}
                  <div className="absolute inset-4 rounded-sm overflow-hidden">
                    <img
                      src="/hero-baby.jpeg"
                      alt="Bebê com mordedor personalizado Divina Baby"
                      className="absolute inset-0 w-full h-full object-cover"
                    />
                  </div>

                  {/* Window Reflection */}
                  <div className="absolute inset-4 bg-gradient-to-br from-white/20 via-transparent to-transparent rounded-sm pointer-events-none" />

                  {/* Elegant drapes */}
                  <div className="absolute -left-4 top-4 bottom-4 w-8 bg-gradient-to-r from-baby-rose-100 to-baby-rose-50 rounded-l-full opacity-60" />
                  <div className="absolute -right-4 top-4 bottom-4 w-8 bg-gradient-to-l from-baby-rose-100 to-baby-rose-50 rounded-r-full opacity-60" />
                </div>

                {/* Decorative crown above window */}
                <div className="absolute -top-6 left-1/2 -translate-x-1/2">
                  <Star className="w-5 h-5 text-rose-gold-400 float-animation" style={{ strokeWidth: 1 }} />
                </div>
              </div>
            </div>
          </div>
        </div>

        {/* Scroll Indicator */}
        <div className="absolute bottom-8 left-1/2 -translate-x-1/2 flex flex-col items-center text-nude-500 animate-bounce">
          <ChevronDown size={20} strokeWidth={1} />
        </div>
      </section>

      {/* Brand Highlight */}
      <section className="py-16 lg:py-20 bg-gradient-luxury">
        <Reveal className="max-w-3xl mx-auto px-6 lg:px-12 text-center">
          <p className="font-serif-elegant text-2xl md:text-3xl text-nude-800 mb-2" style={{ fontWeight: 500 }}>
            Prendedores de Chupetas
          </p>
          <a
            href="https://www.instagram.com/_divinababy_/"
            target="_blank"
            rel="noopener noreferrer"
            className="inline-block font-sans-elegant text-sm tracking-widest text-rose-gold-500 mb-6 hover:text-rose-gold-600 transition-colors duration-300"
            style={{ fontWeight: 400 }}
          >
            @_divinababy_
          </a>
          <p className="font-script text-xl md:text-2xl text-nude-600 italic mb-10" style={{ fontWeight: 300 }}>
            Vamos desenvolver algo único e exclusivo para você?
          </p>
          <div className="flex flex-col sm:flex-row items-center justify-center gap-6 sm:gap-10">
            <div className="flex items-center gap-2 text-nude-600">
              <Truck className="w-5 h-5 text-rose-gold-400" style={{ strokeWidth: 1.5 }} />
              <span className="font-sans-elegant text-sm" style={{ fontWeight: 300 }}>
                Envios para todo o Brasil
              </span>
            </div>
            <div className="flex items-center gap-2 text-nude-600">
              <MapPin className="w-5 h-5 text-rose-gold-400" style={{ strokeWidth: 1.5 }} />
              <span className="font-sans-elegant text-sm" style={{ fontWeight: 300 }}>
                Balneário Gaivota-SC
              </span>
            </div>
          </div>
        </Reveal>
      </section>

      {/* Featured Collections */}
      <section id="colecoes" className="py-24 lg:py-32 bg-white">
        <div className="max-w-7xl mx-auto px-6 lg:px-12">
          {/* Section Header */}
          <div className="text-center mb-16 lg:mb-20">
            <p className="section-subtitle mb-4">Curadoria Exclusiva</p>
            <h2 className="section-title mb-6">Nossas Coleções</h2>
            <div className="w-16 h-px bg-rose-gold-400 mx-auto" />
          </div>

          {/* Collections Grid */}
          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8 lg:gap-10">
            {/* Collection 1 - Prendedores */}
            <div className="group cursor-pointer">
              <div className="relative aspect-[4/5] bg-gradient-to-br from-baby-rose-100 to-cream-100 mb-6 overflow-hidden">
                <img
                  src="/prendedores-chupetas.jpeg"
                  alt="Prendedores de Chupetas"
                  className="absolute inset-0 w-full h-full object-cover"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-nude-900/10 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500" />

                {/* Decorative elements */}
                <div className="absolute inset-8 border border-rose-gold-200/50 rounded-sm pointer-events-none" />

                {/* Corner accents */}
                <div className="absolute top-3 left-3 w-4 h-4 border-l border-t border-rose-gold-300" />
                <div className="absolute top-3 right-3 w-4 h-4 border-r border-t border-rose-gold-300" />
                <div className="absolute bottom-3 left-3 w-4 h-4 border-l border-b border-rose-gold-300" />
                <div className="absolute bottom-3 right-3 w-4 h-4 border-r border-b border-rose-gold-300" />
              </div>
              <h3 className="font-serif-elegant text-xl text-nude-800 text-center mb-2" style={{ fontWeight: 500 }}>
                Prendedores de Chupetas
              </h3>
              <p className="font-sans-elegant text-sm text-nude-500 text-center mb-4" style={{ fontWeight: 300 }}>
                Peças exclusivas feitas à mão
              </p>
              <div className="text-center">
                <a
                  href={waLink('Olá! Quero comprar um Prendedor de Chupeta da Divina Baby 💕')}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="font-sans-elegant text-xs tracking-widest uppercase text-rose-gold-500 hover:text-rose-gold-600 transition-colors duration-300"
                >
                  Comprar pelo WhatsApp →
                </a>
              </div>
            </div>

            {/* Collection 2 - Chaveiros */}
            <div className="group cursor-pointer">
              <div className="relative aspect-[4/5] bg-gradient-to-br from-cream-100 to-baby-rose-50 mb-6 overflow-hidden">
                <img
                  src="/chaveiros.jpeg"
                  alt="Chaveiros"
                  className="absolute inset-0 w-full h-full object-cover"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-nude-900/10 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500" />

                <div className="absolute inset-8 border border-rose-gold-200/50 rounded-sm pointer-events-none" />

                <div className="absolute top-3 left-3 w-4 h-4 border-l border-t border-rose-gold-300" />
                <div className="absolute top-3 right-3 w-4 h-4 border-r border-t border-rose-gold-300" />
                <div className="absolute bottom-3 left-3 w-4 h-4 border-l border-b border-rose-gold-300" />
                <div className="absolute bottom-3 right-3 w-4 h-4 border-r border-b border-rose-gold-300" />
              </div>
              <h3 className="font-serif-elegant text-xl text-nude-800 text-center mb-2" style={{ fontWeight: 500 }}>
                Chaveiros
              </h3>
              <p className="font-sans-elegant text-sm text-nude-500 text-center mb-4" style={{ fontWeight: 300 }}>
                Detalhes delicados e sofisticados
              </p>
              <div className="text-center">
                <a
                  href={waLink('Olá! Quero comprar um Chaveiro da Divina Baby 💕')}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="font-sans-elegant text-xs tracking-widest uppercase text-rose-gold-500 hover:text-rose-gold-600 transition-colors duration-300"
                >
                  Comprar pelo WhatsApp →
                </a>
              </div>
            </div>

            {/* Collection 3 - Chupetas */}
            <div className="group cursor-pointer">
              <div className="relative aspect-[4/5] bg-gradient-to-br from-nude-50 to-cream-100 mb-6 overflow-hidden">
                <img
                  src="/chupetas.jpeg"
                  alt="Chupetas"
                  className="absolute inset-0 w-full h-full object-cover"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-nude-900/10 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500" />

                <div className="absolute inset-8 border border-rose-gold-200/50 rounded-sm pointer-events-none" />

                <div className="absolute top-3 left-3 w-4 h-4 border-l border-t border-rose-gold-300" />
                <div className="absolute top-3 right-3 w-4 h-4 border-r border-t border-rose-gold-300" />
                <div className="absolute bottom-3 left-3 w-4 h-4 border-l border-b border-rose-gold-300" />
                <div className="absolute bottom-3 right-3 w-4 h-4 border-r border-b border-rose-gold-300" />
              </div>
              <h3 className="font-serif-elegant text-xl text-nude-800 text-center mb-2" style={{ fontWeight: 500 }}>
                Chupetas
              </h3>
              <p className="font-sans-elegant text-sm text-nude-500 text-center mb-4" style={{ fontWeight: 300 }}>
                Modelos únicos para o seu bebê
              </p>
              <div className="text-center">
                <a
                  href={waLink('Olá! Quero comprar uma Chupeta da Divina Baby 💕')}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="font-sans-elegant text-xs tracking-widest uppercase text-rose-gold-500 hover:text-rose-gold-600 transition-colors duration-300"
                >
                  Comprar pelo WhatsApp →
                </a>
              </div>
            </div>
          </div>

          {/* View All Button */}
          <div className="text-center mt-16">
            <Link to="/produtos" className="btn-outline inline-block">
              Ver Todas as Coleções
            </Link>
          </div>

          {/* CTA - Modelos Personalizados */}
          <div className="text-center mt-20 pt-16 border-t border-rose-gold-200/40">
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

      {/* About Section */}
      <section id="sobre" className="py-24 lg:py-32 bg-gradient-luxury">
        <Reveal className="max-w-7xl mx-auto px-6 lg:px-12">
          <div className="grid lg:grid-cols-2 gap-12 lg:gap-20 items-center">
            {/* Left - Image/Visual */}
            <div className="relative">
              <div className="relative aspect-square max-w-lg mx-auto">
                {/* Background decorative frame */}
                <div className="absolute inset-0 border border-rose-gold-300/50 rounded-full" />
                <div className="absolute inset-4 border border-rose-gold-200/30 rounded-full" />

                {/* Inner content */}
                <div className="absolute inset-12 bg-white rounded-full shadow-luxury overflow-hidden">
                  <img
                    src="/logo.jpeg"
                    alt="Divina Baby"
                    className="absolute inset-0 w-full h-full object-cover"
                  />
                </div>

                {/* Floating decorative elements */}
                <div className="absolute top-0 right-0 w-16 h-16 bg-rose-gold-400/10 rounded-full float-animation" style={{ animationDelay: '0s' }} />
                <div className="absolute bottom-8 left-0 w-12 h-12 bg-baby-rose-200/50 rounded-full float-animation" style={{ animationDelay: '1s' }} />
                <div className="absolute top-1/2 -right-4 w-8 h-8 bg-cream-300/50 rounded-full float-animation" style={{ animationDelay: '2s' }} />
              </div>
            </div>

            {/* Right - Content */}
            <div>
              <p className="section-subtitle mb-4">Nossa História</p>
              <h2 className="section-title mb-8">Paixão em Cada Detalhe</h2>

              <div className="w-16 h-px bg-rose-gold-400 mb-8" />

              <div className="space-y-6 text-nude-600 font-sans-elegant leading-relaxed" style={{ fontWeight: 300 }}>
                <p>
                  A Divina Baby nasceu do sonho de criar uma boutique onde cada peça fosse pensada com carinho, elegância e dedicação. Acreditamos que os primeiros momentos de um bebê merecem ser cercados de beleza e conforto.
                </p>
                <p>
                  Nossa curadoria é feita com atenção aos mínimos detalhes: tecidos macios que respeitam a pele sensível, acabamentos impecáveis e designs atemporais que transitam entre gerações.
                </p>
                <p className="font-script text-lg italic text-nude-700" style={{ fontWeight: 400 }}>
                  "Cada peça conta uma história de amor, dedicação e sofisticação."
                </p>
              </div>

              <div className="mt-10 grid grid-cols-3 gap-6 text-center">
                <div>
                  <p className="font-serif-elegant text-3xl text-rose-gold-500" style={{ fontWeight: 500 }}>500+</p>
                  <p className="font-sans-elegant text-xs tracking-widest uppercase text-nude-500 mt-1" style={{ fontWeight: 300 }}>Famílias Atendidas</p>
                </div>
                <div>
                  <p className="font-serif-elegant text-3xl text-rose-gold-500" style={{ fontWeight: 500 }}>100%</p>
                  <p className="font-sans-elegant text-xs tracking-widest uppercase text-nude-500 mt-1" style={{ fontWeight: 300 }}>Qualidade Premium</p>
                </div>
                <div>
                  <p className="font-serif-elegant text-3xl text-rose-gold-500" style={{ fontWeight: 500 }}>5 Anos</p>
                  <p className="font-sans-elegant text-xs tracking-widest uppercase text-nude-500 mt-1" style={{ fontWeight: 300 }}>De Cuidado</p>
                </div>
              </div>
            </div>
          </div>
        </Reveal>
      </section>

      {/* Newsletter Section */}
      <section className="py-20 lg:py-28 bg-nude-800 relative overflow-hidden">
        {/* Decorative background */}
        <div className="absolute inset-0 opacity-10">
          <div className="absolute top-0 left-1/4 w-px h-full bg-rose-gold-400" />
          <div className="absolute top-0 right-1/4 w-px h-full bg-rose-gold-400" />
        </div>

        <Reveal className="relative max-w-3xl mx-auto px-6 lg:px-12 text-center">
          <p className="section-subtitle text-rose-gold-300 mb-4">Fique Conectada</p>
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
            className="inline-flex items-center gap-2 px-8 py-4 bg-rose-gold-400 text-white font-sans-elegant font-medium tracking-widest uppercase text-sm hover:bg-rose-gold-500 transition-colors duration-500"
          >
            <ShoppingBag size={16} style={{ strokeWidth: 1.5 }} />
            Quero receber no WhatsApp
          </a>
        </Reveal>
      </section>

      {/* Contact / Visit Section */}
      <section id="contato" className="py-24 lg:py-32 bg-white">
        <div className="max-w-7xl mx-auto px-6 lg:px-12">
          <div className="text-center mb-16">
            <p className="section-subtitle mb-4">Venha Nos Visitar</p>
            <h2 className="section-title mb-6">Nossa Boutique</h2>
            <div className="w-16 h-px bg-rose-gold-400 mx-auto" />
          </div>

          <Reveal className="grid md:grid-cols-2 lg:grid-cols-4 gap-8 lg:gap-6">
            {/* Address */}
            <div className="text-center p-8 bg-gradient-to-br from-baby-rose-50 to-cream-50 rounded-sm">
              <MapPin className="w-6 h-6 text-rose-gold-400 mx-auto mb-4" style={{ strokeWidth: 1.5 }} />
              <h3 className="font-serif-elegant text-lg text-nude-800 mb-2" style={{ fontWeight: 500 }}>Localização</h3>
              <p className="font-sans-elegant text-sm text-nude-600" style={{ fontWeight: 300 }}>
                Balneário Gaivota, SC<br />
                Atendimento sob encomenda<br />
                Envios para todo o Brasil
              </p>
            </div>

            {/* Hours */}
            <div className="text-center p-8 bg-gradient-to-br from-cream-50 to-nude-50 rounded-sm">
              <Clock className="w-6 h-6 text-rose-gold-400 mx-auto mb-4" style={{ strokeWidth: 1.5 }} />
              <h3 className="font-serif-elegant text-lg text-nude-800 mb-2" style={{ fontWeight: 500 }}>Horário</h3>
              <p className="font-sans-elegant text-sm text-nude-600" style={{ fontWeight: 300 }}>
                Seg - Sáb: 08h às 19h<br />
                Domingo: Fechado
              </p>
            </div>

            {/* Phone */}
            <div className="text-center p-8 bg-gradient-to-br from-nude-50 to-baby-rose-50 rounded-sm">
              <Phone className="w-6 h-6 text-rose-gold-400 mx-auto mb-4" style={{ strokeWidth: 1.5 }} />
              <h3 className="font-serif-elegant text-lg text-nude-800 mb-2" style={{ fontWeight: 500 }}>Contato</h3>
              <p className="font-sans-elegant text-sm text-nude-600 mb-3" style={{ fontWeight: 300 }}>
                tamyfbecker@gmail.com
              </p>
              <a
                href={waLink('Olá! Vim pelo site da Divina Baby e gostaria de mais informações 💕')}
                target="_blank"
                rel="noopener noreferrer"
                className="font-sans-elegant text-xs tracking-widest uppercase text-rose-gold-500 hover:text-rose-gold-600 transition-colors duration-300"
              >
                (48) 98836-4557 · Chamar no WhatsApp
              </a>
            </div>

            {/* Social */}
            <div className="text-center p-8 bg-gradient-to-br from-baby-rose-50 to-cream-50 rounded-sm">
              <InstagramIcon className="w-6 h-6 text-rose-gold-400 mx-auto mb-4" strokeWidth={1.5} />
              <h3 className="font-serif-elegant text-lg text-nude-800 mb-2" style={{ fontWeight: 500 }}>Redes Sociais</h3>
              <a
                href="https://www.instagram.com/_divinababy_/"
                target="_blank"
                rel="noopener noreferrer"
                className="font-sans-elegant text-sm text-nude-600 hover:text-rose-gold-500 transition-colors duration-300"
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
                <MapPin className="w-12 h-12 text-rose-gold-300 mx-auto mb-4" style={{ strokeWidth: 1 }} />
                <p className="font-serif-elegant text-nude-600" style={{ fontWeight: 400 }}>
                  Localização no mapa
                </p>
              </div>
            </div>
            <div className="absolute inset-6 border border-rose-gold-200/30 rounded-sm" />
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
                <svg width="28" height="24" viewBox="0 0 24 20" fill="none" className="text-rose-gold-400">
                  <path d="M12 2L3 7L5 17H19L21 7L12 2Z" stroke="currentColor" strokeWidth="1" fill="none" />
                  <circle cx="6" cy="17" r="1" fill="currentColor" />
                  <circle cx="12" cy="17" r="1" fill="currentColor" />
                  <circle cx="18" cy="17" r="1" fill="currentColor" />
                </svg>
                <div>
                  <h3 className="font-serif-elegant text-xl text-cream-50" style={{ fontWeight: 400 }}>Divina Baby</h3>
                  <p className="font-sans-elegant text-[9px] tracking-[0.3em] uppercase text-rose-gold-400" style={{ fontWeight: 300 }}>Boutique para Bebês</p>
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
                    <button className="font-sans-elegant text-sm text-cream-300 hover:text-rose-gold-400 transition-colors duration-300" style={{ fontWeight: 300 }}>
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
                    className="font-sans-elegant text-sm text-cream-300 hover:text-rose-gold-400 transition-colors duration-300"
                    style={{ fontWeight: 300 }}
                  >
                    (48) 98836-4557
                  </a>
                </li>
                <li className="font-sans-elegant text-sm text-cream-300" style={{ fontWeight: 300 }}>tamyfbecker@gmail.com</li>
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
              <button className="p-2 text-cream-400 hover:text-rose-gold-400 transition-colors duration-300">
                <InstagramIcon size={20} strokeWidth={1.5} />
              </button>
            </div>
          </div>
        </div>
      </footer>

      <FloatingWhatsApp />
    </div>
  );
}

export default App;