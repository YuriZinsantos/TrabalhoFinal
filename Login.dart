import 'package:flutter/material.dart';
import 'package:app/Home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _nameControll = TextEditingController();
  TextEditingController _emailControll = TextEditingController();
  TextEditingController _numControll = TextEditingController();
  TextEditingController _enderControll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            Text('      Bem Vindo ao      \n       Café Expresso     ',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Padding(padding: EdgeInsets.only(left: 30, right: 40),
              child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Nome de usuário",
                      icon: Icon(Icons.account_circle_rounded, color: Colors.black)),
                  controller: _nameControll,
                  onSubmitted: (String name){
                    print("Nome de usuário: $name");
                  }),
            ),
            Padding(padding: EdgeInsets.only(left: 30, right: 40),
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email",
                      icon: Icon(Icons.alternate_email_sharp, color: Colors.black)),
                  controller: _emailControll,
                  onSubmitted: (String email) {
                    print("Email do usuário: $email");
                  }),
            ),
            Padding(padding: EdgeInsets.only(left: 30, right: 40),
              child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Número de telefone",
                      icon: Icon(Icons.ad_units_sharp, color: Colors.black)),
                  controller: _numControll,
                  onSubmitted: (String num) {
                    print("Número do usuário: $num");
                  }),
            ),
            Padding(padding: EdgeInsets.only(left: 30, right: 40),
              child: TextField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                      labelText: "Endereço de entrega: ",
                      icon: Icon(Icons.location_pin, color: Colors.black)),
                  controller: _enderControll,
                  onSubmitted: (String ender) {
                    print("Número do usuário: $ender");
                  }),
            ),
            //ignore: deprecated_member_use
            RaisedButton(
                child: Text("Logar como Cliente"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home()));
                }),
            //ignore: deprecated_member_use
            RaisedButton(
                child: Text("Logar como Cafeteria"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Cafe()));
                }),
          ],
        ),
      ),
    );
  }
}

class Cafe extends StatefulWidget {
  const Cafe({Key? key}) : super(key: key);

  @override
  _CafeState createState() => _CafeState();
}

class _CafeState extends State<Cafe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NOMEDACAFETERIA"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        //ignore: deprecated_member_use
        child: RaisedButton(
            child: Text("Logar como Cafeteria"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home()));
            }),

      ),
    );
  }
}
