import 'package:exam_flutter_1/pages/Add_Card.dart';
import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {

  _addCard(){
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return AddCard();
    }));
  }



  final List<CardItem> cards = [
    CardItem(lastDigits: '9272', expiryDate: "11/25"),
    CardItem(lastDigits: '9272', expiryDate: "11/25"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Card List",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Image(
                        image: AssetImage('assets/images/visa.webp'),
                      ),
                      title: Text(
                        '**** **** **** ${cards[index].lastDigits}',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(cards[index].expiryDate),
                    ),
                  );
                }),
          ),

          //Add Card
          Padding(
            padding: EdgeInsets.all(16.0),
            child: MaterialButton(
              onPressed: () {
                _addCard();
              },
              child: Text(
                "Add Card",
                style: TextStyle(fontSize: 16),
              ),
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          )
        ],
      ),
    );
  }
}



class CardItem {
  final String lastDigits;
  final String expiryDate;

  CardItem({required this.lastDigits, required this.expiryDate});
}
