import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Dulcería Alegrías';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dulcería Alegrías'),
          backgroundColor: const Color(0xffb80303),
        ),
        body: ListView(
          children: <Widget>[
            miCard(),
            miCardImage(),
            miCardDesign(),
            miCard1(),
          ],
        ));
  }
}

Card miCard() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        const ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Chocolates'),
          subtitle: Text(
              'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
          leading: Image(
            image: AssetImage('images/carlosV.jpg'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(onPressed: () => {}, child: const Text('Aceptar')),
            TextButton(onPressed: () => {}, child: const Text('Cancelar'))
          ],
        )
      ],
    ),
  );
}

Card miCardImage() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),
    shadowColor: Colors.red,
    elevation: 10,
    child: Column(
      children: <Widget>[
        const Image(
          image: NetworkImage(
              'https://media.istockphoto.com/id/1126477096/es/foto/dulces-mexicanos-artesanales-a-mano.jpg?s=1024x1024&w=is&k=20&c=NGqw0EIECDws4MpLv7So2Kn_MIjj1c095Bsujt8Yj5A='),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text('Dulces Mexicanos'),
        ),
      ],
    ),
  );
}

Card miCard1() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),
    shadowColor: Colors.red,
    elevation: 10,
    child: Column(
      children: <Widget>[
        const Image(
          image: NetworkImage(
              'https://editorialtelevisa.brightspotcdn.com/wp-content/uploads/2019/02/Recetas-de-pasteles.jpg'),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text('Pasteles'),
        ),
      ],
    ),
  );
}

Card miCardDesign() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),
    shadowColor: Colors.red,
    elevation: 10,
    child: Column(
      children: <Widget>[
        const Image(
          image: NetworkImage(
              'https://www.elsoldedurango.com.mx/local/hei5o-pinatas/ALTERNATES/LANDSCAPE_768/Pi%C3%B1atas'),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text('Piñatas'),
        ),
      ],
    ),
  );
}
