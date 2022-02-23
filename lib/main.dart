import 'package:Restaurant/model/Productos.dart';
import 'package:Restaurant/provider/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  ThemeProvider themeChangeProvider = new ThemeProvider();
  late WebViewController _webViewController;
  Productos cake = Productos.listaProductos[0];
  Productos cake1 = Productos.listaProductos[1];
  Productos cake2 = Productos.listaProductos[2];
  Productos cake3 = Productos.listaProductos[3];
  Productos cake4 = Productos.listaProductos[4];
  Productos cake5 = Productos.listaProductos[5];
  Productos cake6 = Productos.listaProductos[6];
  Productos cake7 = Productos.listaProductos[7];
  Productos cake8 = Productos.listaProductos[8];
  Productos cake9 = Productos.listaProductos[9];

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.setTheme =
        await themeChangeProvider.themePreference.getTheme();
  }

  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Nosferatu´s Restaurant",
          style: TextStyle(color: Colors.red),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                'Nosferatu´s Restaurant',
                style: TextStyle(
                    color: Color.fromARGB(255, 240, 34, 34), fontSize: 20),
              ),
              accountEmail:
                  const Text('nosferatu@yahoo.es  "Escribe si te atreves"'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://avatars.githubusercontent.com/u/13682016?v=4',
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2019/03/17/08/13/moon-4060479_960_720.jpg'),
                    opacity: 0.8),
              ),
            ),
            ListTile(
              title: const Text(
                'Nuestro Restaurante',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                _launchUrl(
                  "https://www.castillotinieblas.com/",
                );
              },
            ),
            ListTile(
              title: const Text('Vuelve Pronto',
                  style: TextStyle(color: Colors.red)),
              onTap: () {
                SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(
              children: [item(cake), item(cake1)],
            ),
            Row(
              children: [item(cake2), item(cake3)],
            ),
            Row(
              children: [item(cake4), item(cake5)],
            ),
            Row(
              children: [item(cake6), item(cake7)],
            ),
            Row(
              children: [item(cake8), item(cake9)],
            ),
          ],
        ),
      ),
    );
  }

  Widget item(Productos producto) {
    return Card(
      //width: 150,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InfoPage(producto.foto)),
            );
          },
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      producto.titulo,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.red),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    producto.ingredientes,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 9.5,
                        color: Color.fromARGB(255, 204, 11, 11)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.shopping_cart,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[100],
                          //color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          producto.estado1,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9.5),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.red[100],
                          //color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          producto.estado2,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9.5),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Ratings",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 7,
                            color: Color.fromARGB(255, 7, 7, 7)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Colors.orangeAccent,
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Colors.orangeAccent,
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Colors.orangeAccent,
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Colors.orangeAccent,
                      ),
                      Container(
                        width: 90,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image(
                            fit: BoxFit.cover,
                            alignment: Alignment.topRight,
                            image: AssetImage(producto.foto),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
