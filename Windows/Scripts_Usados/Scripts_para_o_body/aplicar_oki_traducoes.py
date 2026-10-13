"""
aplicar_oki_traducoes.py v2
Formato das entradas oki: [inicio, fim, x, y, tamanho, japonês, inglês, chinês]
O inglês está no índice 6, não no índice 1.
"""
import json, shutil
from pathlib import Path

BASE   = Path(__file__).parent
CONFIG = BASE / "output_config" / "config"

traducoes = {
    "oki01_subtitle": [
        ("Kokusai dori", "Kokusai Dori"),
        ("Kokusai dori in Naha City, located near", "A Kokusai Dori, localizada na cidade de Naha, próxima"),
        ("the Okinawa Prefectural Office,", "ao Governo Prefeitural de Okinawa,"),
        ("is about 1.6 km long and is lined with fashion shops,", "tem cerca de 1,6 km de extensão e é repleta de lojas de moda,"),
        ("souvenir shops, restaurants, and many hotels.", "lojas de souvenirs, restaurantes e muitos hotéis."),
        ("Narration: Natsumi Takamori", "Narração: Natsumi Takamori"),
    ],
    "oki02_subtitle": [
        ("Chatan Town Mihama American Village", "Vila Americana de Mihama, Cidade de Chatan"),
        ("There are many amusement spots and unique shops,", "Há muitas atrações de entretenimento e lojas únicas,"),
        ("and this area is popular with young locals.", "e esta área é popular entre os jovens locais."),
        ("There is a boardwalk with", "Há um calçadão com"),
        ("many restaurants facing the coastline,", "muitos restaurantes voltados para a orla,"),
        ("It also has a movie theater, large supermarkets,", "Também há um cinema, grandes supermercados,"),
        ("import markets, along with plenty of casual shops,", "mercados de importados, além de muitas lojas casuais,"),
        ("cafes, and restarants.", "cafés e restaurantes."),
        ("Furthermore, Chatan Park, as well as beaches,", "Além disso, o Parque de Chatan, praias,"),
        ("hotels, etc., are located nearby,", "hotéis e outros estabelecimentos ficam nas proximidades,"),
        ("so shopping and leisure can be enjoyed simultaneously.", "permitindo aproveitar compras e lazer ao mesmo tempo."),
        ("Narration: Natsumi Takamori", "Narração: Natsumi Takamori"),
    ],
    "oki03_subtitle": [
        ("Sunset Beach", "Sunset Beach"),
        ("The town beach adjacent to Mihama American Village.", "A praia urbana adjacente à Vila Americana de Mihama."),
        ("It is known as one of the best sunset spots", "É conhecida como um dos melhores pontos para apreciar o pôr do sol"),
        ("in the prefecture, and the beauty of the sunset", "da prefeitura, e a beleza do entardecer"),
        ("over the East China Sea is impressive.", "sobre o Mar da China Oriental é impressionante."),
        ("In addition to swimming,", "Além da natação,"),
        ("barbecues by the beach are also popular in summer.", "os churrascos à beira-mar também são populares no verão."),
        ("During the season, various music events,", "Durante a temporada, diversos eventos musicais,"),
        ("such as hula, are held, and it gets crowded.", "como hula, são realizados e o local fica bastante movimentado."),
        ("Narration: Natsumi Takamori", "Narração: Natsumi Takamori"),
    ],
    "oki04_subtitle": [
        ("Ocean Expo Park", "Parque Ocean Expo"),
        ("Emerald Beach", "Praia Esmeralda"),
        ("This is a national park established on the site of the", "Este é um parque nacional estabelecido no local da"),
        ("Okinawa International Ocean Exposition, held in 1975.", "Exposição Internacional Oceânica de Okinawa, realizada em 1975."),
        ("Central Gate", "Portão Central"),
        ("Image/Video Provided", "Imagem/Vídeo Fornecido"),
        ("Okinawa Commemorative National Government Park", "Parque Nacional Comemorativo de Okinawa"),
        ("(Ocean Expo Park)", "(Parque Ocean Expo)"),
        ("Fountain Plaza", "Praça da Fonte"),
        ("Okinawa Churaumi Aquarium", "Aquário Churaumi de Okinawa"),
        ("There are many popular tourist spots,", "Há muitos pontos turísticos populares,"),
        ("such as Okinawa Churaumi Aquarium,", "como o Aquário Churaumi de Okinawa,"),
        ("Marine Culture Museum, and the Tropical Dream Center,", "o Museu de Cultura Marinha e o Centro Tropical dos Sonhos,"),
        ("Marine Culture Museum", "Museu de Cultura Marinha"),
        ("Tropical Dream Center", "Centro Tropical dos Sonhos"),
        ("Okinawa Folk Village", "Aldeia Folclórica de Okinawa"),
        ("Okinawa Folk Village, Emerald Beach, etc.", "a Aldeia Folclórica de Okinawa, a Praia Esmeralda, entre outros."),
        ("Narration: Natsumi Takamori", "Narração: Natsumi Takamori"),
    ],
    "oki05_subtitle": [
        ("Okinawa Churaumi Aquarium", "Aquário Churaumi de Okinawa"),
        ("Video Provided", "Vídeo Fornecido"),
        ("Okinawa Commemorative National Government Park", "Parque Nacional Comemorativo de Okinawa"),
        ("(Ocean Expo Park) Okinawa Churaumi Aquarium", "(Parque Ocean Expo) Aquário Churaumi de Okinawa"),
        ("This is one of the largest aquariums", "Este é um dos maiores aquários"),
        ("within the Ocean Expo Park.", "dentro do Parque Ocean Expo."),
        ('In the sundrenched tank called the "Coral Sea,"', 'No tanque iluminado pelo sol chamado "Mar de Coral",'),
        ("one can see a large-scale coral breeding exhibit.", "pode-se observar uma exibição em grande escala de criação de corais."),
        ('Within the spectacular giant tank, the "Kuroshio Sea,"', 'No espetacular tanque gigante chamado "Mar Kuroshio",'),
        ("one can observe the whale shark, the largest among fish,", "é possível observar o tubarão-baleia, o maior dos peixes,"),
        ("and the world's first reef manta ray", "e a primeira arraia-manta recifal do mundo"),
        ("that was successfully bred.", "criada com sucesso em cativeiro."),
        ("In addition, one can experience the entire sea of", "Além disso, é possível vivenciar todo o mar de"),
        ('Okinawa, such as the "Deep Sea," a tank that reproduces', 'Okinawa, como o "Mar Profundo", um tanque que reproduz'),
        ("the deep sea of Okinawa, a place shrouded in mystery.", "as profundezas misteriosas do oceano de Okinawa."),
        ("Narration: Natsumi Takamori", "Narração: Natsumi Takamori"),
    ],
    "oki06_subtitle": [
        ("Shurijo Castle Park", "Parque do Castelo Shurijo"),
        ("Shurijo Castle Park is a park consisting of the", "O Parque do Castelo Shurijo é um parque que abrange"),
        ("surrounding cultural properties,", "os bens culturais ao seu redor,"),
        ("such as the World Heritage Site of Shurijo Castle,", "como o Patrimônio Mundial da UNESCO do Castelo Shurijo,"),
        ("the Shurijo Castle Seiden, Shureimon,", "o Seiden do Castelo Shurijo, o Portão Shureimon,"),
        ("Sonohyan Utaki Ishimon, Enkakuji, and Benzaitendou.", "o Sonohyan Utaki Ishimon, o Enkakuji e o Benzaitendou."),
        ("Suimuikan is a rest center,", "O Suimuikan é um centro de descanso,"),
        ("and it is used by many visitors", "muito utilizado por turistas"),
        ("as a rest area for sightseeing", "como área de descanso durante os passeios"),
        ("with guides for the park, restaurants, and shops.", "com guias do parque, restaurantes e lojas."),
        ("- The Shuri Castle of Days Past -", "- O Castelo Shuri de Outrora -"),
        ("In December 2000, it was registered", "Em dezembro de 2000, foi registrado"),
        ('as a World Heritage Site as "Gusuku Sites and Related', 'como Patrimônio Mundial como "Sítios Gusuku e Bens Relacionados'),
        ("Properties of the Kingdom of Ryukyu\u202f.\"", "do Reino de Ryukyu\u202f.\""),
        ("Narration: Natsumi Takamori", "Narração: Natsumi Takamori"),
    ],
    "oki07_subtitle": [
        ("Araha beach", "Praia de Araha"),
        ("Located in Chatan Town, Nakagami District,", "Localizada na cidade de Chatan, distrito de Nakagami,"),
        ("this is a large multipurpose beach with", "esta é uma grande praia multiuso com"),
        ("a total length of 600 meters.", "extensão total de 600 metros."),
        ("One can experience a number of marine sports, and there", "É possível praticar diversos esportes aquáticos, e há"),
        ("are plenty of barbecue facilities and amusement facilities.", "muitas instalações para churrasco e atividades de lazer."),
        ("This is a exotic beach where one can enjoy", "Esta é uma praia exótica onde se pode apreciar"),
        ("the beautiful sunset of the west coast.", "o belo pôr do sol da costa oeste."),
        ("Narration: Natsumi Takamori", "Narração: Natsumi Takamori"),
    ],
    "oki08_subtitle": [
        ("Okinawa Prefectural Museum \\& Art Museum", "Museu Prefeitural de Okinawa e Museu de Arte"),
        ("This is a rare facility", "Esta é uma instalação rara"),
        ("in a Japan that has a museum and an art gallery.", "no Japão que reúne um museu e uma galeria de arte."),
        ("At the facility, which was designed in the image of", "Na instalação, projetada à imagem dos"),
        ("Okinawa's Castle Gusuku, one can appreciate Okinawa's", "castelos Gusuku de Okinawa, é possível apreciar"),
        ("nature, history, culture, and art all at once.", "a natureza, a história, a cultura e a arte de Okinawa de uma só vez."),
        ("Enjoy a rich experience that resonates with one's", "Desfrute de uma experiência rica que ressoa com o"),
        ("intellect and sensibility.", "intelecto e a sensibilidade de cada um."),
        ("Narration: Natsumi Takamori", "Narração: Natsumi Takamori"),
    ],
    "oki09_subtitle": [
        ("Umikaji Terrace senagajima", "Terraço Umikaji - Ilha Senaga"),
        ("About 15 minutes by car from Naha Airport,", "A cerca de 15 minutos de carro do Aeroporto de Naha,"),
        ("this is on a commercial facility located", "esta é uma instalação comercial situada"),
        ("on the west coast of Senaga Island.", "na costa oeste da Ilha Senaga."),
        ("It was founded in the summer of 2015 as an", "Foi inaugurado no verão de 2015 como um"),
        ("island resort for excitement and relaxation.", "resort de ilha para entretenimento e relaxamento."),
        ("Gourmet and sweets shops centered on local Okinawan cuisine,", "Lojas de gastronomia e doces com foco na culinária local de Okinawa,"),
        ("original ring production,", "produção de anéis artesanais originais,"),
        ("and select shops are fused with a wonderful location.", "e lojas selecionadas se fundem com uma localização privilegiada."),
        ("It is a sightseeing a shopping spot of Okinawa.", "É um ponto turístico e de compras imperdível de Okinawa."),
        ("Narration: Natsumi Takamori", "Narração: Natsumi Takamori"),
    ],
    "oki10_subtitle": [
        ("Kouri Island", "Ilha Kouri"),
        ("This is a small island in the northern part of the main", "Esta é uma pequena ilha na parte norte da ilha principal"),
        ("island of Okinawa, surrounded by the emerald green sea.", "de Okinawa, cercada pelo mar verde-esmeralda."),
        ("In 2005, the Kouri Bridge was opened between the", "Em 2005, a Ponte Kouri foi inaugurada entre a"),
        ("neighboring island of Yagajima and this island,", "ilha vizinha de Yagajima e esta ilha,"),
        ("making it accessible by car from the main island of Okinawa.", "tornando-a acessível de carro a partir da ilha principal de Okinawa."),
        ("When crossing the bridge, one can travel over a sea with such", "Ao atravessar a ponte, percorre-se um mar com"),
        ("high transparency that even native Okinawans rave about it,", "tamanha transparência que até os próprios habitantes de Okinawa se encantam,"),
        ("and it is an island visited by", "sendo uma ilha visitada por"),
        ("many tourists due to its wonderful scenery.", "muitos turistas devido às suas paisagens deslumbrantes."),
        ("Narration: Natsumi Takamori", "Narração: Natsumi Takamori"),
    ],
    "oki11_subtitle": [
        ("Kouri Ocean Tower", "Torre Oceânica Kouri"),
        ("The blue of the sea and sky changes", "O azul do mar e do céu muda"),
        ("its expression every moment.", "de expressão a cada instante."),
        ("The observation tower where one can enjoy Kouri Blue", "A torre de observação onde se pode contemplar o Azul Kouri"),
        ("as far as the eye can see is the Kouri Ocean Tower.", "até onde a vista alcança é a Torre Oceânica Kouri."),
        ("In addition to the observatory where one can enjoy", "Além do mirante onde se pode apreciar"),
        ("a wonderful view,", "uma vista deslumbrante,"),
        ("there is also a shell museum where one can see", "há também um museu de conchas onde se pode observar"),
        ("more than 10,000 shellfish collected from", "mais de 10.000 conchas coletadas"),
        ("all over the world, as well as restaurants.", "de todo o mundo, além de restaurantes."),
        ("Narration: Natsumi Takamori", "Narração: Natsumi Takamori"),
    ],
    "oki12_subtitle": [
        ("Kafu Banta", "Kafu Banta"),
        ("In the Okinawan dialect,", "No dialeto okinawano,"),
        ('"Kafu" means happiness and "Banta" means cliff.', '"Kafu" significa felicidade e "Banta" significa penhasco.'),
        ('It is also known as "Happy Cliff."', 'Também é conhecida como "Penhasco da Felicidade".'),
        ("From the top of the cliff,", "Do alto do penhasco,"),
        ("one can see the beautiful emerald green sea.", "pode-se contemplar o belo mar verde-esmeralda."),
        ("The scenery of the sea and cape is one of the best", "A paisagem do mar e do promontório é um dos melhores"),
        ("scenic spots on the main island of Okinawa.", "pontos cênicos da ilha principal de Okinawa."),
        ("Narration: Natsumi Takamori", "Narração: Natsumi Takamori"),
    ],
    "oki13_subtitle": [
        ("MANZAMO", "MANZAMO"),
        ("This is made up of coastal cliffs", "Este local é formado por falésias costeiras"),
        ("and vast lawns made of Ryukyu limestone,", "e vastos gramados de calcário ryukyuano,"),
        ("It is said that in In the first half of the 18th century,", "Diz-se que na primeira metade do século XVIII,"),
        ("King Shokei of the Ryukyu Kingdom praised it", "o Rei Shokei do Reino de Ryukyu o elogiou"),
        ('as "enough to seat everyone," so it was named Manzamo.', 'dizendo que havia espaço "para todos se sentarem", e assim o local foi batizado de Manzamo.'),
        ('By the way, the kanji for "mo" here refers to "an open field."', 'Aliás, o kanji de "mo" aqui se refere a "um campo aberto".'),
        ("Narration: Natsumi Takamori", "Narração: Natsumi Takamori"),
    ],
    "oki14_subtitle": [
        ("RYUKYU GLASS VILLAGE", "ALDEIA DO VIDRO RYUKYU"),
        ("This is the largest handmade glass workshop", "Este é o maior ateliê de vidro artesanal"),
        ("in the prefecture, located in Itoman City,", "da prefeitura, localizado na cidade de Itoman,"),
        ("the southernmost part of the main island of Okinawa.", "a parte mais ao sul da ilha principal de Okinawa."),
        ("One can try to make their own Ryukyu glass work", "É possível criar sua própria peça de vidro Ryukyu"),
        ("and observe the production process", "e observar o processo de produção"),
        ("of skilled craftsmen right in front of them.", "de artesãos habilidosos bem diante de seus olhos."),
        ("There is also a shop and gallery.", "Há também uma loja e uma galeria."),
        ("Narration: Natsumi Takamori", "Narração: Natsumi Takamori"),
    ],
}

total_ok = 0

for nome, pares in traducoes.items():
    arquivo = CONFIG / f"{nome}.psb.m.json"
    if not arquivo.exists():
        print(f"  FALTANDO: {arquivo.name}")
        continue

    bak = arquivo.with_suffix(".json.bak")
    if not bak.exists():
        shutil.copy2(arquivo, bak)

    dados = json.loads(arquivo.read_text(encoding="utf-8"))
    mapa = dict(pares)
    aplicados = 0

    for entrada in dados:
        if not isinstance(entrada, list):
            continue
        # Tenta índice 6 (formato oki) e índice 1 (outros formatos)
        for idx in [6, 1]:
            if len(entrada) > idx and isinstance(entrada[idx], str):
                texto = entrada[idx]
                if texto in mapa:
                    entrada[idx] = mapa[texto]
                    aplicados += 1
                    break
                

    arquivo.write_text(
        json.dumps(dados, ensure_ascii=False, indent=2),
        encoding="utf-8"
    )
    print(f"  {nome}: {aplicados}/{len(pares)} traduções aplicadas")
    total_ok += 1

print(f"\nPronto! {total_ok} arquivos atualizados.")
