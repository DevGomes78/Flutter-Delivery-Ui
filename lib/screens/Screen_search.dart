import 'package:flutter/material.dart';

Widget ScreenSearch() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        Text(
          'O melhor da comida Caseira 😋',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffF6D5D),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: ('Procurar...'),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                color: Colors.orangeAccent,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
