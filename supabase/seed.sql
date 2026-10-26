-- Gerado por scripts/gerar-seed.mjs — não edite à mão.
begin;

insert into public.categories (name, image, sort_order, active) values
  ('Prendedor de Chupeta Personalizado com Nome em Silicone', '/WhatsApp Image 2026-07-13 at 18.22.44.jpeg', 0, true),
  ('Prendedor de Chupeta Sem Personalização em Silicone', '/WhatsApp Image 2026-07-16 at 16.41.52.jpeg', 10, true),
  ('Chaveiros', '/chaveiros.jpeg', 20, true),
  ('Chupetas de Borracha Natural para Bebês de 0 a 6 Meses', '/chupetas-0-6-meses-nova.jpeg', 30, true),
  ('Mordedor Personalizado com Nome em Silicone', '/mordedores-novo.jpeg', 40, true),
  ('Chupeta de Borracha Natural Modelo Flor', '/galeria-2.jpeg', 50, true),
  ('Chupeta de Borracha Natural com Argolinha que Brilha no Escuro', '/WhatsApp Image 2026-07-10 at 16.18.18.jpeg', 60, true),
  ('Kits', '/kits-novo.jpeg', 70, true),
  ('Kit Pente e Escova de Madeira com Cerdas Naturais', '/kit-pente-escova-novo.jpeg', 80, true),
  ('Mordedores', null, 90, false)
on conflict (name) do nothing;

insert into public.bead_colors (name, hex, image, sort_order) values
  ('Mostarda', '#d4a13a', '/WhatsApp Image 2026-07-10 at 12.31.45 (1).jpeg', 0),
  ('Yellow', '#f5d33e', '/WhatsApp Image 2026-07-10 at 12.31.45.jpeg', 10),
  ('Madeira', '#c9a876', '/WhatsApp Image 2026-07-10 at 12.31.46 (1).jpeg', 20),
  ('Marrom Escuro', '#5a2f42', '/WhatsApp Image 2026-07-10 at 12.31.46 (2).jpeg', 30),
  ('Camel', '#c9986a', '/WhatsApp Image 2026-07-10 at 12.31.46 (3).jpeg', 40),
  ('Marrom Claro', '#9c6b6e', '/marrom claro.jpeg', 50),
  ('Blush', '#e8a89a', '/WhatsApp Image 2026-07-10 at 12.31.46 (5).jpeg', 60),
  ('Branco', '#ffffff', '/WhatsApp Image 2026-07-10 at 12.31.47.jpeg', 70),
  ('Marble', '#dedad2', '/WhatsApp Image 2026-07-10 at 12.31.47 (1).jpeg', 80),
  ('Gritty', '#ecebe4', '/WhatsApp Image 2026-07-10 at 12.31.47 (2).jpeg', 90),
  ('Wine Red', '#7a1f42', '/WhatsApp Image 2026-07-10 at 12.31.47 (3).jpeg', 100),
  ('Navajo White', '#ddc4a0', '/WhatsApp Image 2026-07-10 at 12.31.47 (4).jpeg', 110),
  ('Oatmeal', '#e8ddc6', '/WhatsApp Image 2026-07-10 at 12.31.48.jpeg', 120),
  ('Rosa', '#f0b8c4', '/WhatsApp Image 2026-07-10 at 12.31.48 (2).jpeg', 130),
  ('Quartz Pink', '#e8b4bc', '/WhatsApp Image 2026-07-10 at 12.31.48 (3).jpeg', 140),
  ('Rose Brown', '#b89aa0', '/WhatsApp Image 2026-07-10 at 12.31.46 (4).jpeg', 150),
  ('Dark Pink', '#d13d82', '/WhatsApp Image 2026-07-10 at 12.31.48 (4).jpeg', 160),
  ('Vermelho', '#e02f3e', '/WhatsApp Image 2026-07-10 at 12.31.49.jpeg', 170),
  ('Violet Red', '#c81f6e', '/WhatsApp Image 2026-07-10 at 12.31.49 (1).jpeg', 180),
  ('Pink', '#f478a8', '/WhatsApp Image 2026-07-10 at 12.31.48 (1).jpeg', 190),
  ('Peach', '#f0a888', '/WhatsApp Image 2026-07-10 at 12.31.49 (3).jpeg', 200),
  ('Lilás', '#c9a0d8', '/WhatsApp Image 2026-07-10 at 12.31.49 (5).jpeg', 210),
  ('Light Purple', '#b060d0', '/WhatsApp Image 2026-07-10 at 12.31.49 (4).jpeg', 220),
  ('Candy Pink', '#f568a0', '/WhatsApp Image 2026-07-10 at 12.31.49 (2).jpeg', 230),
  ('Rosa Candy', '#f588b0', '/WhatsApp Image 2026-07-10 at 12.31.50.jpeg', 240),
  ('Blue', '#2f7fd0', '/WhatsApp Image 2026-07-10 at 12.31.50 (4).jpeg', 250),
  ('Power Blue', '#a8c8d8', '/WhatsApp Image 2026-07-10 at 12.31.50 (2).jpeg', 260),
  ('Pastel Blue', '#7fb0d0', '/WhatsApp Image 2026-07-10 at 12.31.50 (3).jpeg', 270),
  ('Aqua Blue', '#4fa8c8', '/WhatsApp Image 2026-07-10 at 12.31.51 (4).jpeg', 280),
  ('Azul Jeans', '#3f7a9a', '/WhatsApp Image 2026-07-10 at 12.31.51 (1).jpeg', 290),
  ('Cinza Claro', '#a9b7c0', '/WhatsApp Image 2026-07-10 at 12.31.51 (2).jpeg', 300),
  ('Dim Gray', '#6f89a0', '/WhatsApp Image 2026-07-10 at 12.31.51 (3).jpeg', 310),
  ('Cyan', '#4fc3c0', '/WhatsApp Image 2026-07-10 at 12.31.51.jpeg', 320),
  ('Bean Green', '#7a9a4a', '/WhatsApp Image 2026-07-10 at 12.31.52.jpeg', 330),
  ('Deep Green', '#1f8f5a', '/WhatsApp Image 2026-07-10 at 12.31.52 (1).jpeg', 340),
  ('Verde Bandeira', '#1fa84a', '/WhatsApp Image 2026-07-10 at 12.31.52 (2).jpeg', 350),
  ('Matcha Green', '#a8c090', '/WhatsApp Image 2026-07-10 at 12.31.52 (3).jpeg', 360),
  ('Turquoise', '#2ec4c0', '/WhatsApp Image 2026-07-10 at 12.31.52 (4).jpeg', 370),
  ('Verde Água', '#8fdcc4', '/WhatsApp Image 2026-09-04 at 10.26.18.jpeg', 380),
  ('Black', '#1c2230', '/black.jpeg', 390),
  ('Azul Escuro', '#2f6fd0', '/azul escuro.jpeg', 400)
on conflict (name) do nothing;

insert into public.themes (name, image, sort_order) values
  ('Girafinha — Nude', '/WhatsApp Image 2026-07-14 at 22.12.06.jpeg', 0),
  ('Girafinha — Carinha', '/WhatsApp Image 2026-07-14 at 21.58.49.jpeg', 10),
  ('Raposinha — 3D', '/WhatsApp Image 2026-07-14 at 22.05.42.jpeg', 20),
  ('Raposinha — Carinha e Esquilo', '/WhatsApp Image 2026-07-14 at 22.00.07.jpeg', 30),
  ('Cachorro — 3D', '/WhatsApp Image 2026-07-14 at 22.04.42 (1).jpeg', 40),
  ('Cachorrinho — Marrom', '/WhatsApp Image 2026-07-14 at 22.04.10.jpeg', 50),
  ('Cavalinho — Marrom e Preto', '/WhatsApp Image 2026-07-14 at 22.03.36.jpeg', 60),
  ('Cavalinho — Caramelo e Marrom', '/WhatsApp Image 2026-07-14 at 21.25.53.jpeg', 70),
  ('Borboleta — Colorida', '/WhatsApp Image 2026-07-14 at 22.02.55.jpeg', 80),
  ('Borboleta — Frisada', '/WhatsApp Image 2026-07-14 at 21.22.49.jpeg', 90),
  ('Coala', '/WhatsApp Image 2026-07-14 at 21.58.01.jpeg', 100),
  ('Gatinho', '/WhatsApp Image 2026-07-14 at 21.55.39.jpeg', 110),
  ('Ursinho — Nude', '/WhatsApp Image 2026-07-14 at 21.54.43.jpeg', 120),
  ('Ursinho — Colorido', '/WhatsApp Image 2026-07-14 at 21.53.50.jpeg', 130),
  ('Ursinho — Laço', '/WhatsApp Image 2026-07-14 at 21.48.19.jpeg', 140),
  ('Ursinho — Arco-Íris', '/WhatsApp Image 2026-07-14 at 21.51.51.jpeg', 150),
  ('Dinossauro', '/WhatsApp Image 2026-07-14 at 21.50.36.jpeg', 160),
  ('Elefante — Pastel', '/WhatsApp Image 2026-07-14 at 21.49.43.jpeg', 170),
  ('Elefante — Cinza', '/WhatsApp Image 2026-07-14 at 21.49.08.jpeg', 180),
  ('Ovelhinha', '/WhatsApp Image 2026-07-14 at 21.46.36.jpeg', 190),
  ('Estrela — Do Mar', '/WhatsApp Image 2026-07-14 at 21.36.25.jpeg', 200),
  ('Estrela — Azul', '/WhatsApp Image 2026-07-14 at 21.10.35.jpeg', 210),
  ('Panda', '/WhatsApp Image 2026-07-14 at 21.34.20.jpeg', 220),
  ('Vaquinha', '/WhatsApp Image 2026-07-14 at 21.31.20.jpeg', 230),
  ('Flor de Lótus', '/WhatsApp Image 2026-07-14 at 21.23.51.jpeg', 240),
  ('Sol', '/WhatsApp Image 2026-07-14 at 21.21.47.jpeg', 250),
  ('Stitch e Angel', '/WhatsApp Image 2026-07-14 at 21.20.57.jpeg', 260),
  ('Leãozinho', '/WhatsApp Image 2026-07-14 at 21.18.56.jpeg', 270),
  ('Abelhinha', '/WhatsApp Image 2026-07-14 at 21.17.44.jpeg', 280),
  ('Laço — Poá', '/WhatsApp Image 2026-07-14 at 21.16.52.jpeg', 290),
  ('Laço — Colorido', '/WhatsApp Image 2026-07-14 at 21.15.41.jpeg', 300),
  ('Laço — Nude e Rose', '/WhatsApp Image 2026-07-14 at 21.13.59.jpeg', 310),
  ('Arco-Íris — Nude e Rosa', '/WhatsApp Image 2026-07-14 at 21.13.23.jpeg', 320),
  ('Arco-Íris — Nuvem Candy', '/WhatsApp Image 2026-07-14 at 21.12.43.jpeg', 330),
  ('Arco-Íris — Rosa', '/WhatsApp Image 2026-07-14 at 20.53.41.jpeg', 340),
  ('Coroa — Azul', '/WhatsApp Image 2026-07-14 at 21.12.02.jpeg', 350),
  ('Coroa — Azul e Verde', '/WhatsApp Image 2026-07-14 at 20.34.12.jpeg', 360),
  ('Astronauta — Verde', '/WhatsApp Image 2026-07-14 at 21.09.32.jpeg', 370),
  ('Astronauta — Azul', '/WhatsApp Image 2026-07-14 at 21.09.00.jpeg', 380),
  ('Margarida — 100% Nude', '/WhatsApp Image 2026-07-14 at 21.08.16.jpeg', 390),
  ('Margarida — Coral, Nude e Lilás', '/WhatsApp Image 2026-07-14 at 21.07.17.jpeg', 400),
  ('Margarida — Rosa e Branca', '/WhatsApp Image 2026-07-14 at 20.58.49.jpeg', 410),
  ('Coração', '/WhatsApp Image 2026-07-14 at 20.55.19.jpeg', 420),
  ('Balão — Rosa e Verde', '/WhatsApp Image 2026-07-14 at 20.54.24.jpeg', 430),
  ('Minnie — Rosa', '/WhatsApp Image 2026-07-14 at 20.51.11.jpeg', 440),
  ('Urso — Nude', '/WhatsApp Image 2026-07-14 at 20.49.53.jpeg', 450),
  ('Urso — Rosa', '/WhatsApp Image 2026-07-14 at 20.49.19.jpeg', 460),
  ('Urso — Azul', '/WhatsApp Image 2026-07-14 at 20.48.38.jpeg', 470),
  ('Urso — Verde Sálvia', '/WhatsApp Image 2026-07-14 at 20.46.18.jpeg', 480),
  ('Carrinho — Azul, Verde e Nude', '/WhatsApp Image 2026-07-14 at 20.45.40.jpeg', 490),
  ('Barquinho', '/WhatsApp Image 2026-07-14 at 20.40.16.jpeg', 500),
  ('Bola de Futebol', '/WhatsApp Image 2026-07-14 at 20.32.37.jpeg', 510),
  ('Bolinha — Estampa Floral e Animal', '/WhatsApp Image 2026-07-14 at 20.31.54.jpeg', 520),
  ('Bolinha — Estampa Safari', '/WhatsApp Image 2026-07-14 at 20.29.24.jpeg', 530),
  ('Bolinha — Estampa Flores', '/WhatsApp Image 2026-07-14 at 20.28.39.jpeg', 540),
  ('Bolinha — Estampa Abelha', '/WhatsApp Image 2026-07-14 at 20.27.54.jpeg', 550),
  ('Cereja', '/WhatsApp Image 2026-07-09 at 17.40.15.jpeg', 560)
on conflict (name) do nothing;

insert into public.products (id, slug, name, category, price, compare_at_price, pix_price, installments, alt_installments, alt_installment_amount, images, image_position, image_fit, has_colors, has_themes, sizes, description, badges, sort_order) values
  ('240', 'kit-prendedor-nome-chupeta-borracha-natural', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 16.41.26.jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 0),
  ('242', 'kit-prendedor-nome-chupeta-borracha-natural-242', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 16.41.27 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 10),
  ('243', 'kit-prendedor-nome-chupeta-borracha-natural-243', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 16.41.27 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 20),
  ('244', 'kit-prendedor-nome-chupeta-borracha-natural-244', 'Kit 2 Prendedores Personalizados com Nome em Silicone + 2 Chupetas de Borracha Natural Modelo Flor', 'Kits', 359.6, null, 319.6, 2, 4, 95, array['/WhatsApp Image 2026-07-10 at 16.41.28.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para oferecer praticidade, segurança e muito carinho nos primeiros momentos do bebê.

Os prendedores personalizados mantêm as chupetas sempre por perto, evitando quedas e perdas no dia a dia. Produzidos em silicone atóxico, livre de BPA, são personalizados com o nome do bebê, tornando cada peça única.

As chupetas de borracha natural modelo Flor são macias, confortáveis e possuem um design delicado, ideal para acompanhar o bebê com segurança e charme.

O kit contém
- 2 Prendedores de Chupeta Personalizados em Silicone
- 2 Chupetas de Borracha Natural Modelo Flor

As peças acompanham saquinhos de algodão para armazenamento e são enviadas em uma embalagem cuidadosamente preparada, pronta para presentear.

Basta escolher as cores desejadas e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo e especial para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 30),
  ('245', 'kit-prendedor-nome-chupeta-borracha-natural-245', 'Kit 1 Prendedor Personalizado com Nome em Silicone + 3 Chupetas de Borracha Natural Argolinha Brilha no Escuro', 'Kits', 359.6, null, 319.6, 2, 4, 95, array['/WhatsApp Image 2026-07-10 at 16.41.28 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 3 Chupetas de Borracha Natural Argolinha Brilha no Escuro

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 40),
  ('246', 'kit-prendedor-nome-chupeta-borracha-natural-246', 'Kit Prendedor Personalizado com Nome em Silicone + 1 Chupeta de Borracha Natural + 1 Chupeta de Borracha Natural Argolinha Brilha no Escuro', 'Kits', 349.6, null, 309.6, 2, 4, 92.4, array['/WhatsApp Image 2026-07-10 at 16.41.30.jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 2 Prendedores de Chupeta Personalizados em Silicone
- 1 Chupeta de Borracha Natural
- 1 Chupeta de Borracha Natural Argolinha Brilha no Escuro

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 50),
  ('247', 'kit-prendedor-nome-chupeta-borracha-natural-247', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 16.41.33.jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 60),
  ('248', 'kit-prendedor-nome-chupeta-borracha-natural-248', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural Argolinha Brilha no Escuro', 'Kits', 179.8, null, 159.8, 2, 4, 49.95, array['/WhatsApp Image 2026-07-10 at 16.41.33 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural Argolinha Brilha no Escuro

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 70),
  ('249', 'kit-prendedor-nome-chupeta-borracha-natural-249', 'Kit Prendedor Personalizado com Nome em Silicone + Chupeta de Borracha Natural Modelo Flor + Chupeta de Borracha Natural', 'Kits', 259.7, null, 229.7, 2, 4, 69.9, array['/WhatsApp Image 2026-07-10 at 16.41.34.jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural
- 1 Chupeta de Borracha Natural Modelo Flor

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 80),
  ('251', 'kit-prendedor-nome-chupeta-borracha-natural-251', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural Argolinha Brilha no Escuro', 'Kits', 179.8, null, 159.8, 2, 4, 49.95, array['/WhatsApp Image 2026-07-10 at 16.41.35.jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural Argolinha Brilha no Escuro

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 90),
  ('252', 'kit-prendedor-nome-chupeta-borracha-natural-252', 'Kit Prendedor Personalizado com Nome em Silicone + 4 Chupetas de Borracha Natural', 'Kits', 409.5, null, 359.5, 2, 4, 108, array['/WhatsApp Image 2026-07-10 at 16.41.35 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

Os Prendedores de Chupeta Personalizados mantêm as chupetas sempre por perto, evitando quedas e perdas. Produzidos em silicone atóxico, livre de BPA, são personalizados com o nome do bebê, tornando cada peça única.

As Chupetas de Borracha Natural são macias, flexíveis e desenvolvidas para proporcionar conforto ao bebê, respeitando o desenvolvimento oral.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 4 Chupetas de Borracha Natural

As peças acompanham um saquinho de algodão para armazenamento e são enviadas em uma embalagem delicada, pronta para presentear.

Basta escolher as cores desejadas e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 100),
  ('253', 'kit-prendedor-nome-chupeta-borracha-natural-253', 'Kit 2 Prendedores Personalizados com Nome em Silicone + 2 Chupetas de Borracha Natural Argolinha Brilha no Escuro', 'Kits', 359.6, null, 319.6, 2, 4, 95, array['/WhatsApp Image 2026-07-10 at 16.41.36.jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 110),
  ('254', 'kit-prendedor-nome-chupeta-borracha-natural-254', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural Modelo Flor', 'Kits', 179.8, null, 159.8, 2, 4, 49.95, array['/WhatsApp Image 2026-07-10 at 16.41.36 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Delicado, funcional e cheio de significado, este kit foi pensado para acompanhar o bebê nos primeiros meses de vida com conforto, segurança e muito charme.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas no dia a dia. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça exclusiva e especial.

A Chupeta de Borracha Natural Modelo Flor possui um design delicado e atemporal. Fabricada em borracha natural, é macia, flexível e confortável para o bebê, além de contar com um escudo leve e anatômico, desenvolvido para proporcionar bem-estar durante o uso.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural Modelo Flor

As peças acompanham um saquinho de algodão para armazenamento e são enviadas em uma embalagem cuidadosamente preparada, pronta para presentear.

Basta escolher a cor de sua preferência e informar o nome do bebê. Cada kit é produzido artesanalmente com muito carinho, criando uma combinação única para o seu pequeno.

Uma opção encantadora para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado, útil e cheio de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 120),
  ('255', 'kit-prendedor-nome-chupeta-borracha-natural-255', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural Modelo Flor', 'Kits', 179.8, null, 159.8, 2, 4, 49.95, array['/WhatsApp Image 2026-07-10 at 16.41.38.jpeg']::text[], null, null, true, true, '{}'::text[], 'Delicado, funcional e cheio de significado, este kit foi pensado para acompanhar o bebê nos primeiros meses de vida com conforto, segurança e muito charme.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas no dia a dia. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça exclusiva e especial.

A Chupeta de Borracha Natural Modelo Flor possui um design delicado e atemporal. Fabricada em borracha natural, é macia, flexível e confortável para o bebê, além de contar com um escudo leve e anatômico, desenvolvido para proporcionar bem-estar durante o uso.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural Modelo Flor

As peças acompanham um saquinho de algodão para armazenamento e são enviadas em uma embalagem cuidadosamente preparada, pronta para presentear.

Basta escolher a cor de sua preferência e informar o nome do bebê. Cada kit é produzido artesanalmente com muito carinho, criando uma combinação única para o seu pequeno.

Uma opção encantadora para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado, útil e cheio de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 130),
  ('256', 'kit-prendedor-nome-chupeta-borracha-natural-256', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 16.41.39.jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 140),
  ('257', 'kit-prendedor-nome-chupeta-borracha-natural-257', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 16.41.40.jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 150),
  ('258', 'kit-prendedor-nome-chupeta-borracha-natural-258', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 16.41.42.jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 160),
  ('259', 'kit-prendedor-nome-chupeta-borracha-natural-259', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 16.41.42 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 170),
  ('260', 'kit-prendedor-nome-chupeta-borracha-natural-260', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 16.41.42 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 180),
  ('261', 'kit-prendedor-nome-chupeta-borracha-natural-261', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 16.41.44.jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 190),
  ('262', 'kit-prendedor-nome-chupeta-borracha-natural-262', 'Kit 2 Prendedores Personalizados com Nome em Silicone + 2 Chupetas de Borracha Natural', 'Kits', 339.6, null, 299.6, 2, 4, 89.9, array['/WhatsApp Image 2026-07-10 at 16.41.45.jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

A Chupeta de Borracha Natural é macia, flexível e desenvolvida para proporcionar conforto ao bebê, com formato que respeita o desenvolvimento oral e material 100% de borracha natural, livre de BPA.

O kit contém
- 2 Prendedores de Chupeta Personalizados em Silicone
- 2 Chupetas de Borracha Natural

As peças acompanham um saquinho de algodão para armazenamento e são enviadas prontas para presentear, em uma embalagem delicada e cuidadosamente preparada.

Basta escolher a cor de sua preferência e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.

Além de funcional, este kit é uma linda opção para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado que será usado diariamente e guardado como uma lembrança cheia de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 200),
  ('263', 'kit-prendedor-nome-chupeta-borracha-natural-263', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural Modelo Flor', 'Kits', 179.8, null, 159.8, 2, 4, 49.95, array['/WhatsApp Image 2026-07-10 at 16.41.45 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Delicado, funcional e cheio de significado, este kit foi pensado para acompanhar o bebê nos primeiros meses de vida com conforto, segurança e muito charme.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas no dia a dia. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça exclusiva e especial.

A Chupeta de Borracha Natural Modelo Flor possui um design delicado e atemporal. Fabricada em borracha natural, é macia, flexível e confortável para o bebê, além de contar com um escudo leve e anatômico, desenvolvido para proporcionar bem-estar durante o uso.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural Modelo Flor

As peças acompanham um saquinho de algodão para armazenamento e são enviadas em uma embalagem cuidadosamente preparada, pronta para presentear.

Basta escolher a cor de sua preferência e informar o nome do bebê. Cada kit é produzido artesanalmente com muito carinho, criando uma combinação única para o seu pequeno.

Uma opção encantadora para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado, útil e cheio de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 210),
  ('264', 'kit-prendedor-nome-chupeta-borracha-natural-264', 'Kit Prendedor de Chupeta Personalizado com Nome + Chupeta de Borracha Natural Modelo Flor', 'Kits', 179.8, null, 159.8, 2, 4, 49.95, array['/WhatsApp Image 2026-07-10 at 16.41.46.jpeg']::text[], null, null, true, true, '{}'::text[], 'Delicado, funcional e cheio de significado, este kit foi pensado para acompanhar o bebê nos primeiros meses de vida com conforto, segurança e muito charme.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas no dia a dia. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça exclusiva e especial.

A Chupeta de Borracha Natural Modelo Flor possui um design delicado e atemporal. Fabricada em borracha natural, é macia, flexível e confortável para o bebê, além de contar com um escudo leve e anatômico, desenvolvido para proporcionar bem-estar durante o uso.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Chupeta de Borracha Natural Modelo Flor

As peças acompanham um saquinho de algodão para armazenamento e são enviadas em uma embalagem cuidadosamente preparada, pronta para presentear.

Basta escolher a cor de sua preferência e informar o nome do bebê. Cada kit é produzido artesanalmente com muito carinho, criando uma combinação única para o seu pequeno.

Uma opção encantadora para compor o enxoval ou presentear uma gestante e um recém-nascido com um presente personalizado, útil e cheio de afeto.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 220),
  ('265', 'kit-prendedor-nome-chupeta-borracha-natural-265', 'Kit 2 Prendedores Personalizados com Nome em Silicone + 2 Chupetas de Borracha Natural Modelo Flor', 'Kits', 359.6, null, 319.6, 2, 4, 95, array['/WhatsApp Image 2026-07-10 at 16.41.46 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para oferecer praticidade, segurança e muito carinho nos primeiros momentos do bebê.

Os prendedores personalizados mantêm as chupetas sempre por perto, evitando quedas e perdas no dia a dia. Produzidos em silicone atóxico, livre de BPA, são personalizados com o nome do bebê, tornando cada peça única.

As chupetas de borracha natural modelo Flor são macias, confortáveis e possuem um design delicado, ideal para acompanhar o bebê com segurança e charme.

O kit contém
- 2 Prendedores de Chupeta Personalizados em Silicone
- 2 Chupetas de Borracha Natural Modelo Flor

As peças acompanham saquinhos de algodão para armazenamento e são enviadas em uma embalagem cuidadosamente preparada, pronta para presentear.

Basta escolher as cores desejadas e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo e especial para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 230),
  ('266', 'kit-prendedor-nome-chupeta-borracha-natural-266', 'Kit Prendedor Personalizado com Nome em Silicone + 2 Chupetas de Borracha Natural Modelo Flor + 1 Chupeta de Borracha Natural', 'Kits', 349.6, null, 309.6, 2, 4, 92.4, array['/WhatsApp Image 2026-07-10 at 16.41.46 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O kit perfeito para quem busca praticidade, segurança e um toque especial no dia a dia do bebê.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas. Produzido em silicone atóxico, livre de BPA, é personalizado com o nome do bebê, tornando cada peça única.

As Chupetas de Borracha Natural são macias, flexíveis e desenvolvidas para proporcionar conforto ao bebê, respeitando o desenvolvimento oral.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 2 Chupetas de Borracha Natural Modelo Flor
- 1 Chupeta de Borracha Natural

As peças acompanham um saquinho de algodão para armazenamento e são enviadas em uma embalagem delicada, pronta para presentear.

Basta escolher as cores desejadas e informar o nome do bebê. Produziremos cada detalhe com muito carinho para criar um kit exclusivo, feito especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 240),
  ('230', 'mordedor-personalizado-nome-silicone', 'Mordedor Personalizado com Nome em Silicone', 'Mordedor Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 16.33.48.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Mordedor Personalizado da Divina Baby foi desenvolvido para proporcionar conforto, segurança e delicadeza nos primeiros momentos do bebê. Ele é feito especialmente para a fase de dentição, auxiliando muito quando o dentinho está crescendo e os dentes começam a coçar.

Produzido artesanalmente e personalizado com o nome do bebê, ele é um acessório único, pensado para acompanhar essa fase tão especial com muito carinho.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola em madeira natural.
- Cordão de nylon resistente.

Medidas
As medidas podem variar conforme a quantidade de letras do nome do bebê e o modelo escolhido. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o mordedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada mordedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 250),
  ('231', 'mordedor-personalizado-nome-silicone-231', 'Kit Mordedor Personalizado com Nome em Silicone + Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 16.33.48 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Mordedor com o nome do bebê em contas de silicone atóxico, uma peça sensorial e decorativa que também estimula a curiosidade.', array['Feito à mão', 'Personalizável']::text[], 260),
  ('232', 'mordedor-personalizado-nome-silicone-232', 'Kit Mordedor Personalizado com Nome em Silicone + Chupeta de Borracha Natural Modelo Flor', 'Kits', 179.8, null, 159.8, 2, 4, 49.95, array['/WhatsApp Image 2026-07-10 at 16.33.48 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Kit Presente Personalizado Divina Baby foi desenvolvido para oferecer conforto, segurança e carinho nos primeiros meses do bebê.

Cada peça é produzida artesanalmente e personalizada com o nome do bebê, tornando o kit uma lembrança única e especial para toda a família.

O kit contém
- 1 Mordedor Sensorial Personalizado
- 1 Chupeta de Borracha Natural Modelo Flor

Os acessórios acompanham um saquinho de algodão para armazenamento e proteção.

Basta escolher a cor desejada e informar o nome do bebê. Nós cuidaremos de cada detalhe para criar um kit exclusivo, feito com muito carinho, segurança e qualidade.

Um presente delicado e cheio de significado, perfeito para gestantes, recém-nascidos e chás de bebê.', array['Feito à mão', 'Personalizável']::text[], 270),
  ('233', 'mordedor-personalizado-nome-silicone-233', 'Mordedor Personalizado com Nome em Silicone', 'Mordedor Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 16.33.49.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Mordedor Personalizado da Divina Baby foi desenvolvido para proporcionar conforto, segurança e delicadeza nos primeiros momentos do bebê. Ele é feito especialmente para a fase de dentição, auxiliando muito quando o dentinho está crescendo e os dentes começam a coçar.

Produzido artesanalmente e personalizado com o nome do bebê, ele é um acessório único, pensado para acompanhar essa fase tão especial com muito carinho.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola em madeira natural.
- Cordão de nylon resistente.

Medidas
As medidas podem variar conforme a quantidade de letras do nome do bebê e o modelo escolhido. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o mordedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada mordedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 280),
  ('234', 'mordedor-personalizado-nome-silicone-234', 'Kit Mordedor Personalizado com Nome em Silicone + Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 16.33.50.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Kit Presente Personalizado Divina Baby foi pensado para acompanhar os primeiros momentos do bebê com carinho, segurança e muito amor.

Cada peça é produzida artesanalmente e personalizada com o nome do bebê, tornando o kit uma lembrança única e especial para toda a família.

O kit contém
- 1 Mordedor Sensorial Personalizado
- 1 Kit Escova e Pente de Madeira (2 peças)
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Os acessórios acompanham saquinhos de algodão para armazenamento e proteção.

Basta escolher a cor desejada e informar o nome do bebê. Nós cuidaremos de cada detalhe para criar um kit exclusivo, feito com muito carinho, segurança e qualidade.

Um presente delicado e cheio de significado, perfeito para gestantes, recém-nascidos e chás de bebê.', array['Feito à mão', 'Personalizável']::text[], 290),
  ('235', 'mordedor-personalizado-nome-silicone-235', 'Mordedor Personalizado com Nome em Silicone', 'Mordedor Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 16.33.50 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Mordedor Personalizado da Divina Baby foi desenvolvido para proporcionar conforto, segurança e delicadeza nos primeiros momentos do bebê. Ele é feito especialmente para a fase de dentição, auxiliando muito quando o dentinho está crescendo e os dentes começam a coçar.

Produzido artesanalmente e personalizado com o nome do bebê, ele é um acessório único, pensado para acompanhar essa fase tão especial com muito carinho.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola em madeira natural.
- Cordão de nylon resistente.

Medidas
As medidas podem variar conforme a quantidade de letras do nome do bebê e o modelo escolhido. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o mordedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada mordedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 300),
  ('236', 'mordedor-personalizado-nome-silicone-236', 'Mordedor Personalizado com Nome em Silicone', 'Mordedor Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 16.33.51.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Mordedor Personalizado da Divina Baby foi desenvolvido para proporcionar conforto, segurança e delicadeza nos primeiros momentos do bebê. Ele é feito especialmente para a fase de dentição, auxiliando muito quando o dentinho está crescendo e os dentes começam a coçar.

Produzido artesanalmente e personalizado com o nome do bebê, ele é um acessório único, pensado para acompanhar essa fase tão especial com muito carinho.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola em madeira natural.
- Cordão de nylon resistente.

Medidas
As medidas podem variar conforme a quantidade de letras do nome do bebê e o modelo escolhido. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o mordedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada mordedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 310),
  ('237', 'mordedor-personalizado-nome-silicone-237', 'Mordedor Personalizado com Nome em Silicone', 'Mordedor Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 16.33.52.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Mordedor Personalizado da Divina Baby foi desenvolvido para proporcionar conforto, segurança e delicadeza nos primeiros momentos do bebê. Ele é feito especialmente para a fase de dentição, auxiliando muito quando o dentinho está crescendo e os dentes começam a coçar.

Produzido artesanalmente e personalizado com o nome do bebê, ele é um acessório único, pensado para acompanhar essa fase tão especial com muito carinho.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola em madeira natural.
- Cordão de nylon resistente.

Medidas
As medidas podem variar conforme a quantidade de letras do nome do bebê e o modelo escolhido. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o mordedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada mordedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 320),
  ('238', 'mordedor-personalizado-nome-silicone-238', 'Mordedor Personalizado com Nome em Silicone', 'Mordedor Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 16.33.52 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Mordedor Personalizado da Divina Baby foi desenvolvido para proporcionar conforto, segurança e delicadeza nos primeiros momentos do bebê. Ele é feito especialmente para a fase de dentição, auxiliando muito quando o dentinho está crescendo e os dentes começam a coçar.

Produzido artesanalmente e personalizado com o nome do bebê, ele é um acessório único, pensado para acompanhar essa fase tão especial com muito carinho.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola em madeira natural.
- Cordão de nylon resistente.

Medidas
As medidas podem variar conforme a quantidade de letras do nome do bebê e o modelo escolhido. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o mordedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada mordedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 330),
  ('239', 'mordedor-personalizado-nome-silicone-239', 'Mordedor Personalizado com Nome em Silicone', 'Mordedor Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 16.33.53.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Mordedor Personalizado da Divina Baby foi desenvolvido para proporcionar conforto, segurança e delicadeza nos primeiros momentos do bebê. Ele é feito especialmente para a fase de dentição, auxiliando muito quando o dentinho está crescendo e os dentes começam a coçar.

Produzido artesanalmente e personalizado com o nome do bebê, ele é um acessório único, pensado para acompanhar essa fase tão especial com muito carinho.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola em madeira natural.
- Cordão de nylon resistente.

Medidas
As medidas podem variar conforme a quantidade de letras do nome do bebê e o modelo escolhido. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o mordedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada mordedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 340),
  ('220', 'kit-pente-escova-madeira-cerdas-naturais', 'Kit Personalizado Divina Baby 5 itens', 'Kits', 339.6, null, 299.6, 2, 4, 89.9, array['/pente-escovas.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Kit Presente Personalizado Divina Baby reúne os itens essenciais para o dia a dia do bebê em um presente único, delicado e cheio de significado.

Cada peça é produzida artesanalmente e personalizada com o nome do bebê, tornando o kit uma lembrança especial para toda a família.

O kit contém
- 1 Prendedor de Chupeta Personalizado
- 1 Chupeta de Borracha Natural
- 1 Mordedor Sensorial
- 1 Kit Escova e Pente de Madeira (2 peças)
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Os acessórios acompanham saquinhos de algodão para armazenamento e proteção.

Basta escolher a cor desejada e informar o nome do bebê. Nós cuidaremos de cada detalhe para criar um kit exclusivo, com muito carinho, segurança e qualidade.

Um presente perfeito para gestantes, recém-nascidos e chás de bebê, feito para eternizar momentos especiais.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 350),
  ('221', 'kit-pente-escova-madeira-cerdas-naturais-221', 'Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 79.9, null, 69.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.27.34.jpeg']::text[], null, null, true, false, '{}'::text[], 'Kit de cuidado delicado para os fios do bebê, com pente e escova em madeira natural e cerdas macias.

Composição do Kit
• 1 pente de madeira
• 1 escova de madeira com cerdas naturais

Especificações
- Medidas aproximadas: 4 x 15 cm
- Material: madeira natural
- Escova com cerdas naturais, delicadas e ideais para os primeiros cuidados com o bebê.

Observação
Por ser produzido com madeira natural, cada peça é única. Pequenas variações na tonalidade e nos veios da madeira são características do material e não representam defeito no produto.', array['Feito à mão']::text[], 360),
  ('222', 'kit-pente-escova-madeira-cerdas-naturais-222', 'Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kit Pente e Escova de Madeira com Cerdas Naturais', 79.9, null, 69.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.27.34 (1).jpeg']::text[], null, null, true, false, '{}'::text[], 'Kit de cuidados delicados para os cabelos do bebê, com pente e escova em madeira natural e cerdas naturais.

Composição do Kit
• 1 pente de madeira
• 1 escova de madeira com cerdas naturais

Especificações
- Medidas aproximadas: 4 x 15 cm
- Material: madeira natural
- Escova com cerdas naturais, delicadas e ideais para os primeiros cuidados com o bebê.

Observação
Por ser produzido com madeira natural, cada peça é única. Pequenas variações na tonalidade e nos veios da madeira são características do material e não representam defeito no produto.', array['Feito à mão']::text[], 370),
  ('223', 'kit-pente-escova-madeira-cerdas-naturais-223', 'Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kit Pente e Escova de Madeira com Cerdas Naturais', 79.9, null, 69.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.27.34 (2).jpeg']::text[], null, null, true, false, '{}'::text[], 'Kit de cuidados delicados para os cabelos do bebê, com pente e escova em madeira natural e cerdas naturais.

Composição do Kit
• 1 pente de madeira
• 1 escova de madeira com cerdas naturais

Especificações
- Medidas aproximadas: 4 x 15 cm
- Material: madeira natural
- Escova com cerdas naturais, delicadas e ideais para os primeiros cuidados com o bebê.

Observação
Por ser produzido com madeira natural, cada peça é única. Pequenas variações na tonalidade e nos veios da madeira são características do material e não representam defeito no produto.', array['Feito à mão']::text[], 380),
  ('224', 'kit-pente-escova-madeira-cerdas-naturais-224', 'Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kit Pente e Escova de Madeira com Cerdas Naturais', 79.9, null, 69.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.27.35.jpeg']::text[], null, null, true, false, '{}'::text[], 'Kit de cuidados delicados para os cabelos do bebê, com pente e escova em madeira natural e cerdas naturais.

Composição do Kit
• 1 pente de madeira
• 1 escova de madeira com cerdas naturais

Especificações
- Medidas aproximadas: 4 x 15 cm
- Material: madeira natural
- Escova com cerdas naturais, delicadas e ideais para os primeiros cuidados com o bebê.

Observação
Por ser produzido com madeira natural, cada peça é única. Pequenas variações na tonalidade e nos veios da madeira são características do material e não representam defeito no produto.', array['Feito à mão']::text[], 390),
  ('210', 'chupeta-borracha-natural-argolinha-brilha-escuro', 'Chupeta de Borracha Natural Argolinha BRILHA NO ESCURO!', 'Chupeta de Borracha Natural com Argolinha que Brilha no Escuro', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 16.18.18.jpeg']::text[], null, null, true, false, array['6-18 meses']::text[], 'A Chupeta de Borracha Natural com Argolinha que Brilha no Escuro da Divina Baby foi desenvolvida para proporcionar conforto, segurança e praticidade para bebês acima de 6 meses.

Seu bico em borracha natural (látex) é macio, flexível e confortável, enquanto a argolinha fluorescente facilita encontrar a chupeta durante a noite.

Especificações:
- Bico em borracha natural (látex), macio e flexível.
- Indicada para bebês acima de 6 meses.
- Argolinha que brilha no escuro.
- Livre de BPA.
- Possui aberturas de ventilação no escudo, auxiliando na circulação de ar e proporcionando mais conforto para a pele delicada do bebê.

Por que escolher a chupeta de borracha natural?
A borracha natural proporciona uma sensação macia e aconchegante, ajudando a acalmar o bebê. Além disso, a argolinha que brilha no escuro oferece mais praticidade para os pais durante a noite, permitindo localizar a chupeta com mais facilidade sem precisar acender as luzes.

✨ Consulte a disponibilidade de cores e modelos antes de finalizar seu pedido', array['Frete grátis']::text[], 400),
  ('211', 'chupeta-borracha-natural-argolinha-brilha-escuro-211', 'Chupeta de Borracha Natural Argolinha BRILHA NO ESCURO!', 'Chupeta de Borracha Natural com Argolinha que Brilha no Escuro', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 16.18.18 (1).jpeg']::text[], null, null, true, false, array['6-18 meses']::text[], 'A Chupeta de Borracha Natural com Argolinha que Brilha no Escuro da Divina Baby foi desenvolvida para proporcionar conforto, segurança e praticidade para bebês acima de 6 meses.

Seu bico em borracha natural (látex) é macio, flexível e confortável, enquanto a argolinha fluorescente facilita encontrar a chupeta durante a noite.

Especificações:
- Bico em borracha natural (látex), macio e flexível.
- Indicada para bebês acima de 6 meses.
- Argolinha que brilha no escuro.
- Livre de BPA.
- Possui aberturas de ventilação no escudo, auxiliando na circulação de ar e proporcionando mais conforto para a pele delicada do bebê.

Por que escolher a chupeta de borracha natural?
A borracha natural proporciona uma sensação macia e aconchegante, ajudando a acalmar o bebê. Além disso, a argolinha que brilha no escuro oferece mais praticidade para os pais durante a noite, permitindo localizar a chupeta com mais facilidade sem precisar acender as luzes.

✨ Consulte a disponibilidade de cores e modelos antes de finalizar seu pedido', array['Frete grátis']::text[], 410),
  ('267', 'chupeta-borracha-natural-modelo-flor', 'Chupeta de Borracha Natural Modelo Flor', 'Chupeta de Borracha Natural Modelo Flor', 89.9, null, 79.9, 2, 3, 33.3, array['/galeria-2.jpeg']::text[], null, null, true, false, array['0-12 meses']::text[], 'A Chupeta de Borracha Natural Modelo Flor da Divina Baby foi desenvolvida para proporcionar conforto, segurança e tranquilidade ao seu bebê desde o nascimento até os 12 meses. Seu bico em borracha natural (látex) é macio, flexível e se adapta suavemente às necessidades dos pequenos.

Especificações:
- Bico em borracha natural (látex), macio e flexível.
- Indicada para bebês de 0 a 12 meses.
- Modelo Flor.
- Livre de BPA.
- Possui aberturas de ventilação no escudo, auxiliando na circulação de ar e proporcionando mais conforto para a pele delicada do bebê.

Por que escolher a chupeta de borracha natural?
A borracha natural oferece uma sensação mais macia e aconchegante, sendo uma excelente opção para acalmar o bebê. Seu formato clássico une tradição, qualidade e conforto, tornando essa chupeta uma escolha especial para o enxoval.

✨ Consulte a disponibilidade de cores e modelos antes de finalizar seu pedido', array['Frete grátis']::text[], 420),
  ('200', 'chupeta-borracha-natural-0-6-meses', 'Chupetas de Borracha Natural para Bebês de 0 a 6 Meses', 'Chupetas de Borracha Natural para Bebês de 0 a 6 Meses', 79.9, null, 69.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.15.01.jpeg']::text[], null, null, true, false, array['0-6 meses']::text[], 'A Chupeta de Borracha Natural da Divina Baby foi desenvolvida para proporcionar conforto, segurança e tranquilidade ao seu bebê desde o nascimento até os 6 meses. Seu bico em látex (borracha natural) é macio, flexível e se adapta suavemente às necessidades dos pequenos.

Especificações:
- Bico em borracha natural (látex), macio e flexível.
- Indicada para bebês de 0 a 6 meses.
- Design clássico e delicado.
- Livre de BPA.
- Possui aberturas de ventilação no escudo, auxiliando na circulação de ar e proporcionando mais conforto para a pele do bebê.

Por que escolher a chupeta de borracha natural?
A borracha natural oferece uma sensação mais macia e aconchegante, sendo uma excelente opção para acalmar o bebê. Seu formato clássico une tradição, qualidade e conforto, tornando essa chupeta uma escolha especial para o enxoval.

✨ Consulte a disponibilidade de cores e modelos antes de finalizar seu pedido', array['Frete grátis']::text[], 430),
  ('201', 'chupeta-borracha-natural-0-6-meses-201', 'Chupetas de Borracha Natural para Bebês de 0 a 6 Meses', 'Chupetas de Borracha Natural para Bebês de 0 a 6 Meses', 79.9, null, 69.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.15.01 (1).jpeg']::text[], null, null, true, false, array['0-6 meses']::text[], 'A Chupeta de Borracha Natural da Divina Baby foi desenvolvida para proporcionar conforto, segurança e tranquilidade ao seu bebê desde o nascimento até os 6 meses. Seu bico em látex (borracha natural) é macio, flexível e se adapta suavemente às necessidades dos pequenos.

Especificações:
- Bico em borracha natural (látex), macio e flexível.
- Indicada para bebês de 0 a 6 meses.
- Design clássico e delicado.
- Livre de BPA.
- Possui aberturas de ventilação no escudo, auxiliando na circulação de ar e proporcionando mais conforto para a pele do bebê.

Por que escolher a chupeta de borracha natural?
A borracha natural oferece uma sensação mais macia e aconchegante, sendo uma excelente opção para acalmar o bebê. Seu formato clássico une tradição, qualidade e conforto, tornando essa chupeta uma escolha especial para o enxoval.

✨ Consulte a disponibilidade de cores e modelos antes de finalizar seu pedido', array['Frete grátis']::text[], 440),
  ('72', 'kit-prendedor-nome-pente-escova-madeira', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.22.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 450),
  ('73', 'kit-prendedor-nome-pente-escova-madeira-73', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.23.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 460),
  ('74', 'kit-prendedor-nome-pente-escova-madeira-74', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.24.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 470),
  ('75', 'kit-prendedor-nome-pente-escova-madeira-75', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.25.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 480),
  ('76', 'kit-prendedor-nome-pente-escova-madeira-76', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.25 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 490),
  ('77', 'kit-prendedor-nome-pente-escova-madeira-77', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.26.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 500),
  ('78', 'kit-prendedor-nome-pente-escova-madeira-78', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.27.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 510),
  ('79', 'kit-prendedor-nome-pente-escova-madeira-79', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.28.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 520),
  ('80', 'kit-prendedor-nome-pente-escova-madeira-80', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.30.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 530),
  ('81', 'kit-prendedor-nome-pente-escova-madeira-81', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.31.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 540),
  ('82', 'kit-prendedor-nome-pente-escova-madeira-82', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.34.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 550),
  ('83', 'kit-prendedor-nome-pente-escova-madeira-83', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.35.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 560),
  ('84', 'kit-prendedor-nome-pente-escova-madeira-84', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.36.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 570),
  ('85', 'kit-prendedor-nome-pente-escova-madeira-85', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.37.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 580),
  ('86', 'kit-prendedor-nome-pente-escova-madeira-86', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.37 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 590),
  ('87', 'kit-prendedor-nome-pente-escova-madeira-87', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.38.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 600),
  ('88', 'kit-prendedor-nome-pente-escova-madeira-88', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.38 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 610),
  ('89', 'kit-prendedor-nome-pente-escova-madeira-89', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.41.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 620),
  ('90', 'kit-prendedor-nome-pente-escova-madeira-90', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.41 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 630),
  ('91', 'kit-prendedor-nome-pente-escova-madeira-91', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.41 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 640),
  ('92', 'kit-prendedor-nome-pente-escova-madeira-92', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.42.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 650),
  ('93', 'kit-prendedor-nome-pente-escova-madeira-93', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.42 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 660),
  ('94', 'kit-prendedor-nome-pente-escova-madeira-94', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.43.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 670),
  ('95', 'kit-prendedor-nome-pente-escova-madeira-95', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.43 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 680),
  ('96', 'kit-prendedor-nome-pente-escova-madeira-96', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.44.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 690),
  ('97', 'kit-prendedor-nome-pente-escova-madeira-97', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.44 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 700),
  ('98', 'kit-prendedor-nome-pente-escova-madeira-98', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.44 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 710),
  ('99', 'kit-prendedor-nome-pente-escova-madeira-99', 'Kit Prendedor de Chupeta Personalizado com Nome + Kit Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.41.45.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta Personalizado mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia. Produzido com silicone atóxico, livre de BPA, e personalizado com o nome do bebê, ele une praticidade, segurança e um toque exclusivo.

O Kit Pente e Escova de Madeira completa esse momento de cuidado. A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade, tornando a rotina de higiene ainda mais especial.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe. Basta escolher a cor de sua preferência e informar o nome do bebê.

🤍 Nós produziremos tudo com muito carinho para criar uma peça exclusiva, feita especialmente para a sua família.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 720),
  ('43', 'prendedor-chupeta-personalizado-nome-silicone-43', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.37.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 730),
  ('44', 'prendedor-chupeta-personalizado-nome-silicone-44', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.39.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 740),
  ('45', 'prendedor-chupeta-personalizado-nome-silicone-45', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.40.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 750),
  ('46', 'prendedor-chupeta-personalizado-nome-silicone-46', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.43.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 760),
  ('47', 'prendedor-chupeta-personalizado-nome-silicone-47', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.44.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 770),
  ('48', 'prendedor-chupeta-personalizado-nome-silicone-48', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.48.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 780),
  ('49', 'prendedor-chupeta-personalizado-nome-silicone-49', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.50.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 790),
  ('50', 'prendedor-chupeta-personalizado-nome-silicone-50', '2 Prendedores Personalizados com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 179.8, null, 159.8, 2, 4, 49.95, array['/WhatsApp Image 2026-07-10 at 15.28.51.jpeg']::text[], null, null, true, true, '{}'::text[], 'Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.', array['Feito à mão', 'Personalizável']::text[], 800),
  ('51', 'prendedor-chupeta-personalizado-nome-silicone-51', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.52.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 810),
  ('52', 'prendedor-chupeta-personalizado-nome-silicone-52', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.54.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 820),
  ('53', 'prendedor-chupeta-personalizado-nome-silicone-53', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.55.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 830),
  ('54', 'prendedor-chupeta-personalizado-nome-silicone-54', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.56.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 840),
  ('55', 'prendedor-chupeta-personalizado-nome-silicone-55', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.56 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 850),
  ('56', 'prendedor-chupeta-personalizado-nome-silicone-56', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.56 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 860),
  ('57', 'prendedor-chupeta-personalizado-nome-silicone-57', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.57.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 870),
  ('58', 'prendedor-chupeta-personalizado-nome-silicone-58', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.58.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 880),
  ('59', 'prendedor-chupeta-personalizado-nome-silicone-59', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.28.58 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 890),
  ('60', 'prendedor-chupeta-personalizado-nome-silicone-60', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.29.03.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 900),
  ('61', 'prendedor-chupeta-personalizado-nome-silicone-61', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.29.03 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 910),
  ('62', 'prendedor-chupeta-personalizado-nome-silicone-62', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.29.07.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 920),
  ('63', 'prendedor-chupeta-personalizado-nome-silicone-63', 'Kit Prendedor Personalizado com Nome em Silicone + Pente e Escova de Madeira com Cerdas Naturais', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-10 at 15.29.07 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Prendedor de chupeta personalizado com o nome do bebê em contas de silicone atóxico, feito à mão para compor o enxoval com exclusividade.', array['Feito à mão', 'Personalizável']::text[], 930),
  ('64', 'prendedor-chupeta-personalizado-nome-silicone-64', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.29.08.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 940),
  ('65', 'prendedor-chupeta-personalizado-nome-silicone-65', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.29.08 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 950),
  ('66', 'prendedor-chupeta-personalizado-nome-silicone-66', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.29.08 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 960),
  ('67', 'prendedor-chupeta-personalizado-nome-silicone-67', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.29.08 (3).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 970),
  ('68', 'prendedor-chupeta-personalizado-nome-silicone-68', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.29.09.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 980),
  ('69', 'prendedor-chupeta-personalizado-nome-silicone-69', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.29.09 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 990),
  ('70', 'prendedor-chupeta-personalizado-nome-silicone-70', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.29.09 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1000),
  ('71', 'prendedor-chupeta-personalizado-nome-silicone-71', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.29.10.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1010),
  ('2', 'prendedor-chupeta-nome', 'Prendedor Personalizado com nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.22.24.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Frete grátis', 'Personalizável']::text[], 1020),
  ('1', 'prendedor-chupeta-classico', 'Prendedor Personalizado com nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.22.24 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1030),
  ('11', 'prendedor-personalizado-pronto-entrega', 'Prendedor Personalizado com nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.22.24 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1040),
  ('12', 'kit-presente-personalizado', 'Prendedor Personalizado com nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.22.24 (3).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1050),
  ('13', 'prendedor-chupeta-ursinho-azul', '2 Prendedores Personalizados com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 179.8, null, 159.8, 2, 4, 49.95, array['/WhatsApp Image 2026-07-10 at 15.22.25.jpeg']::text[], null, null, true, true, '{}'::text[], 'Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.', array['Feito à mão', 'Personalizável']::text[], 1060),
  ('16', 'prendedor-chupeta-coroa-azul', '2 Prendedores personalizados com nome em silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 179.8, null, 159.8, 2, 4, 49.95, array['/WhatsApp Image 2026-07-10 at 15.22.25 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.', array['Feito à mão', 'Personalizável']::text[], 1070),
  ('17', 'prendedor-chupeta-borboleta-lilas', 'Prendedor Personalizado com nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.22.20.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1080),
  ('18', 'prendedor-chupeta-laco-rosa', 'Prendedor Personalizado com nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.22.20 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1090),
  ('21', 'prendedor-chupeta-cerejinha', 'Prendedor Personalizado com nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.22.21.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1100),
  ('22', 'prendedor-chupeta-borboleta-coracao', 'Prendedor Personalizado com nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.22.21 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1110),
  ('23', 'prendedor-chupeta-ursinho-verde-bebe', 'Prendedor Personalizado com nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.22.21 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1120),
  ('26', 'prendedor-chupeta-balao-cereja', '3 Prendedores Personalizados com Nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 269.7, null, 239.7, 2, 4, 72.4, array['/WhatsApp Image 2026-07-10 at 15.22.22.jpeg']::text[], null, null, true, true, '{}'::text[], 'Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.', array['Feito à mão', 'Personalizável']::text[], 1130),
  ('29', 'prendedor-chupeta-arco-iris-rosa', 'Prendedor Personalizado com nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.22.22 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1140),
  ('31', 'prendedor-chupeta-ursinho-verde-sage', 'Prendedor Personalizado com nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.22.22 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1150),
  ('32', 'prendedor-chupeta-passarinho-verde', '2 Prendedores personalizados com nome em silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 179.8, null, 159.8, 2, 4, 49.95, array['/WhatsApp Image 2026-07-10 at 15.22.22 (3).jpeg']::text[], null, null, true, true, '{}'::text[], 'Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.', array['Feito à mão', 'Personalizável']::text[], 1160),
  ('36', 'prendedor-chupeta-laco-rose', '2 Prendedores personalizados com nome em silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 179.8, null, 159.8, 2, 4, 49.95, array['/WhatsApp Image 2026-07-10 at 15.22.23.jpeg']::text[], null, null, true, true, '{}'::text[], 'Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.', array['Feito à mão', 'Personalizável']::text[], 1170),
  ('38', 'prendedor-chupeta-ovelhinha', 'Prendedor Personalizado com nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.22.23 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1180),
  ('40', 'prendedor-chupeta-arco-iris', '2 Prendedores personalizados com nome em silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 179.8, null, 159.8, 2, 4, 49.95, array['/WhatsApp Image 2026-07-10 at 15.22.23 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.', array['Feito à mão', 'Personalizável']::text[], 1190),
  ('41', 'prendedor-chupeta-margarida-mostarda', 'Prendedor Personalizado com nome em Silicone', 'Prendedor de Chupeta Personalizado com Nome em Silicone', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-10 at 15.22.23 (3).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1200),
  ('14', 'kit-presente-borboleta-rosa', '2 Prendedores Personalizados com Nome em Silicone + Pente e Escova de Madeira com Cerdas Naturais', 'Kits', 259.7, null, 229.7, 2, 4, 69.9, array['/WhatsApp Image 2026-07-08 at 19.05.43.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Kit Presente Personalizado Divina Baby reúne acessórios essenciais para o dia a dia do bebê, combinando praticidade, segurança e um toque único de personalização.

Cada peça é produzida artesanalmente e personalizada com o nome do bebê, tornando o kit uma lembrança especial para toda a família.

O kit contém
- 2 Prendedores de Chupeta Personalizados em Silicone
- 1 Kit Escova e Pente de Madeira (2 peças)
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Os acessórios acompanham saquinhos de algodão para armazenamento e proteção.

Basta escolher a cor desejada e informar o nome do bebê. Nós cuidaremos de cada detalhe para criar um kit exclusivo, feito com muito carinho, segurança e qualidade.

Um presente delicado e cheio de significado, perfeito para gestantes, recém-nascidos, chás de bebê e também para presentear toda a família com uma lembrança personalizada.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1210),
  ('15', 'kit-presente-ursinho-verde', 'Kit Prendedor personalizado com nome em silicone + pente e escova de madeira com cerdas naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-08 at 19.05.44.jpeg']::text[], null, null, true, true, '{}'::text[], 'Kit presente com prendedor de chupeta personalizado com conta de silicone de ursinho, pente e escova de madeira, embalado em caixa especial com cartão de agradecimento.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1220),
  ('19', 'kit-presente-ursinho-bege', 'Prendedor Personalizado com nome em Silicone', 'Kits', 89.9, null, 79.9, 2, 3, 33.3, array['/WhatsApp Image 2026-07-08 at 19.05.47 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Personalizado da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente e personalizado com o nome do bebê, tornando cada peça única e cheia de significado.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- 1 bolinha de madeira natural.
- Clipe em madeira com presilha metálica.
- Cordão de nylon resistente.
A chupeta não acompanha o produto.

Medidas
Comprimento aproximado entre 29 e 35 cm, variando conforme a quantidade de letras do nome do bebê. Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Personalização exclusiva com o nome do bebê.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?
Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Como personalizar?
Após finalizar a compra, informe o nome do bebê no campo de personalização. Caso deseje escolher as cores, entre em contato conosco pelo WhatsApp para montarmos o prendedor do jeitinho que você imaginou.

Cuidados
- Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.
- Seque completamente antes de guardar.
- Não deixe o clipe de madeira de molho em água.
- Antes de cada uso, verifique se o produto está em perfeitas condições.
- Utilize sempre sob a supervisão de um adulto.
- Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1230),
  ('20', 'kit-presente-bola-futebol', 'Kit Prendedor personalizado com nome em silicone + pente e escova de madeira com cerdas naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-08 at 19.05.47 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'Kit presente com prendedor de chupeta personalizado com conta de silicone de bola de futebol, pente e escova de madeira, embalado em caixa especial.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1240),
  ('24', 'kit-presente-florzinha', 'Kit mordedor personalizado com nome em silicone + pente e escova de madeira com cerdas naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-08 at 19.05.53.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Kit Presente Personalizado Divina Baby foi pensado para acompanhar os primeiros momentos do bebê com carinho, segurança e muito amor.

Cada peça é produzida artesanalmente e personalizada com o nome do bebê, tornando o kit uma lembrança única e especial para toda a família.

O kit contém
- 1 Mordedor Sensorial Personalizado
- 1 Kit Escova e Pente de Madeira (2 peças)
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Os acessórios acompanham saquinhos de algodão para armazenamento e proteção.

Basta escolher a cor desejada e informar o nome do bebê. Nós cuidaremos de cada detalhe para criar um kit exclusivo, feito com muito carinho, segurança e qualidade.

Um presente delicado e cheio de significado, perfeito para gestantes, recém-nascidos e chás de bebê.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1250),
  ('27', 'kit-presente-classico-rosa', 'Kit Prendedor personalizado com nome em silicone + pente e escova de madeira com cerdas naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-08 at 19.05.55 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Kit presente com prendedor de chupeta personalizado em tons rosa, pente e escova de madeira, embalado em caixa especial com cartão de agradecimento.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1260),
  ('28', 'kit-presente-borboleta-coral', 'Kit completo 3 itens', 'Kits', 259.7, null, 229.7, 2, 4, 69.9, array['/WhatsApp Image 2026-07-08 at 19.05.55 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'Kit presente com prendedor de chupeta personalizado com conta de silicone de borboleta coral, acompanhado de chupeta, pente e escova de madeira.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1270),
  ('30', 'kit-presente-arco-iris-ursinho', 'Kit Prendedor personalizado com nome em silicone + pente e escova de madeira com cerdas naturais', 'Kits', 169.8, null, 149.8, 2, 4, 47.45, array['/WhatsApp Image 2026-07-08 at 19.05.59 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Kit presente com prendedor de chupeta em formato de leão e conta de silicone de arco-íris, pente e escova de madeira, tudo em caixa especial.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1280),
  ('33', 'kit-presente-ursinho-rosa', 'Presente Personalizado Divina Baby – Kit Essencial', 'Kits', 249.7, null, 219.7, 2, 4, 67.5, array['/WhatsApp Image 2026-07-08 at 19.06.00.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Kit Presente Personalizado Divina Baby reúne itens indispensáveis para os primeiros meses do bebê, unindo segurança, delicadeza e um toque único de personalização.

Cada peça é produzida artesanalmente e personalizada com o nome do bebê, tornando o kit uma lembrança especial para toda a família.

O kit contém:
1 Prendedor de Chupeta Personalizado;
1 Chupeta de Borracha Natural;
1 Kit Escova e Pente de Madeira (2 peças):
1 Escova de Madeira com Cerdas Naturais;
1 Pente de Madeira.

Os acessórios acompanham saquinhos de algodão para armazenamento e proteção.

Basta escolher a cor desejada e informar o nome do bebê. Nós cuidaremos de cada detalhe para criar um kit exclusivo, feito com muito carinho, segurança e qualidade.

Um presente perfeito para gestantes, recém-nascidos e chás de bebê, pensado para tornar esse momento ainda mais especial.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1290),
  ('37', 'kit-presente-ursinho-lilas', 'Presente Personalizado Divina Baby – Kit Essencial', 'Kits', 249.7, null, 219.7, 2, 4, 67.5, array['/WhatsApp Image 2026-07-08 at 19.06.02 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Kit Presente Personalizado Divina Baby reúne itens indispensáveis para os primeiros meses do bebê, unindo segurança, delicadeza e um toque único de personalização.

Cada peça é produzida artesanalmente e personalizada com o nome do bebê, tornando o kit uma lembrança especial para toda a família.

O kit contém:
1 Prendedor de Chupeta Personalizado;
1 Chupeta de Borracha Natural;
1 Kit Escova e Pente de Madeira (2 peças):
1 Escova de Madeira com Cerdas Naturais;
1 Pente de Madeira.

Os acessórios acompanham saquinhos de algodão para armazenamento e proteção.

Basta escolher a cor desejada e informar o nome do bebê. Nós cuidaremos de cada detalhe para criar um kit exclusivo, feito com muito carinho, segurança e qualidade.

Um presente perfeito para gestantes, recém-nascidos e chás de bebê, pensado para tornar esse momento ainda mais especial.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1300),
  ('39', 'kit-presente-florzinha-rosa', 'Kit Personalizado Divina Baby 5 itens', 'Kits', 339.6, null, 299.6, 2, 4, 89.9, array['/WhatsApp Image 2026-07-08 at 19.06.03 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Kit Presente Personalizado Divina Baby reúne os itens essenciais para o dia a dia do bebê em um presente único, delicado e cheio de significado.

Cada peça é produzida artesanalmente e personalizada com o nome do bebê, tornando o kit uma lembrança especial para toda a família.

O kit contém:
1 Prendedor de Chupeta Personalizado;
1 Chupeta de Borracha Natural;
1 Mordedor Sensorial;
1 Kit Escova e Pente de Madeira (2 peças):
1 Escova de Madeira com Cerdas Naturais;
1 Pente de Madeira.

Os acessórios acompanham saquinhos de algodão para armazenamento e proteção.

Basta escolher a cor desejada e informar o nome do bebê. Nós cuidaremos de cada detalhe para criar um kit exclusivo, com muito carinho, segurança e qualidade.

Um presente perfeito para gestantes, recém-nascidos e chás de bebê, feito para eternizar momentos especiais.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1310),
  ('4', 'chaveiro-nome-borla', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/galeria-11.jpeg']::text[], null, null, true, true, '{}'::text[], 'Chaveiro personalizado com o nome em silicone.

O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Personalizável']::text[], 1320),
  ('101', 'chaveiro-personalizado-nome-silicone-101', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.12.08.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1330),
  ('102', 'chaveiro-personalizado-nome-silicone-102', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.12.08 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1340),
  ('103', 'chaveiro-personalizado-nome-silicone-103', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.12.08 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1350),
  ('104', 'chaveiro-personalizado-nome-silicone-104', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.12.08 (3).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1360),
  ('105', 'chaveiro-personalizado-nome-silicone-105', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.08.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1370),
  ('106', 'chaveiro-personalizado-nome-silicone-106', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.09.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1380),
  ('107', 'chaveiro-personalizado-nome-silicone-107', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.09 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1390),
  ('108', 'chaveiro-personalizado-nome-silicone-108', 'Chaveiro personalizado com nome em silicone + pente e escova de madeira com cerdas naturais', 'Chaveiros', 149.8, null, 129.8, 2, 4, 42.5, array['/WhatsApp Image 2026-07-10 at 16.10.09 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1400),
  ('109', 'chaveiro-personalizado-nome-silicone-109', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.13.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1410),
  ('110', 'chaveiro-personalizado-nome-silicone-110', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.14.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1420),
  ('111', 'chaveiro-personalizado-nome-silicone-111', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.14 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1430),
  ('112', 'chaveiro-personalizado-nome-silicone-112', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.14 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1440),
  ('113', 'chaveiro-personalizado-nome-silicone-113', 'Prendedor personalizado com nome em silicone + 2 Chaveiros personalizados com nome em silicone', 'Chaveiros', 229.7, null, 199.7, 2, 4, 62, array['/WhatsApp Image 2026-07-10 at 16.10.17.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1450),
  ('114', 'chaveiro-personalizado-nome-silicone-114', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.17 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1460),
  ('115', 'chaveiro-personalizado-nome-silicone-115', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.18.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1470),
  ('116', 'chaveiro-personalizado-nome-silicone-116', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.35.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1480),
  ('117', 'chaveiro-personalizado-nome-silicone-117', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.36.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1490),
  ('119', 'chaveiro-personalizado-nome-silicone-119', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.36 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1500),
  ('120', 'chaveiro-personalizado-nome-silicone-120', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.36 (3).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1510),
  ('121', 'chaveiro-personalizado-nome-silicone-121', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.37.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1520),
  ('122', 'chaveiro-personalizado-nome-silicone-122', '2 Chaveiros personalizados com nome em silicone', 'Chaveiros', 139.8, null, 119.8, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.37 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1530),
  ('123', 'chaveiro-personalizado-nome-silicone-123', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.37 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1540),
  ('124', 'chaveiro-personalizado-nome-silicone-124', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.38.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1550),
  ('125', 'chaveiro-personalizado-nome-silicone-125', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.38 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1560),
  ('126', 'chaveiro-personalizado-nome-silicone-126', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.38 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1570),
  ('127', 'chaveiro-personalizado-nome-silicone-127', 'Chaveiro Personalizado em Silicone', 'Chaveiros', 69.9, null, 59.9, 2, null, null, array['/WhatsApp Image 2026-07-10 at 16.10.40.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Chaveiro Personalizado da Divina Baby é produzido artesanalmente e personalizado com o nome de sua escolha, tornando cada peça única e especial.

Perfeito para presentear ou para identificar chaves, mochilas, bolsas e estojos com muito charme e delicadeza.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade e durabilidade.
- Bolinhas e letras em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
- Argola metálica para chaveiro.
- Cordão de nylon resistente.

Por que escolher a Divina Baby?
🤍 Produção artesanal, feita com carinho.
🤍 Personalização exclusiva com o nome de sua escolha.
🤍 Materiais de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.

Como personalizar
Após finalizar a compra, informe o nome desejado no campo de personalização. Caso queira escolher as cores, entre em contato conosco pelo WhatsApp para criarmos seu chaveiro do jeitinho que você imaginou.

Cuidados
- Limpe com um pano macio e úmido ou água e sabão neutro.
- Evite contato com produtos químicos e objetos pontiagudos.
- Guarde em local seco para maior durabilidade.

Por se tratar de um produto artesanal, pequenas variações nas cores e na disposição das peças podem ocorrer, tornando cada chaveiro exclusivo.', array['Feito à mão', 'Personalizável']::text[], 1580),
  ('10', 'mordedor-nome', 'Kit completo 5 itens', 'Mordedores', 399.5, null, 349.5, 2, 4, 104.8, array['/galeria-14.jpeg']::text[], null, null, true, true, '{}'::text[], 'Mordedor com o nome do bebê em contas de silicone, uma peça sensorial e decorativa que também estimula a curiosidade.', array['Feito à mão', 'Personalizável']::text[], 1590),
  ('34', 'mordedor-elefante', 'Kit completo 4 itens', 'Mordedores', 259.7, null, 229.7, 2, 4, 69.9, array['/WhatsApp Image 2026-07-08 at 19.06.01 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Mordedor sensorial em madeira no formato de elefante, com contas de silicone personalizadas com o nome do bebê. Indicado para a fase da dentição.', array['Feito à mão', 'Personalizável']::text[], 1600),
  ('268', 'kit-prendedor-sem-personalizacao-chupeta-pente-escova', 'Kit sem personalização 3 itens', 'Kits', 239.7, null, 209.7, 2, 4, 65, array['/Prendedor sem Personalização em Silicone + Chupeta de Borracha Natural + Kit de Pente e Escova de Madeira com Cerdas Naturais.jpeg']::text[], null, null, true, false, '{}'::text[], 'Kit completo com prendedor de chupeta em silicone sem personalização, chupeta de borracha natural e kit pente e escova de madeira com cerdas naturais, tudo embalado com carinho.', array['Feito à mão', 'Frete grátis']::text[], 1610),
  ('269', 'kit-sem-personalizacao-3-itens', 'Kit completo 4 itens', 'Kits', 249.7, null, 219.7, 2, 4, 67.5, array['/WhatsApp Image 2026-07-13 at 15.43.03.jpeg']::text[], null, null, true, true, '{}'::text[], 'Kit completo com prendedor de chupeta em silicone sem personalização, chupeta de borracha natural e kit pente e escova de madeira com cerdas naturais, tudo embalado com carinho.', array['Feito à mão', 'Frete grátis']::text[], 1620),
  ('270', 'kit-completo-4-itens-pedro', 'Kit Personalizado Divina Baby 5 itens', 'Kits', 339.6, null, 299.6, 2, 4, 89.9, array['/WhatsApp Image 2026-07-13 at 15.45.11.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Kit Presente Personalizado Divina Baby reúne os itens essenciais para o dia a dia do bebê em um presente único, delicado e cheio de significado.

Cada peça é produzida artesanalmente e personalizada com o nome do bebê, tornando o kit uma lembrança especial para toda a família.

O kit contém:
1 Prendedor de Chupeta Personalizado;
1 Chupeta de Borracha Natural;
1 Mordedor Sensorial;
1 Kit Escova e Pente de Madeira (2 peças):
1 Escova de Madeira com Cerdas Naturais;
1 Pente de Madeira.

Os acessórios acompanham saquinhos de algodão para armazenamento e proteção.

Basta escolher a cor desejada e informar o nome do bebê. Nós cuidaremos de cada detalhe para criar um kit exclusivo, com muito carinho, segurança e qualidade.

Um presente perfeito para gestantes, recém-nascidos e chás de bebê, feito para eternizar momentos especiais.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1630),
  ('271', 'kit-completo-4-itens-bella', 'Kit Personalizado Divina Baby 5 itens', 'Kits', 339.6, null, 299.6, 2, 4, 89.9, array['/WhatsApp Image 2026-07-13 at 15.46.31.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Kit Presente Personalizado Divina Baby reúne os itens essenciais para o dia a dia do bebê em um presente único, delicado e cheio de significado.

Cada peça é produzida artesanalmente e personalizada com o nome do bebê, tornando o kit uma lembrança especial para toda a família.

O kit contém:
1 Prendedor de Chupeta Personalizado;
1 Chupeta de Borracha Natural;
1 Mordedor Sensorial;
1 Kit Escova e Pente de Madeira (2 peças):
1 Escova de Madeira com Cerdas Naturais;
1 Pente de Madeira.

Os acessórios acompanham saquinhos de algodão para armazenamento e proteção.

Basta escolher a cor desejada e informar o nome do bebê. Nós cuidaremos de cada detalhe para criar um kit exclusivo, com muito carinho, segurança e qualidade.

Um presente perfeito para gestantes, recém-nascidos e chás de bebê, feito para eternizar momentos especiais.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1640),
  ('272', 'kit-completo-3-itens-vitor', 'Presente Personalizado Divina Baby – Kit Essencial', 'Kits', 249.7, null, 219.7, 2, 4, 67.5, array['/WhatsApp Image 2026-07-13 at 15.48.08.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Kit Presente Personalizado Divina Baby reúne itens indispensáveis para os primeiros meses do bebê, unindo segurança, delicadeza e um toque único de personalização.

Cada peça é produzida artesanalmente e personalizada com o nome do bebê, tornando o kit uma lembrança especial para toda a família.

O kit contém:
1 Prendedor de Chupeta Personalizado;
1 Chupeta de Borracha Natural;
1 Kit Escova e Pente de Madeira (2 peças):
1 Escova de Madeira com Cerdas Naturais;
1 Pente de Madeira.

Os acessórios acompanham saquinhos de algodão para armazenamento e proteção.

Basta escolher a cor desejada e informar o nome do bebê. Nós cuidaremos de cada detalhe para criar um kit exclusivo, feito com muito carinho, segurança e qualidade.

Um presente perfeito para gestantes, recém-nascidos e chás de bebê, pensado para tornar esse momento ainda mais especial.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1650),
  ('273', 'kit-completo-3-itens-gabriel', 'Presente Personalizado Divina Baby – Kit Essencial', 'Kits', 249.7, null, 219.7, 2, 4, 67.5, array['/WhatsApp Image 2026-07-13 at 15.48.35.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Kit Presente Personalizado Divina Baby reúne itens indispensáveis para os primeiros meses do bebê, unindo segurança, delicadeza e um toque único de personalização.

Cada peça é produzida artesanalmente e personalizada com o nome do bebê, tornando o kit uma lembrança especial para toda a família.

O kit contém:
1 Prendedor de Chupeta Personalizado;
1 Chupeta de Borracha Natural;
1 Kit Escova e Pente de Madeira (2 peças):
1 Escova de Madeira com Cerdas Naturais;
1 Pente de Madeira.

Os acessórios acompanham saquinhos de algodão para armazenamento e proteção.

Basta escolher a cor desejada e informar o nome do bebê. Nós cuidaremos de cada detalhe para criar um kit exclusivo, feito com muito carinho, segurança e qualidade.

Um presente perfeito para gestantes, recém-nascidos e chás de bebê, pensado para tornar esse momento ainda mais especial.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1660),
  ('274', 'kit-completo-5-itens-felipe', 'Kit Completo Personalizado com Nome em Silicone - 6 Itens', 'Kits', 429.7, null, 379.5, 2, 4, 122, array['/WhatsApp Image 2026-07-13 at 15.52.10.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Kit Presente Personalizado Divina Baby reúne os principais acessórios para o dia a dia do bebê, unindo segurança, qualidade e um toque único de personalização.

O kit contém
- 1 Prendedor de Chupeta Personalizado em Silicone
- 1 Mordedor Sensorial Personalizado em Silicone
- 1 Chupeta de Borracha Natural com Argolinha que Brilha no Escuro
- 1 Chupeta de Borracha Natural
- 1 Kit Escova e Pente de Madeira (2 peças)
- 1 Escova de Madeira com Cerdas Naturais
- 1 Pente de Madeira

Os acessórios acompanham saquinhos de algodão para armazenamento e proteção.

Basta escolher a cor desejada e informar o nome do bebê. Produzimos cada detalhe com muito carinho para criar um kit exclusivo, perfeito para presentear ou montar um enxoval cheio de amor.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1670),
  ('275', 'kit-completo-4-itens-eliza', 'Kit Personalizado Divina Baby 5 itens', 'Kits', 349.6, null, 309.6, 2, 4, 92.4, array['/WhatsApp Image 2026-07-13 at 15.55.56.jpeg']::text[], null, null, true, true, '{}'::text[], 'Kit completo para presentear: prendedor de chupeta personalizado com o nome do bebê, mordedor sensorial personalizado, pente e escova de madeira, tudo embalado com carinho.', array['Feito à mão', 'Personalizável', 'Frete grátis']::text[], 1680),
  ('276', 'prendedor-de-chupeta-sem-personalizacao-silicone', 'Prendedor de Chupeta Sem Personalização em Silicone', 'Prendedor de Chupeta Sem Personalização em Silicone', 79.9, null, 69.9, 2, 2, 39.95, array['/WhatsApp Image 2026-07-16 at 16.41.52.jpeg']::text[], null, null, true, true, '{}'::text[], 'O Prendedor de Chupeta Sem Personalização em Silicone da Divina Baby foi desenvolvido para unir segurança, praticidade e delicadeza em um único acessório.

Além de manter a chupeta sempre limpa e ao alcance do bebê, ele ajuda a evitar quedas e perdas durante os passeios e na rotina do dia a dia.

Cada prendedor é produzido artesanalmente, com materiais de alta qualidade e acabamento cuidadoso, tornando cada peça especial.

Composição
Todos os materiais utilizados são cuidadosamente selecionados para oferecer qualidade, segurança e durabilidade.

Bolinhas em silicone atóxico, livres de BPA, PVC, chumbo e ftalatos.
1 bolinha de madeira natural.
Clipe em madeira com presilha metálica.
Cordão de nylon resistente.

A chupeta não acompanha o produto.

Medidas
Comprimento aproximado de 25 cm.
Por se tratar de um produto artesanal, as medidas e o peso podem apresentar pequenas variações.

Por que escolher a Divina Baby?

🤍 Produção artesanal, feita com carinho.
🤍 Materiais seguros e de alta qualidade.
🤍 Design delicado e atemporal.
🤍 Embalagem pronta para presentear.
🤍 Atendimento humanizado do início ao fim.

Como usar?

Prenda uma extremidade do prendedor na chupeta e a outra na roupinha do bebê. Dessa forma, a chupeta permanece sempre ao alcance, ajudando a evitar quedas e perdas durante os passeios e na rotina.

Cuidados
Higienize antes do primeiro uso e sempre que necessário com água morna e sabão neutro.

Seque completamente antes de guardar.
Não deixe o clipe de madeira de molho em água.
Antes de cada uso, verifique se o produto está em perfeitas condições.

Utilize sempre sob a supervisão de um adulto.
Suspenda o uso caso o produto apresente qualquer sinal de desgaste ou dano.

Por se tratar de um produto artesanal, pequenas variações nas cores, nos veios da madeira e na disposição das peças podem ocorrer, tornando cada prendedor exclusivo.', array['Feito à mão']::text[], 1690),
  ('277', 'prendedor-sem-personalizacao-pente-escova-nude', 'Prendedor sem personalização em Silicone + pente e escova de madeira com cerdas naturais', 'Prendedor de Chupeta Sem Personalização em Silicone', 159.8, null, 139.8, 2, 4, 25, array['/WhatsApp Image 2026-07-16 at 17.33.34.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta sem Personalização mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia.

Produzido em silicone atóxico, livre de BPA, une praticidade, segurança e um design delicado.

O Kit Pente e Escova de Madeira completa esse momento de cuidado.
A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade.

O kit contém:
1 Prendedor de Chupeta sem Personalização em Silicone;
1 Kit Pente e Escova de Madeira (2 peças):
1 Escova de Madeira com Cerdas Naturais;
1 Pente de Madeira.

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe.

Basta escolher a cor de sua preferência e informar sua escolha pelo WhatsApp.

Nós produziremos tudo com muito carinho para entregar um kit especial para a sua família.', array['Feito à mão']::text[], 1700),
  ('278', 'prendedor-sem-personalizacao-pente-escova-azul', 'Prendedor sem personalização em Silicone + pente e escova de madeira com cerdas naturais', 'Prendedor de Chupeta Sem Personalização em Silicone', 159.8, null, 139.8, 2, 4, 25, array['/WhatsApp Image 2026-07-16 at 17.33.33 (3).jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta sem Personalização mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia.

Produzido em silicone atóxico, livre de BPA, une praticidade, segurança e um design delicado.

O Kit Pente e Escova de Madeira completa esse momento de cuidado.
A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade.

O kit contém:
1 Prendedor de Chupeta sem Personalização em Silicone;
1 Kit Pente e Escova de Madeira (2 peças):
1 Escova de Madeira com Cerdas Naturais;
1 Pente de Madeira.

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe.

Basta escolher a cor de sua preferência e informar sua escolha pelo WhatsApp.

Nós produziremos tudo com muito carinho para entregar um kit especial para a sua família.', array['Feito à mão']::text[], 1710),
  ('279', 'prendedor-sem-personalizacao-pente-escova-rosa', 'Prendedor sem personalização em Silicone + pente e escova de madeira com cerdas naturais', 'Prendedor de Chupeta Sem Personalização em Silicone', 159.8, null, 139.8, 2, 4, 25, array['/WhatsApp Image 2026-07-16 at 17.33.33 (2).jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta sem Personalização mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia.

Produzido em silicone atóxico, livre de BPA, une praticidade, segurança e um design delicado.

O Kit Pente e Escova de Madeira completa esse momento de cuidado.
A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade.

O kit contém:
1 Prendedor de Chupeta sem Personalização em Silicone;
1 Kit Pente e Escova de Madeira (2 peças):
1 Escova de Madeira com Cerdas Naturais;
1 Pente de Madeira.

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe.

Basta escolher a cor de sua preferência e informar sua escolha pelo WhatsApp.

Nós produziremos tudo com muito carinho para entregar um kit especial para a sua família.', array['Feito à mão']::text[], 1720),
  ('280', 'prendedor-sem-personalizacao-pente-escova-mickey', 'Prendedor sem personalização em Silicone + pente e escova de madeira com cerdas naturais', 'Prendedor de Chupeta Sem Personalização em Silicone', 159.8, null, 139.8, 2, 4, 25, array['/WhatsApp Image 2026-07-16 at 17.33.33 (1).jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta sem Personalização mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia.

Produzido em silicone atóxico, livre de BPA, une praticidade, segurança e um design delicado.

O Kit Pente e Escova de Madeira completa esse momento de cuidado.
A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade.

O kit contém:
1 Prendedor de Chupeta sem Personalização em Silicone;
1 Kit Pente e Escova de Madeira (2 peças):
1 Escova de Madeira com Cerdas Naturais;
1 Pente de Madeira.

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe.

Basta escolher a cor de sua preferência e informar sua escolha pelo WhatsApp.

Nós produziremos tudo com muito carinho para entregar um kit especial para a sua família.', array['Feito à mão']::text[], 1730),
  ('281', 'prendedor-sem-personalizacao-pente-escova-embalado', 'Prendedor sem personalização em Silicone + pente e escova de madeira com cerdas naturais', 'Prendedor de Chupeta Sem Personalização em Silicone', 159.8, null, 139.8, 2, 4, 25, array['/WhatsApp Image 2026-07-16 at 17.33.33.jpeg']::text[], null, null, true, true, '{}'::text[], 'Um kit pensado para acompanhar os primeiros cuidados do seu bebê com delicadeza, segurança e muito carinho.

O Prendedor de Chupeta sem Personalização mantém a chupeta sempre por perto, evitando quedas e perdas durante os passeios e no dia a dia.

Produzido em silicone atóxico, livre de BPA, une praticidade, segurança e um design delicado.

O Kit Pente e Escova de Madeira completa esse momento de cuidado.
A escova possui cerdas naturais, ideais para o couro cabeludo delicado do bebê, enquanto o pente de madeira ajuda a desembaraçar os fios com suavidade.

O kit contém:
1 Prendedor de Chupeta sem Personalização em Silicone;
1 Kit Pente e Escova de Madeira (2 peças):
1 Escova de Madeira com Cerdas Naturais;
1 Pente de Madeira.

Todas as peças são cuidadosamente selecionadas para proporcionar conforto, qualidade e um acabamento encantador, tornando este kit uma linda opção para compor o enxoval ou presentear uma futura mamãe.

Basta escolher a cor de sua preferência e informar sua escolha pelo WhatsApp.

Nós produziremos tudo com muito carinho para entregar um kit especial para a sua família.', array['Feito à mão']::text[], 1740)
on conflict (id) do nothing;

commit;
