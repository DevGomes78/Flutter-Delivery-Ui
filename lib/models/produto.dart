import 'package:flutter/cupertino.dart';

class Produto{
 final String? nome;
 final String? descricao;
 final String? preco;
 final String? img;

  Produto({

   @required this.nome,
    @required this.descricao,
    @required this.preco,
    @required this.img,

  });

}