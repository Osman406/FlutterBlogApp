// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Blog Uygulamasi",
      home: Iskele(),
    );
  }
}

class Iskele extends StatefulWidget {
  const Iskele({Key? key}) : super(key: key);

  @override
  _IskeleState createState() => _IskeleState();
}

class _IskeleState extends State<Iskele> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog Uygulamasi"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  _AnaEkranState createState() => _AnaEkranState();
}

String blogYazisi = "Bloga Hoş Geldiniz";

class _AnaEkranState extends State<AnaEkran> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(blogYazisi),
          // ignore: deprecated_member_use
          RaisedButton(
            onPressed: martGoster,
            child: Text("Mart yazisi "),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            onPressed: nisanGoster,
            child: Text("Nisan  Yazisi "),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            onPressed: mayisGoster,
            child: Text("Mayis  Yazisi "),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            onPressed: haziranGoster,
            child: Text("Haziran  Yazisi "),
          ),
        ],
      ),
    );
  }

  martGoster() {
    setState(() {
      blogYazisi = "Mart Yazisi budur";
    });
  }

  nisanGoster() {
    setState(() {
      blogYazisi = "Nisan Yazisi budur";
    });
  }

  mayisGoster() {
    setState(() {
      blogYazisi = "Mayis Yazisi budur";
    });
  }

  haziranGoster() {
    setState(() {
      blogYazisi = "Haziran Yazisi budur";
    });
  }
}