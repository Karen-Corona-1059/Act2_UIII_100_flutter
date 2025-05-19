import 'package:flutter/material.dart';



class HotTopic {
  IconData icon;  // Cambiado de String image a IconData icon
  String name;
  Color color;

  HotTopic({
    required this.color,
    required this.icon,  // Cambiado de image a icon
    required this.name,
  });
}

List<HotTopic> topicItems = [
  HotTopic(
    color: const Color.fromARGB(255, 37, 150, 140),
    icon: Icons.soap,
    name: 'Jabón',
  ),
  HotTopic(
    color: const Color.fromARGB(255, 185, 92, 131),
    icon: Icons.colorize,
    name: 'Shampoo',
  ),
  HotTopic(
   color: const Color.fromARGB(255, 37, 150, 140),
    icon: Icons.remove_red_eye,
    name: 'Sombras',
  ),
  HotTopic(
  color: const Color.fromARGB(255, 185, 92, 131),
    icon: Icons.location_on,
    name: 'Ubicación',
  ),
  HotTopic(
 color: const Color.fromARGB(255, 37, 150, 140),
    icon: Icons.person,
    name: 'Personal',
  ),
  HotTopic(
    color: const Color.fromARGB(255, 185, 92, 131),
    icon: Icons.brush,
    name: 'Maquillaje',
  ),
];

// model for your news
class Yournews {
  String image;
  String newsImage;
  String newsTitle;
  String newsCategories;
  String time;
  String date;
  Color color;
  String description;

  Yournews({
    required this.image,
    required this.newsImage,
    required this.newsTitle,
    required this.newsCategories,
    required this.time,
    required this.date,
    required this.color,
    required this.description,
  });
}

List<Yournews> newsItems = [
  Yournews(
    description:  "Los jabones artesanales ofrecen múltiples beneficios frente a los industriales debido a su elaboración manual con ingredientes naturales. Se fabrican mediante procesos como la saponificación en frío o caliente, utilizando aceites vegetales de alta calidad como oliva, coco o almendras, mantecas naturales como karité o cacao, y aceites esenciales para aromaterapia. A diferencia de los jabones industriales, no contienen sulfatos, parabenos, fragancias sintéticas ni otros químicos agresivos que pueden dañar la piel.",
    newsImage: "https://raw.githubusercontent.com/Karen-Corona-1059/img/refs/heads/main/one.jpg",
    image: "https://raw.githubusercontent.com/Karen-Corona-1059/img/refs/heads/main/one.jpg",
    newsTitle: 'La ventaja de utilizar jabones artesanales',
    newsCategories: "JABÓN",
    date: 'Sunday 2 March 2024',
    time: '2m',
    color: const Color(0xFFFF7A23),
  ),
  Yournews(
    description: "Los jabones artesanales ofrecen múltiples beneficios frente a los industriales debido a su elaboración manual con ingredientes naturales. Se fabrican mediante procesos como la saponificación en frío o caliente, utilizando aceites vegetales de alta calidad como oliva, coco o almendras, mantecas naturales como karité o cacao, y aceites esenciales para aromaterapia. A diferencia de los jabones industriales, no contienen sulfatos, parabenos, fragancias sintéticas ni otros químicos agresivos que pueden dañar la piel.",
    newsImage: "https://raw.githubusercontent.com/Karen-Corona-1059/img/refs/heads/main/two.jpg",
    image: "https://raw.githubusercontent.com/Karen-Corona-1059/img/refs/heads/main/two.jpg",
    newsTitle: '¿Por qué es mejor utilizar maquillaje artesanal?',
    newsCategories: "MAQUILLAJE",
    date: 'Saturday 29 Nov 2023',
    time: '4h',
    color: const Color(0xFF57CBFF),
  ),
  Yournews(
    description: "El maquillaje artesanal gana popularidad por estar libre de ingredientes dañinos como plomo, ftalatos y derivados del petróleo, comunes en los cosméticos industriales. Está formulado con bases minerales, pigmentos naturales, mantecas vegetales y ceras como la de abejas o candelilla, lo que lo hace más seguro para la piel.",
    newsImage: "https://raw.githubusercontent.com/Karen-Corona-1059/img/refs/heads/main/three.jpg",
    image: "https://raw.githubusercontent.com/Karen-Corona-1059/img/refs/heads/main/three.jpg",
    newsTitle: "¿Como funciona la crema solida?",
    newsCategories: "PERSONAL",
    date: 'Saturday 29 Nov 2019',
    time: '10h',
    color: const Color(0xFFFB3C5F),
  ),
   Yournews(
    description:"La crema sólida es una alternativa ecológica a las cremas tradicionales, eliminando la necesidad de envases plásticos. Su fórmula se compone de ingredientes como manteca de karité, aceites vegetales (jojoba, argán) y ceras naturales que le dan una textura compacta.",
    newsImage: "https://raw.githubusercontent.com/Karen-Corona-1059/img/refs/heads/main/four.jpg",
    image: "https://raw.githubusercontent.com/Karen-Corona-1059/img/refs/heads/main/four.jpg",
    newsTitle: "Jabón artesanal VS Jabón Industrial",
    newsCategories: "JABÓN",
    date: 'Saturday 29 Nov 1101',
    time: '∞',
   color: const Color(0xFF3180FF),
  ),
];
