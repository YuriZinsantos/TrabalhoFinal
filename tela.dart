import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/Cartao.dart';

void main() {
  runApp(MaterialApp(
    home: tela(),
  ));
}


class tela extends StatefulWidget {
  const tela({Key? key}) : super(key: key);

  @override
  _telaState createState() => _telaState();
}

class _telaState extends State<tela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Expresso café'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
            children: <Widget>[
              Image.asset('imagens/logo.jpeg'),
              SizedBox(height: 15),
              Text("Horario de atendimento",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              Text( "7:00 as 20:00",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 25),

              ElevatedButton(
                child: Text("Efetue seu pedido",
                    style: TextStyle(
                      fontSize: 20,
                    )),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pedidos()),
                  );
                },
              ),
            ]
        ),
      ),


    );
  }
}

class Pedidos extends StatefulWidget {
  const Pedidos({Key? key}) : super(key: key);

  @override
  _PedidosState createState() => _PedidosState();
}

class _PedidosState extends State<Pedidos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text("Cardapio"),
          backgroundColor: Colors.orange,
        ),
        body: Container(
            child: SingleChildScrollView(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    Text("Cafés",
                      style: TextStyle(
                        fontSize: 45,
                      ),
                    ),
                    RaisedButton(
                      child:
                      Text("expresso............6,00",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => formadepagamento()),
                        );
                      },
                    ),
                    RaisedButton(
                      child:
                      Text("Macchiato............8,50",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => formadepagamento()),
                        );
                      },
                    ),
                    RaisedButton(
                      child:
                      Text("cappucino............11,50",
                          style: TextStyle(
                            fontSize: 20,
                          )
                      ),

                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => formadepagamento()),
                        );
                      },
                    ),
                    RaisedButton(
                      child:
                      Text("Cherrycino............15,50",
                          style: TextStyle(
                            fontSize: 20,
                          )
                      ),

                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => formadepagamento()),
                        );
                      },
                    ),
                    RaisedButton(
                      child:
                      Text("mocha............12,55",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => formadepagamento()),
                        );
                      },
                    ),
                  ],
                )
            )
        )
    );
  }
}
class formadepagamento extends StatefulWidget {
  const formadepagamento({Key? key}) : super(key: key);

  @override
  _formadepagamentoState createState() => _formadepagamentoState();
}

class _formadepagamentoState extends State<formadepagamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("forma de pagamento",
          style: TextStyle(
            fontSize: 25,
          ),),

      ),
      body: Container(
          child: SingleChildScrollView(
              padding: EdgeInsets.all(30),
              child: Column(
                  children: <Widget>[

                    //RaisedButton(
                    //child:
                    //Text("Formas de pagamento",
                    //  style: TextStyle(
                    // fontSize: 20,
                    //)),

                    //onPressed: () {
                    //Navigator.push(context,
                    //MaterialPageRoute(builder: (context) =>PedidoEfetuado()),
                    //);
                    //},
                    //),
                    RaisedButton(
                      child:
                      Text("Dinheiro",
                          style: TextStyle(
                            fontSize: 20,
                          )),

                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>Troco()),
                        );
                      },
                    ),
                    RaisedButton(
                      child:
                      Text("Cartão",
                          style: TextStyle(
                            fontSize: 20,
                          )),

                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cartao()),
                        );
                      },
                    ),
                  ]
              )
          )
      ),
    );
  }
}
class PedidoEfetuado extends StatefulWidget {
  const PedidoEfetuado({Key? key}) : super(key: key);

  @override
  _PedidoEfetuadoState createState() => _PedidoEfetuadoState();
}

class _PedidoEfetuadoState extends State<PedidoEfetuado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Pedido Realizado",
          style: TextStyle(
            fontSize: 45,
          ),),

      ),
      body: Center(
        child: Text('Obrigado volte sempre',
        style: TextStyle(
          fontSize: 50,
        ),),
      ),
    );
  }
}
class Troco extends StatefulWidget {
  const Troco({Key? key}) : super(key: key);

  @override
  _TrocoState createState() => _TrocoState();
}

class _TrocoState extends State<Troco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
      backgroundColor: Colors.orange,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(Icons.monetization_on),
                  Expanded(
                    child: TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Troco para',

                      ),
                    ),
                  )
                ],
              ),
              RaisedButton(
                  child: Text("Finalizar Compra"),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PedidoEfetuado()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
