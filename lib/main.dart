import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Container containerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(4),
      color: renk,
      height: 75,
      width: 75,
      child: Center(
        child: Text(
          harf,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  Row rowFonksiyon() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: containerOlustur('A', Colors.red.shade100),
        ),
        Expanded(
          child: containerOlustur('B', Colors.red.shade200),
        ),
        Expanded(
          child: containerOlustur('D', Colors.red.shade300),
        ),
        Expanded(
          child: containerOlustur('U', Colors.red.shade400),
        ),
        Expanded(
          child: containerOlustur('S', Colors.red.shade500),
        ),
        Expanded(
          child: containerOlustur('U', Colors.red.shade600),
        ),
        Expanded(
          child: containerOlustur('B', Colors.red.shade700),
        ),
        Expanded(
          child: containerOlustur('U', Colors.red.shade800),
        ),
        Expanded(
          child: containerOlustur('R', Colors.red.shade900),
        ),
      ],
    );
  }

  Column columnFonksiyon() {
    return Column(
      children: [
        Expanded(
          child: containerOlustur('A', Colors.green.shade100),
        ),
        Expanded(
          child: containerOlustur('B', Colors.green.shade200),
        ),
        Expanded(
          child: containerOlustur('D', Colors.green.shade300),
        ),
        Expanded(
          child: containerOlustur('U', Colors.green.shade400),
        ),
        Expanded(
          child: containerOlustur('S', Colors.green.shade500),
        ),
        Expanded(
          child: containerOlustur('U', Colors.green.shade600),
        ),
        Expanded(
          child: containerOlustur('B', Colors.green.shade700),
        ),
        Expanded(
          child: containerOlustur('U', Colors.green.shade800),
        ),
        Expanded(
          child: containerOlustur('R', Colors.green.shade900),
        ),
      ],
    );
  }

  final String _img1 = 'https://images8.alphacoders.com/505/505616.png';
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 21, 163, 128),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Başlık"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          color: const Color.fromARGB(255, 172, 134, 52),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              rowFonksiyon(),
              Expanded(child: columnFonksiyon()),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı');
          },
          child: const Icon(
            Icons.add_photo_alternate_rounded,
            color: Color.fromARGB(255, 49, 192, 211),
          ),
          backgroundColor: const Color.fromARGB(255, 104, 12, 24),
        ),
      ),
    );
  }

  List<Widget> get sorunluContainer {
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.purple,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.cyan,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.amber,
      ),
    ];
  }

  List<Widget> get flexibleContainer {
    return [
      Flexible(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Flexible(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Flexible(
        child: Container(
          width: 75,
          height: 100,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        child: Container(
          width: 75,
          height: 100,
          color: Colors.cyan,
        ),
      ),
    ];
  }

  List<Widget> get expandedContainer {
    return [
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.cyan,
        ),
      ),
    ];
  }

  Widget containerDersleri() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 100),
        child: const Text(
          'Abdusubur',
          style: TextStyle(
            shadows: <Shadow>[
              Shadow(
                offset: Offset(5.0, 5.0),
                blurRadius: 3.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              Shadow(
                offset: Offset(5.0, 5.0),
                blurRadius: 8.0,
                color: Color.fromARGB(124, 255, 136, 0),
              ),
            ],
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 199, 137, 2),
          shape: BoxShape.rectangle,
          border: Border.all(
              width: 5, color: const Color.fromARGB(255, 190, 132, 6)),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          image: DecorationImage(
            image: NetworkImage(_img1),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 230, 130, 36),
              offset: Offset(15, 30),
              blurRadius: 20,
            ),
          ],
        ),
      ),
    );
  }
}
