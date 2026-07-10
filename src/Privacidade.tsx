import Header from './Header';
import FloatingWhatsApp from './FloatingWhatsApp';

function Privacidade() {
  return (
    <div className="min-h-screen bg-cream-50">
      <Header />

      <section className="py-16 lg:py-24">
        <div className="max-w-3xl mx-auto px-6 lg:px-12">
          <h1 className="section-title mb-8">Política de Privacidade</h1>

          <div className="space-y-6 font-sans-elegant text-sm text-nude-600 leading-relaxed" style={{ fontWeight: 300 }}>
            <p>
              A Divina Baby respeita a sua privacidade. As informações fornecidas por você (nome, telefone, endereço) são usadas exclusivamente para viabilizar o atendimento, a produção e o envio dos seus pedidos.
            </p>
            <p>
              Não compartilhamos seus dados com terceiros para fins comerciais. O contato e o fechamento de pedidos são feitos diretamente pelo WhatsApp, e as informações trocadas ali seguem as políticas de privacidade do próprio WhatsApp/Meta.
            </p>
            <p>
              Este site não realiza cobrança online: os pagamentos são combinados diretamente com a Divina Baby via WhatsApp.
            </p>
            <p>
              Em caso de dúvidas sobre o uso dos seus dados, entre em contato pelo e-mail tamyfbecker@gmail.com.
            </p>
          </div>
        </div>
      </section>

      <FloatingWhatsApp />
    </div>
  );
}

export default Privacidade;
