import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  var parray=[];
  var parray1=[];
  var parray2=[];
  TextEditingController pname=TextEditingController();
  TextEditingController psymp=TextEditingController();
  TextEditingController pmob=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
        child:Column(
          children: [
            SizedBox(height: 80.0,),
            TextField(
              controller: pname,
              decoration: InputDecoration(
                  hintText: "Enter the patient name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)
                  )
              ),
            ),
            SizedBox(height: 30.0,),
            TextField(
              controller: psymp,
              decoration: InputDecoration(
                  hintText: "Enter the symptoms",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )
              ),
            ),
           SizedBox(height: 30.0,),
            TextField(
              controller: pmob,
              decoration: InputDecoration(
                  hintText: "Enter the mobile number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )
              ),
            ),
            SizedBox(height: 30.0,),
            RaisedButton(
              color: Colors.blue,
              onPressed: (){
                var p1=pname.text;
                var p2=psymp.text;
                var p3=pmob.text;
                // print(nwtask);
                setState(() {
                  parray.add(p1);
                  parray1.add(p2);
                  parray2.add(p3);
                });

              },
              child: Center(child: Text("SUBMIT")),),

            ListView.builder(
                shrinkWrap: true,
                itemCount: parray.length == null? 0: parray.length,
                itemBuilder: (context,index){
                  return Card(
                    elevation: 10.0,
                    child: ListTile(
                        leading: Icon(Icons.play_for_work),
                        title: Text(parray[index],style: TextStyle(color: Colors.indigoAccent,fontSize: 15.0),),
                        subtitle: Text("Symptoms:"+parray1[index]+"\n"+"Mobile Number"+parray2[index],style: TextStyle(color: Colors.indigo,fontSize: 10.0),),
                        trailing: GestureDetector(
                            onTap: (){

                              setState(() {
                                parray.removeAt(index);
                              });
                            },

                            child: Icon(Icons.delete))),
                  );

                }),

          ],
        )
    );
  }
}
