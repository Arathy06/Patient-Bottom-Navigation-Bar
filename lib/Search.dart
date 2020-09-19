import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(height: 80.0,),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter patient name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
              prefixIcon: Icon(Icons.search)
            ),
          ),
          SizedBox(height: 30.0,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.cyan,
            ),
            height: 50.0,
            width: 100.0,
            child:
            Center(child: Text("SEARCH")),
          )
        ],
      ),
    );
  }
}
