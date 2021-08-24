import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/tela.dart';
import 'package:app/Login.dart';
import 'package:app/Cartao.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
class Tech {
  String label;
  Color color;
  bool isSelected;
  Tech(this.label, this.color, this.isSelected);
}
class _HomeState extends State<Home> {

  List<Tech> _chipsList = [
    Tech("Menor Entrega", Colors.black12, false),
    Tech("Tele Grátis", Colors.black12, false),
    Tech("Vale Refeição", Colors.black12, false),
  ];

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text("Cafeteria"),
        backgroundColor: Colors.orange,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Usuário", style: TextStyle(fontSize: 16)),
              accountEmail: Text("usuario@gmail.com"),
              decoration: BoxDecoration(color: Colors.orange),
              currentAccountPicture: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("imagens/Perfil.jpg"),
                backgroundColor: Colors.yellow,
              ),
            ),
            ListTile(
              title: Text("Endereço de Entrega",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Endereco()));
              },
            ),
            ListTile(
              title: Text("Cartões registrados",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cartao()));
              },
            ),
            ListTile(
              title: Text("Cafeterias Favoritas",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cafeterias()));
              },
            ),
            ListTile(
              title: Text("Sair",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Login()));
              },
            ),
            Divider(color: Colors.yellow, thickness: 1),
            ListTile(
              title: Text("Configurações",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text("Contato",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contato()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(5),
              child: Wrap(
                spacing: 2,
                direction: Axis.horizontal,
                children: techChips(),
              ),
            ),
            SizedBox(height: 10),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column( children: [
                  Icon(Icons.credit_card),
                  //ignore: deprecated_member_use
                  RaisedButton(
                    child: Text("Cartões", style: TextStyle(fontSize: 15)),
                    color: Colors.orange,
                    onPressed: () {
                      showDialog(context: (context),
                          builder: (context) => AlertDialog(
                            content: Text("Atualmente, todas as cafeterias aceitão todos os cartões"),
                            actions: <Widget>[
                              //ignore: deprecated_member_use
                              FlatButton(onPressed: (){
                                Navigator.of(context).pop();
                              },
                                  child: Text("Ok"))
                            ],
                          ));
                    },
                  ),
                ]),
                SizedBox(width: 10),
                Column( children: [
                  Icon(Icons.wallet_giftcard),
                  //ignore: deprecated_member_use
                  RaisedButton(
                    child: Text("Promoções", style: TextStyle(fontSize: 15)),
                    color: Colors.orange,
                    onPressed: () {
                      showDialog(context: (context),
                          builder: (context) => AlertDialog(
                            content: Text("Não há promoções disponiveis no momento"),
                            actions: <Widget>[
                              //ignore: deprecated_member_use
                              FlatButton(onPressed: (){
                                Navigator.of(context).pop();
                              },
                                  child: Text("Ok"))
                            ],
                          ));
                    },
                  ),
                ]),
                SizedBox(width: 10),
                Column( children: [
                  Icon(Icons.add_business),
                  //ignore: deprecated_member_use
                  RaisedButton(
                    child: Text("Personalizados", style: TextStyle(fontSize: 15)),
                    color: Colors.orange,
                    onPressed: () {
                      showDialog(context: (context),
                          builder: (context) => AlertDialog(
                            content: Text("Atualmente, todas as cafeterias oferencem serviços de personalização de cafés"),
                            actions: <Widget>[
                              //ignore: deprecated_member_use
                              FlatButton(onPressed: (){
                                Navigator.of(context).pop();
                              },
                                  child: Text("Ok"))
                            ],
                          ));
                    },
                  ),
                ]),
              ],
            ),
            SizedBox(height: 30),
            Text("Cafés Abertos:", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Café Expresso", style: TextStyle(fontSize: 20)),
                SizedBox(width: 20),
                //ignore: deprecated_member_use
                RaisedButton(
                  child: Text("Visitar Café"),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => tela()));
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Cafés Delícia _", style: TextStyle(fontSize: 20)),
                SizedBox(width: 20),
                //ignore: deprecated_member_use
                RaisedButton(
                  child: Text("Visitar Café"),
                  onPressed: (){},
                ),
              ],
            ),
            SizedBox(height: 20),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("La's Coffee _", style: TextStyle(fontSize: 20)),
                SizedBox(width: 20),
                //ignore: deprecated_member_use
                RaisedButton(
                  child: Text("Visitar Café"),
                  onPressed: (){},
                ),
              ],
            ),
            SizedBox(height: 20),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Pato's ____", style: TextStyle(fontSize: 20)),
                SizedBox(width: 20),
                //ignore: deprecated_member_use
                RaisedButton(
                  child: Text("Visitar Café"),
                  onPressed: (){},
                ),
              ],
            ),
            SizedBox(height: 30),
            Image.asset("imagens/cafeexpressoa.png"),
          ],
        ),
      ),
    );
  }

  List<Widget> techChips() {
    List<Widget> chips = [];
    for (int i = 0; i < _chipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: FilterChip(
          label: Text(_chipsList[i].label),
          labelStyle: TextStyle(color: Colors.black),
          backgroundColor: _chipsList[i].color,
          selected: _chipsList[i].isSelected,
          onSelected: (bool value) {
            setState(() {
              _chipsList[i].isSelected = value;
            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}

class Endereco extends StatefulWidget {
  const Endereco({Key? key}) : super(key: key);

  @override
  _EnderecoState createState() => _EnderecoState();
}
class _EnderecoState extends State<Endereco> {
  TextEditingController _textControll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text("Endereço"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(20),
              child: TextField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                      labelText: "Digite o endereço"),
                  controller: _textControll),
            ),
            //ignore: deprecated_member_use
            RaisedButton(
              child: Text("Salvar"),
              onPressed: (){print("Enderço é: $_textControll");},
            ),
            SizedBox(height: 20),
            Icon(Icons.water_damage_rounded),
            Padding(padding: EdgeInsets.all(20),
                child: Text("Endereço salvo: ")),
            //ignore: deprecated_member_use
            RaisedButton(
              child: Text("Voltar"),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Cafeterias extends StatefulWidget {
  const Cafeterias({Key? key}) : super(key: key);

  @override
  _CafeteriasState createState() => _CafeteriasState();
}

class _CafeteriasState extends State<Cafeterias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text("Cafeterias Favoritadas"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        //ignore: deprecated_member_use
        child: RaisedButton(
          child: Text("Voltar"),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Home()));
          },
        ),
      ),
    );
  }
}

class Contato extends StatefulWidget {
  const Contato({Key? key}) : super(key: key);

  @override
  _ContatoState createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text("Contato dos desenvolvedores"),
        backgroundColor: Colors.orange,
      ),
      body: ListView( children: <Widget>[
        Center(
          child: Text('Desenvolvedores', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
        ),
        DataTable(columns: [
          DataColumn(label: Text('Desenvolvedor', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black))),
          DataColumn(label: Text('Email', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black))),
        ],
          rows: [
            DataRow(cells: [
              DataCell(Text('Isadora Vargas')),
              DataCell(Text('tarraynama@gmail.com')),
            ]),
            DataRow(cells: [
              DataCell(Text('Andrey')),
              DataCell(Text('Andreypiacentini4@gmail.com')),
            ]),
            DataRow(cells: [
              DataCell(Text('Yuri')),
              DataCell(Text('yurirafaelsantos21@gmail.com')),
            ]),
            DataRow(cells: [
              DataCell(Text('Victor')),
              DataCell(Text('victorhj.9@gmail.com')),
            ]),
          ],
        ),
      ],
      ),
    );
  }
}
