import 'package:flutter/material.dart';

class View extends StatelessWidget {
  var pname=["Ammu","Arathy","Arun","Deen","Diya"];
  var psymp=["Fever","Headache","Throatpain","Fever","Fever"];
  var pmob=["8016578424","9995627959","9446797070","7907770315","9496462176"];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white,Colors.indigoAccent])
      ),
      child: ListView.builder(
          itemCount: pname.length,
          itemBuilder: (context,index){
            return Card(
              elevation: 10.0,
              child: ListTile(
                leading: Icon(Icons.person,color: Colors.blue,),
                trailing: Icon(Icons.delete,color: Colors.red,),
                title: Text(pname[index],style: TextStyle(color: Colors.deepOrange,fontSize: 15.0),),
                subtitle: Text("Symptoms:"+psymp[index]+"\n"+"Mobile Number:"+pmob[index],style: TextStyle(color: Colors.greenAccent,fontSize: 10.0),),
              ),
            );

          }
      ),
    );
  }
}
