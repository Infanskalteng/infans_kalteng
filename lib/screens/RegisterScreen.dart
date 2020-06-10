import 'package:flutter/material.dart';
import 'package:infanskalteng/components/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infanskalteng/auth/auth.dart';
import 'package:infanskalteng/auth/auth_provider.dart';
import 'package:infanskalteng/screens/LoginScreen.dart';

final _firestore = Firestore.instance;
FirebaseUser loggedInUser;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({this.onSignedIn});
  final VoidCallback onSignedIn;
  static String id = 'Register_Screen';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

enum FormType {
  login,
  register,
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool showSpinner = false;
  String _email;
  String _password;
  String nama;
  String kcontact;
  String sto;
  String hp;

//  bool validateAndSave() {
//    final FormState form = formKey.currentState;
//    if (form.validate()) {
//      form.save();
//      return true;
//    }
//    return false;
//  }

  Future<void> validateAndSubmit() async {
    setState(() {
      showSpinner = true;
    });
    print(_email);
    print(_password);
      try {
        final BaseAuth auth = AuthProvider.of(context).auth;
          final String userId = await auth.createUserWithEmailAndPassword(_email, _password);
          print('Registered user: $userId');
        if (userId != null){
          //Navigator.pushNamed(context, SmartDash.id);
          _firestore.collection('register')
          .document(nama)
          .setData({
            'HP': hp,
            'email': _email,
            'kcontact': kcontact,
            'nama' : nama,
            'sto' : sto,
          });
          setState(() {
            showSpinner = false;
          });
        }
        widget.onSignedIn();
      } catch (e) {
        print('Error: $e');
      }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: ModalProgressHUD(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'Signup',
                                style:
                                TextStyle(
                                    color: kTextUngu,
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                key: Key('email'),
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value) {
                                  _email = value;
                                },
                                decoration: InputDecoration(
                                    labelText: 'EMAIL',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    // hintText: 'EMAIL',
                                    // hintStyle: ,
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),
                              ),
                              SizedBox(height: 10.0),
                              TextFormField(
                                key: Key('password'),
                                onChanged: (value) {
                                  _password = value;
                                },
                                decoration: InputDecoration(
                                    labelText: 'PASSWORD ',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),
                                obscureText: true,
                              ),
                              SizedBox(height: 10.0),
                              TextField(
                                onChanged: (value) {
                                  nama = value;
                                  //Do something with the user input.
                                },
                                decoration: InputDecoration(
                                    labelText: 'NAMA SALES FORCE ',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),
                              ),
                              SizedBox(height: 10.0),
                              TextField(
                                onChanged: (value) {
                                  kcontact = value;
                                  //Do something with the user input.
                                },
                                decoration: InputDecoration(
                                    labelText: 'KODE SALES FORCE',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),
                              ),
                              SizedBox(height: 10.0),
                              TextField(
                                onChanged: (value) {
                                  sto = value;
                                  //Do something with the user input.
                                },
                                decoration: InputDecoration(
                                    labelText: 'STO',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),
                              ),
                              SizedBox(height: 10.0),
                              TextField(
                                onChanged: (value) {
                                  hp = value;
                                  //Do something with the user input.
                                },
                                decoration: InputDecoration(
                                    labelText: 'NO HP',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),
                              ),
                              SizedBox(height: 20.0),
                              Container(
                                  height: 40.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(20.0),
                                    shadowColor: Colors.purpleAccent,
                                    color: kTextUngu,
                                    elevation: 7.0,
                                    child: GestureDetector(
                                      onTap: validateAndSubmit,
                                      child: Center(
                                        child: Text(
                                          'SIGNUP',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat'),
                                        ),
                                      ),
                                    ),
                                  )),
                              SizedBox(height: 20.0),
                              Container(
                                height: 40.0,
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black,
                                          style: BorderStyle.solid,
                                          width: 1.0),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(20.0)),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                      setState(() {
                                        showSpinner = true;
                                      });
                                    },
                                    child:

                                    Center(
                                      child: Text('Go Back',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat')),
                                    ),


                                  ),
                                ),
                              ),
                            ],
                          )),
                    ]),
              ),
            ),
            inAsyncCall: showSpinner),
      ),
    );
  }
}


