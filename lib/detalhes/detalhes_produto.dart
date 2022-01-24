import 'package:flutter/material.dart';
import 'package:gomes_restaurante/components/textstyle.dart';
import 'package:gomes_restaurante/models/produto.dart';

class Detalhes extends StatefulWidget {
  final Produto produto;

  Detalhes(this.produto);

  @override
  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Detalhes do Prato', style: AppTextStyle.TextFont20),
        centerTitle: true,
      ),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.network(
                  widget.produto.img.toString(),
                  width: 250,
                  height: 200,
                ),
              ),
              Text(
                widget.produto.nome.toString(),
                style: AppTextStyle.TextFont25,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.produto.descricao.toString(),
                style: AppTextStyle.TextFont18,
              ),
              SizedBox(
                height: 20,
              ),
              Text(widget.produto.preco.toString(),
                  style: AppTextStyle.TextFont25Or),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.orangeAccent),
                  child: Expanded(
                    child: Center(
                      child: Text(
                        'Adicionar ao Pedido',
                        style: AppTextStyle.TextFont20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text('favoritas'),
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              title: Text('compras'),
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('conta'),
              backgroundColor: Colors.black),
        ],
      ),
    );
  }
}
