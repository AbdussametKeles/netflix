import 'package:flutter/material.dart';
import 'package:netflix/Page/anasayfa.dart';

class CreateProfilePage extends StatefulWidget {
  @override
  _CreateProfilePageState createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlatButton(
            child: Text(
              "Cancel",
              style: TextStyle(color: Colors.white, fontSize: 12.0),
            ),
          ),
          title: Center(child: Text("Create Profile")),
          actions: <Widget>[
            FlatButton(
              child: Text(
                "Save",
                style: TextStyle(color: Colors.white),
                
              ),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder:(context)=>AnaSayfa()));
              },
            )
          ],
        ),
        body: Align(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBshi_KRgxaUnlwmEFklw7Jyox0vqpbcOiqldGpK6qqQ96rHxY",
                width: 150,
                height: 150,
              ),
              FlatButton(
                child: Text("CHANGE"),
                
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(),
              ),
              SwitchListTile(
                value: true,
                title: Text("FOR KIDS"),
            
              )
            ],
          ),
        ));
  }
}
