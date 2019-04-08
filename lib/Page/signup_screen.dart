import 'package:flutter/material.dart';
import 'package:netflix/Page/create_profil_screen.dart';


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var _formKey = new GlobalKey<FormState>();
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Center(
            child: Image.network(
                "https://cdn2.iconfinder.com/data/icons/metro-uinvert-dock/256/Netflix.png")),
        actions: <Widget>[
          FlatButton(
            child: Text("Help"),
            textColor: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey,
                      border: new Border.all(
                        color: Colors.black26,
                        width: 1.0,
                      ),
                    ),
                    child: TextFormField(
                      onSaved: (value) {
                        email = value;
                      },
                      decoration: InputDecoration(
                        hintText: "Email or phone number",
                      ),
                      keyboardType: TextInputType.emailAddress,
                    )),
                new Container(
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey,
                      border: new Border.all(
                        color: Colors.black26,
                        width: 1.0,
                      ),
                    ),
                    child: TextFormField(
                      onSaved: (value) {
                        password = value;
                      },
                      decoration: InputDecoration(hintText: "Password",suffixIcon: FlatButton(child: Text("Show"),)),
                      obscureText: true,
                      
                    )),
                SizedBox(
                  height: 20.0,
                ),
                new Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: FlatButton(
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>CreateProfilePage()));
                      },
                    )),
                FlatButton(
                  child: Text("Recover Password",
                      style: TextStyle(color: Colors.grey)),
                      
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
