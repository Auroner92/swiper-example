import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> images = [
    'https://static.wikia.nocookie.net/hitlerparody/images/7/71/Peter-griffin-500x500.jpg/revision/latest?cb=20180412161700&path-prefix=es',
    'https://static.wikia.nocookie.net/hitlerparody/images/7/71/Peter-griffin-500x500.jpg/revision/latest?cb=20180412161700&path-prefix=es',
    'https://static.wikia.nocookie.net/hitlerparody/images/7/71/Peter-griffin-500x500.jpg/revision/latest?cb=20180412161700&path-prefix=es',
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App Piter',
      home: Scaffold(
        appBar: AppBar(title: Text('Swiper')),
        body: Container(child: _swiper(images)),
      ),
    );
  }
}

Widget _swiper(List<String> images) {
  //lista de imagenes
  return SizedBox(
    width: double.infinity,
    height: 250.0,
    child: Swiper(
      viewportFraction: 0.9, //espacio entre imagenes
      scale: 0.9, //espacio entre imagenes
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
          images[index],
          fit: BoxFit.contain,
        ); //boxfit.contain se usa para ver todas las imagenes completas
      },
      itemCount: images.length, //toma todas las imagenes que le agregemos
      pagination: SwiperPagination(),
      control: SwiperControl(),
    ),
  );
}
