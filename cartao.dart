import 'package:flutter/material.dart';
import 'package:app/Login.dart';

class Cartao extends StatefulWidget {
  const Cartao({Key? key}) : super(key: key);

  @override
  _CartaoState createState() => _CartaoState();
}

class _CartaoState extends State<Cartao> {
  bool _selecionarvalor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Forms'),
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
                  Icon(Icons.account_box_sharp),
                  Expanded(
                    child: TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Nome do Titutlar',

                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.credit_card_outlined,
                    color: Colors.blueGrey,
                    size: 24,
                  ),
                  Expanded(
                    child: TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Número do Cartão',
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'CVV',
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.settings_outlined),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_pin),
                      Expanded(
                        child: TextFormField(
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'CEP',
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.business,
                        size: 24,
                      ),
                      Expanded(
                        child: TextFormField(
                          obscureText: false,
                          decoration: InputDecoration
                            (hintText: 'Descricão'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text('salvar informações para compras futuras'),
                  Checkbox(value: _selecionarvalor, onChanged: (_valorcheck){
                    setState(() {
                      if(_selecionarvalor)
                      {
                        _selecionarvalor = false;
                      }else{
                        _selecionarvalor = true;
                      }
                    });
                  }
                  ),
                ],
              ),
              RaisedButton(
                  child: Text("Salvar"),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PedidoEfetuado()));
                    print("Cartão salvo");
                  }),
            ],
          ),
        ),
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
        title: Text("Pedido Efetuado"),
      ),
      body: Center(
        child: Text("Obrigado volte sempre",
        style: TextStyle(
          fontSize: 45,
        ),),
      ),
    );
  }
}
