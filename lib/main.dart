import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Sayfalar arası geçiş',
      initialRoute: '/',
      routes: {
        '/': (context) => const ilkSayfa(),
        '/second': (context) => const ikinciSayfa(),
        '/three': (context) => const yardimSayfa(),
      },
    ),
  );
}

class ilkSayfa extends StatelessWidget {
  const ilkSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: const Text('İLK SAYFA'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('GİT'),
        ),
      ),
    );
  }
}

class ikinciSayfa extends StatelessWidget {
  const ikinciSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        title: const Text('İKİNCİ SAYFA'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/three');
          },
          child: const Text('İLERLE!'),
        ),
      ),
    );
  }
}

class yardimSayfa extends StatelessWidget {
  const yardimSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: const Text('YARDIM SAYFASI'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('SON'),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('İyi günler.'),
                action: SnackBarAction(
                  label: 'By Byy',
                  onPressed: () {},
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
