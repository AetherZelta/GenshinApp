import 'package:flutter/material.dart';
import 'package:genshin_app/models/character.dart';

final listCategory = ['Personajes', 'Visiones', 'Artefactos'];

final listVisions = [
  Vision(
    'HYDRO',
    'Elemento',
    'assets/elements/flat_white/Element_White_Hydro.png',
    [
      ImageCharacter(
        'Neuvillete',
        'assets/characters/splash/neuvillette.png',
        const Color(0xff2596be),
        5,
        'Juez supremo de Fontaine y el líder de la Gendarmería Fantasmal. Aunque Neuvillette respeta las reglas de la corte con la mayor reverencia y a menudo controla la extravagancia de Furina, es bastante distante cuando se trata de emociones humanas y a menudo se aleja de la opinión pública.',
        'assets/characters/avatar/ui-avataricon-neuvillette.png',
      ),
      ImageCharacter(
        'Furina',
        'assets/characters/splash/furina.png',
        const Color(0xff2596be),
        5,
        'La vida es como una obra de teatro: nunca sabes en qué capítulo habrá un giro argumental',
        'assets/characters/avatar/ui-avataricon-furina.png',
      ),
    ],
  ),
  Vision(
    'DENDRO',
    'Elemento',
    'assets/elements/flat_white/Element_White_Dendro.png',
    [
      ImageCharacter(
        'Alhaitham',
        'assets/characters/splash/alhaitham.png',
        const Color(0xffa0e43c),
        5,
        'El actual escriba de la Academia de Sumeru, un hombre de gran inteligencia y talento. Vive su vida libremente y es prácticamente imposible de encontrar.',
        'assets/characters/avatar/ui-avataricon-alhatham.png',
      ),
      ImageCharacter(
        'Nahida',
        'assets/characters/splash/nahida.png',
        const Color(0xffa0e43c),
        5,
        'Yo diría que o presta mucha atención o es demasiado cariñosa con la gente... Aunque sus acciones puedan ser algo defectuosas, creo que su sentido de la responsabilidad como deidad de Sumeru es algo encomiable. Después de todo, ella es la deidad más joven, no como cierta otra persona que es propensa a la histeria...',
        'assets/characters/avatar/ui-avataricon-nahida.png',
      ),
    ],
  ),
  Vision(
    'PYRO',
    'Elemento',
    'assets/elements/flat_white/Element_White_Pyro.png',
    [
      ImageCharacter(
        'Gaming',
        'assets/characters/splash/gaming.png',
        const Color(0xffff6444),
        4,
        'Escolta de la Agencia de Transporte Seguro Cofrespada y líder del grupo Bestias Místicas Poderosas.',
        'assets/characters/avatar/ui-avataricon-gaming.png',
      ),
      ImageCharacter(
        'Bennett',
        'assets/characters/splash/bennett.png',
        const Color(0xffff6444),
        4,
        'Un huérfano descubierto por un anciano aventurero cuando era un bebé, Bennett se crio en el Gremio de Aventureros de Mondstadt. Él es el único miembro de la "Brigada de Benny", ya que todos los demás dejaron el equipo después de experimentar la desgracia constante que lo sigue.',
        'assets/characters/avatar/ui-avataricon-bennett.png',
      ),
    ],
  ),
  Vision(
    'GEO',
    'Elemento',
    'assets/elements/flat_white/Element_White_Geo.png',
    [
      ImageCharacter(
        'Zhongli',
        'assets/characters/splash/zhongli.png',
        const Color(0xffffb40c),
        5,
        'Un misterioso hombre invitado por la Funeraria El Camino. Un gran conocedor de todos los saberes. Zhongli no parpadea al pagar (o pedir a otros que paguen). Con gusto paga el precio, sin importar cuán irrazonable sea, y pagará incluso más por las cosas que le gustan. La parte divertida es que Zhongli siempre olvida llevar su dinero con él.',
        'assets/characters/avatar/ui-avataricon-zhongli.png',
      ),
      ImageCharacter(
        'Noelle',
        'assets/characters/splash/noelle.png',
        const Color(0xffffb40c),
        4,
        'Una sirvienta al servicio de los Caballeros de Favonius que sueña con unirse algún día a sus filas.',
        'assets/characters/avatar/ui-avataricon-noel.png',
      ),
    ],
  ),
];
