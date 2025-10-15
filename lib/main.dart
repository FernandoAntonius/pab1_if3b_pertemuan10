import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 30, 150, 255),
        ),
      ),
      home: const MyHomePage(title: 'Widget Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final themeWarna = Color.fromARGB(255, 30, 150, 255);

final marginContainer = EdgeInsets.all(16);
final paddingContainer = EdgeInsets.all(16);
final marginButton = EdgeInsets.only(left: 96, right: 96);
final paddingButton = EdgeInsets.symmetric(vertical: 16, horizontal: 24);
final marginRowBintang = EdgeInsets.only(top: 12, bottom: 12);
final marginRowRating = EdgeInsets.only(top: 12, bottom: 12, left: 4);
final marginJalan = EdgeInsets.all(16);
final marginTempat = EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 12);
final marginTanggal = EdgeInsets.only(left: 16, right: 16, bottom: 6);
final marginJudulDeskripsi = EdgeInsets.only(
  left: 16,
  top: 16,
  bottom: 6,
  right: 16,
);
final marginIsiDeskripsi = EdgeInsets.only(left: 16, right: 16);

final textCentering = TextAlign.center;
final textJustify = TextAlign.justify;

class _MyHomePageState extends State<MyHomePage> {
  late final buttonElevated = ElevatedButton.styleFrom(
    backgroundColor: themeWarna,
    padding: paddingButton,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.zero),
    ),
  );

  void _navGaleri() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const GaleriFoto()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeWarna,
        titleTextStyle: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            margin: marginContainer,
            padding: paddingContainer,
            color: themeWarna,
            child: Center(
              child: Text(
                'Ini adalah contoh penggunaan Container',
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: textCentering,
              ),
            ),
          ),
          Container(
            margin: marginButton,
            child: ElevatedButton(
              style: buttonElevated,
              onPressed: _navGaleri,
              child: Center(
                child: Text(
                  'Tombol Elevated',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: textCentering,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: marginRowBintang,
                child: Icon(Icons.star_rounded, color: Colors.amber, size: 20),
              ),
              Container(
                margin: marginRowRating,
                child: Text(
                  'Rating 4.5',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: textCentering,
                ),
              ),
            ],
          ),
          Flexible(
            child: Image.asset(
              'assets/image_latihan1.jpg',
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class GaleriFoto extends StatelessWidget {
  const GaleriFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeWarna,
        titleTextStyle: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        title: const Text("Galeri Foto"),
      ),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Image.asset(
                'assets/image_tugas1.jpg',
                width: double.infinity,
                height: 240,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: marginJalan,
            child: Text(
              'Jalan di Barcelona',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: textCentering,
            ),
          ),
          Container(
            child: Column(
              children: [
                Divider(),
                Row(
                  children: [
                    Container(
                      margin: marginTempat,
                      child: Icon(Icons.place, color: Colors.red, size: 20),
                    ),
                    Container(
                      margin: marginTempat,
                      child: Text(
                        'Lokasi: Barcelona, Spanyol',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: marginTanggal,
                      child: Icon(
                        Icons.calendar_month,
                        color: Colors.lightBlue,
                        size: 20,
                      ),
                    ),
                    Container(
                      margin: marginTanggal,
                      child: Text(
                        'Publikasi: 13 Agustus 2013',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                Divider(),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: marginJudulDeskripsi,
                child: Text(
                  'Deskripsi',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: marginIsiDeskripsi,
                child: Text(
                  'Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciaptkan pemandangan yang sibuk dan energik.',
                  style: TextStyle(fontSize: 16),
                  textAlign: textJustify,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
