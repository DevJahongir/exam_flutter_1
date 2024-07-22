import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Add Card"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage('assets/images/12.webp'),
              fit: BoxFit.cover
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                "Enter expiration date",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),


              SizedBox(
                height: 2,
              ),


              TextFormField(
                decoration: InputDecoration(),
                keyboardType: TextInputType.number,
              ),


              SizedBox(height: 16),


              TextFormField(
                decoration: InputDecoration(
                ),
                keyboardType: TextInputType.datetime,
              ),
              
              SizedBox(height: 16,),
              
              Text("* Only Visa, MasterCard Issued cards supported")
            ],
          ),
        ),
      ),
    );
  }
}
