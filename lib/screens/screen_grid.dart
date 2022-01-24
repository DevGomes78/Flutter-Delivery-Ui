import 'package:flutter/material.dart';
import 'package:gomes_restaurante/components/textstyle.dart';
import 'package:gomes_restaurante/dados/dados.dart';
import 'package:gomes_restaurante/detalhes/detalhes_produto.dart';

final dados = listaProduto;

Widget ScreenGrid() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
          itemCount: dados.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 1.0,
            childAspectRatio: 5 / 5,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context)=>Detalhes(dados[index])));
                    },
                    child: Image.network(
                      dados[index].img.toString(),
                      height: 80,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    dados[index].nome.toString(),
                    style: AppTextStyle.TextFont20Blk
                  ),
                  SizedBox(
                    height: 10,
                  ),

            Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dados[index].preco.toString(),
                        style: AppTextStyle.TextFont20Or
                      ),
                      SizedBox(width: 10),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.shopping_cart_outlined),),

                    ],
                  )
                ],
              ),
            );
          }),
    ),
  );
}
