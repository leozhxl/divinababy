import { useState, FormEvent } from 'react';
import { MessageCircle, Phone, Mail, MapPin } from 'lucide-react';
import Header from './Header';
import FloatingWhatsApp from './FloatingWhatsApp';
import { waLink } from './whatsapp';

function Contato() {
  const [nome, setNome] = useState('');
  const [email, setEmail] = useState('');
  const [telefone, setTelefone] = useState('');
  const [mensagem, setMensagem] = useState('');

  const handleSubmit = (e: FormEvent) => {
    e.preventDefault();
    const texto = [
      'Olá! Vim pelo formulário de contato do site da Divina Baby.',
      `Nome: ${nome}`,
      `E-mail: ${email}`,
      telefone ? `Telefone: ${telefone}` : null,
      `Mensagem: ${mensagem}`,
    ]
      .filter(Boolean)
      .join('\n');

    window.location.href = waLink(texto);
  };

  return (
    <div className="min-h-screen bg-cream-50">
      <Header />

      <section className="py-16 lg:py-24">
        <div className="max-w-5xl mx-auto px-6 lg:px-12">
          <h1 className="section-title mb-12">Contato</h1>

          <div className="grid md:grid-cols-2 gap-12">
            {/* Info column */}
            <div className="space-y-5">
              <a
                href={waLink('Olá! Vim pelo site da Divina Baby e gostaria de mais informações 💕')}
                target="_blank"
                rel="noopener noreferrer"
                className="flex items-center gap-3 font-sans-elegant text-sm text-nude-700 hover:text-oat-500 transition-colors duration-300"
                style={{ fontWeight: 300 }}
              >
                <MessageCircle className="w-4 h-4 text-oat-400" strokeWidth={1.5} />
                (48) 98836-4557
              </a>

              <a
                href="tel:+5548988364557"
                className="flex items-center gap-3 font-sans-elegant text-sm text-nude-700 hover:text-oat-500 transition-colors duration-300"
                style={{ fontWeight: 300 }}
              >
                <Phone className="w-4 h-4 text-oat-400" strokeWidth={1.5} />
                (48) 98836-4557
              </a>

              <a
                href="mailto:tamyfbecker@gmail.com"
                className="flex items-center gap-3 font-sans-elegant text-sm text-nude-700 hover:text-oat-500 transition-colors duration-300"
                style={{ fontWeight: 300 }}
              >
                <Mail className="w-4 h-4 text-oat-400" strokeWidth={1.5} />
                tamyfbecker@gmail.com
              </a>

              <div
                className="flex items-center gap-3 font-sans-elegant text-sm text-nude-700"
                style={{ fontWeight: 300 }}
              >
                <MapPin className="w-4 h-4 text-oat-400" strokeWidth={1.5} />
                Balneário Gaivota, SC
              </div>
            </div>

            {/* Form column */}
            <form onSubmit={handleSubmit} className="space-y-5">
              <div>
                <label className="block font-sans-elegant text-sm text-nude-800 mb-2" style={{ fontWeight: 500 }}>
                  Nome
                </label>
                <input
                  type="text"
                  required
                  value={nome}
                  onChange={(e) => setNome(e.target.value)}
                  placeholder="ex.: Maria Perez"
                  className="w-full bg-cream-100 border border-oat-200 rounded-sm px-4 py-2.5 font-sans-elegant text-sm text-nude-800 focus:outline-none focus:border-oat-400"
                />
              </div>

              <div>
                <label className="block font-sans-elegant text-sm text-nude-800 mb-2" style={{ fontWeight: 500 }}>
                  E-mail
                </label>
                <input
                  type="email"
                  required
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  placeholder="ex.: seuemail@email.com.br"
                  className="w-full bg-cream-100 border border-oat-200 rounded-sm px-4 py-2.5 font-sans-elegant text-sm text-nude-800 focus:outline-none focus:border-oat-400"
                />
              </div>

              <div>
                <label className="block font-sans-elegant text-sm text-nude-800 mb-2" style={{ fontWeight: 500 }}>
                  Telefone
                </label>
                <input
                  type="tel"
                  value={telefone}
                  onChange={(e) => setTelefone(e.target.value)}
                  placeholder="ex.: 11971923030"
                  className="w-full bg-cream-100 border border-oat-200 rounded-sm px-4 py-2.5 font-sans-elegant text-sm text-nude-800 focus:outline-none focus:border-oat-400"
                />
              </div>

              <div>
                <label className="block font-sans-elegant text-sm text-nude-800 mb-2" style={{ fontWeight: 500 }}>
                  Mensagem
                </label>
                <textarea
                  required
                  rows={6}
                  value={mensagem}
                  onChange={(e) => setMensagem(e.target.value)}
                  placeholder="ex.: Sua mensagem"
                  className="w-full bg-cream-100 border border-oat-200 rounded-sm px-4 py-2.5 font-sans-elegant text-sm text-nude-800 focus:outline-none focus:border-oat-400 resize-none"
                />
              </div>

              <button
                type="submit"
                className="w-full bg-oat-500 hover:bg-oat-600 transition-colors duration-300 text-white font-sans-elegant text-xs tracking-widest uppercase py-3.5 rounded-sm"
                style={{ fontWeight: 600 }}
              >
                Enviar
              </button>
            </form>
          </div>
        </div>
      </section>

      <FloatingWhatsApp />
    </div>
  );
}

export default Contato;
