import 'package:flutter/material.dart';
import 'package:plant_library/plantlisttile.dart';

void main() {
  runApp(const PlantLibraryApp());
}

class PlantLibraryApp extends StatelessWidget {
  const PlantLibraryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Library',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Plant Library'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)), body: ListViewBuilder());
  }
}

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({Key? key}) : super(key: key);

  final List<Map> _plantList = [
    {
      'iconPath': "assets/images/rose.webp",
      'plantName': 'ROSE',
      'plantScientificName': 'Rosa rubiginosa',
      'plantDescriptions':
          'Perhaps the most famous flower on the list, the beautiful rose has attained cultural significance around the world and is often used to symbolise love, affection and beauty. Ranging from blooms as small as a fingernail to the majestic Grandiflora, there are thousands of different cultivations of roses available in rich colours and fragrances.'
    },
    {
      'iconPath': "assets/images/lily.webp",
      'plantName': 'LILY',
      'plantScientificName': 'Lilium',
      'plantDescriptions':
          'Tall, majestic and strikingly-shaped: lilies are a popular choice for bouquets due to their unusual shape and scent. Like roses, lilies are an important cultural and literary device and are known throughout the temperate Northern Hemisphere for their beauty and resilience.'
    },
    {
      'iconPath': "assets/images/tulip.webp",
      'plantName': 'TULIP',
      'plantScientificName': 'Tulipa',
      'plantDescriptions':
          'Closely related to the lily and with a long history of cultivation at Latitude 40° North - an area spanning Ukraine and Turkey along with the Caspian Sea and even all the way to China - tulips have been seen as a symbol of wealth and abundance through the ages.'
    },
    {
      'iconPath': "assets/images/orchid.webp",
      'plantName': 'ORCHID',
      'plantScientificName': 'Phalaenopsis',
      'plantDescriptions':
          'Here\'s one you\'d never have guessed! What we commonly call an orchid is actually known as a phalaenopsis, which is the cultivated flower of choice from the family of plants known as Orchidaceae. There are over 28,000 species of orchid family plants, but the phalaenopsis covers about 60 of those and is mainly native to Southern Asia and Queensland.'
    },
    {
      'iconPath': "assets/images/carnation.webp",
      'plantName': 'CARNATION',
      'plantScientificName': 'Dianthus',
      'plantDescriptions':
          'Just like we mentioned above, the humble dianthus is one of the United Kingdom\'s favourite flowering plants, and it\'s mainly native to Europe and Asia which explains our long-standing fascination with this hardy plant. There\'s a theory that the colour "pink" may be named after the and the frilly edges of its petals; the verb "to pink" means to decorate with a perforated pattern, and shows up around the same time as the colour began to be used in English.'
    },
    {
      'iconPath': "assets/images/freesia.webp",
      'plantName': 'FREESIA',
      'plantScientificName': 'Freesia',
      'plantDescriptions':
          'What we call freesias are actually cultivated hybrids of a number of flowers in the Freesia family, and that\'s why we refer to them as their scientific name. Unlike many of the other entries in this list, these beautiful trumpet-like blooms aren\'t named after something in Latin or Greek, but take their name from botanist and doctor Friedrich Freese.'
    },
    {
      'iconPath': "assets/images/hyacynth.webp",
      'plantName': 'HYACINTH',
      'plantScientificName': 'Alstroemeria',
      'plantDescriptions':
          'Finding their home along the warm eastern Mediterranean, hyacinths are often confused with the similar-looking muscari flower, another blue-budded plant which grows clusters of flowers along its stem. In the UK we often gift hyacinth bulbs at the beginning of Spring or around Easter time: this is derived from the Persian custom of using a flowering hyacinth to decorate the table around the time of the Persian New Year, which happens at the Spring Equinox.'
    },
    {
      'iconPath': "assets/images/peruvian_lily.webp",
      'plantName': 'PERUVIAN LILY',
      'plantScientificName': 'Alstroemeria',
      'plantDescriptions':
          'No surprises in guessing where this flower comes from; the alstroemeria is almost exclusively found in South America, with two distinct varieties centred in Chile and Brazil which flower in winter and summer respectively. The scientific name comes from the Swedish baron Clas Alströmer who was a close friend of the legendary father of taxonomy Carl Linnaeus'
    },
    {
      'iconPath': "assets/images/chrysanthemum.webp",
      'plantName': 'CHRYSANTHEMUM',
      'plantScientificName': 'Chrysanthemum',
      'plantDescriptions':
          'A flower with many meanings, the chrysanthemum is found mainly in East Asia and has great significance for Chinese, Japanese and Korean cultures where it can symbolise everything from grief and adversity to representing the Japanese Imperial Family. A highly seasonal flower, chrysanthemums are one of the "Four Gentlemen" in China where they represent autumn and graceful nobility.'
    },
    {
      'iconPath': "assets/images/gladiolus.webp",
      'plantName': 'GLADIOLUS',
      'plantScientificName': 'Gladiolus',
      'plantDescriptions':
          'Here\'s where flowers with names can get complicated: the gladiolus is part of the Iris family of plants but is commonly called the "sword lily" due to its long, thin trumpet reminiscent of true lilies. The scientific name comes from the Latin for sword, gladius. They\'re associated with 40th wedding anniversaries, so a bouquet with red gladioli included would definitely go down well with a couple celebrating their Ruby wedding.'
    },
    {
      'iconPath': "assets/images/anemone.webp",
      'plantName': 'ANEMONE',
      'plantScientificName': 'Anemone',
      'plantDescriptions':
          'A temperate-loving flower with a sturdy construction and tendency towards vibrant, long-lasting flowers, anemones are also called "wind flowers", a name derived from their scientific namesakes, the Greek gods Anemoi who ruled over the winds. In classical literature, anemones were created when the goddess Venus sprinkled nectar on the blood of her dead lover Adonis.'
    },
    {
      'iconPath': "assets/images/daffodil.webp",
      'plantName': 'DAFFODIL',
      'plantScientificName': 'Narcissus',
      'plantDescriptions':
          'Daffodil, daffadowndilly, jonquil, lent lily - narcissus are iconic flowers well known to ancient civilisations for their botanical and medicinal value, and many of their names derive from their appearance in everyday life.'
    },
    {
      'iconPath': "assets/images/poppy.webp",
      'plantName': 'POPPY',
      'plantScientificName': 'Papaver',
      'plantDescriptions':
          'Beautiful but deadly, Europe and the Middle East have had a complex relationship with the poppy for thousands of years. Long known to contain powerful narcotic substances - morphine, opium and codeine are all created from the papaver somniferum - these innocuous flowers represent sleep, death and peace. Interestingly, poppies are a common sight in temperate and subtropical climates but are almost never seen in the tropics themselves.'
    },
    {
      'iconPath': "assets/images/sunflower.webp",
      'plantName': 'SUNFLOWER',
      'plantScientificName': 'Helianthus',
      'plantDescriptions':
          'Taking its name for the Greek words for sun "helios" and flower "anthus" respectively, the sunflower is an iconic American plant known for its bright and cheery bloom with the striking brown centre. Amazingly, these towering giants can grow up to 300 cm tall: definitely not easy to work into a bouquet.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _plantList.length,
          itemBuilder: (context, index) {
            Map plantObject = _plantList[index];
            return PlantListTile(
              plantObject: plantObject,
            );
          }),
    );
  }
}
