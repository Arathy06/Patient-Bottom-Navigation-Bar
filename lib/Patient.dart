import 'package:flutter/material.dart';
import 'package:flutter_patient_botnavbar/AddPatient.dart';
import 'package:flutter_patient_botnavbar/Search.dart';
import 'package:flutter_patient_botnavbar/View.dart';

class Patient extends StatefulWidget {
  @override
  _PatientState createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  var pages=[Add(),View(),Search()];
  int _myindex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:
          Center(child: Text("Patient Page")),
        ),
        body:pages[_myindex],

        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){

            setState(() {
              _myindex=index;
            });
          },
           currentIndex: _myindex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.yellow,
            iconSize: 20.0,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Patient Name")
                   ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.details),
                 title: Text("View details")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text("Search"))
            ]),
      ),

    );
  }
}
