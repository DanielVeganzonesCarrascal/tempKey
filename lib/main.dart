import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  GlobalKey<MiTextoState> clave = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scaffold"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              FlatButton(onPressed: (){
                print("click");
                clave.currentState.repintar("nuevo texto");
                },
               child: Text("Click")),
              MiTexto(
                key: clave,
                cad: "hola"
              ),
            ],
          ),
        )
    );
  }
}

//====================================================
class MiTexto extends StatefulWidget {
  String cadena;
  MiTexto({Key key, String cad}): super(key: key){
    print("constructor mi texto" + cad + " " + key.toString());
    this.cadena=cad;
  }
  @override
  MiTextoState createState() => MiTextoState(cadena);
}


class MiTextoState extends State<MiTexto> {
  String micadena="";

  repintar(String c){
    setState((){
      this.micadena=c;
    });
  }

  MiTextoState(String cad){
    print("constructor mitextostate"+cad);
    this.micadena=cad;
  }
  @override
  Widget build(BuildContext context) {
    return Text(micadena);
  }
}

