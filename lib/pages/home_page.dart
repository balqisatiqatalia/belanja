import 'package:belanja/models/item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget{
  final List<Item> items=[
    Item(name: 'Sugar', price: 5000, Qty: 5),
    Item(name: 'Salt', price: 2000, Qty: 8),
    Item(name: 'Rice', price: 20000, Qty: 6),
    Item(name: 'Noodle', price: 3500, Qty: 10),
  ];
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),

          itemCount: items.length,
          itemBuilder: (context, index){
            final item= items[index];
            return InkWell(
              onTap: (){
                Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) => ItemPage(tempItem: item)),
                 );
              },
              child: Card(
                child: Container(
                  margin:EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ) ),
                         Expanded(
                        child: Text(
                          item.Qty.toString(),
                          textAlign: TextAlign.end,
                        ) )
                    ],),
                  ),
              ),
            );
          }
        ),
      ),
    ),
  );
  }
}

