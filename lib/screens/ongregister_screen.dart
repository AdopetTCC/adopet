//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:adopet/model/user_model.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:adopet/screens/login_screen.dart';

class OngRegisterScreen extends StatefulWidget {
  const OngRegisterScreen({Key? key}) : super(key: key);

  @override
  _OngRegistrationScreenState createState() => _OngRegistrationScreenState();
}

class _OngRegistrationScreenState extends State<OngRegisterScreen> {
  //final _auth = FirebaseAuth.instance;

  // string for displaying the error Message
  String? errorMessage;

  // our form key
  final _formKey = GlobalKey<FormState>();
  // editing Controller
  final NameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();
  final locEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final OngNameField = TextFormField(
      autofocus: false,
      controller: NameEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("Name cannot be Empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid name(Min. 3 Character)");
        }
        return null;
      },
      onSaved: (value) {
        NameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 237, 238, 237),
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: const EdgeInsets.symmetric(horizontal: 50),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );

    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        // reg expression for email validation
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 237, 238, 237),
        prefixIcon: Icon(Icons.mail),
        contentPadding: const EdgeInsets.symmetric(horizontal: 50),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password(Min. 6 Character)");
        }
      },
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 237, 238, 237),
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.symmetric(horizontal: 50),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );

    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText: true,
      validator: (value) {
        if (confirmPasswordEditingController.text !=
            passwordEditingController.text) {
          return "Password don't match";
        }
        return null;
      },
      onSaved: (value) {
        confirmPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 237, 238, 237),
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.symmetric(horizontal: 50),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );

    final onglocField = TextFormField(
      autofocus: false,
      controller: locEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("Location cannot be Empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Location(Min. 3 Character)");
        }
        return null;
      },
      onSaved: (value) {
        locEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 237, 238, 237),
        prefixIcon: Icon(Icons.map_outlined),
        contentPadding: const EdgeInsets.symmetric(horizontal: 50),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );

    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Color(0xFF0074FC),
      child: MaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 23),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            //signUp(emailEditingController.text, passwordEditingController.text);
          },
          child: Text(
            "Cadastrar",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'AoboshiOne',
                fontWeight: FontWeight.bold),
          )),
    );

    final cancelButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Color(0xFFF31717),
      child: MaterialButton(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 23),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            "Voltar",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'AoboshiOne',
                fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF5CB2FF),
                      Color(0xFF0074FC),
                    ])),
            height: 120,
            child: const Center(
              child: Text(
                'Adopet',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'AoboshiOne',
                  fontSize: 67.57,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nome:',
                        style: TextStyle(
                          color: Color(0xFF373737),
                          fontFamily: 'AoboshiOne',
                          fontSize: 16.7,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 06,
                      ),
                      OngNameField,
                    ],
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Confirmar E-mail:',
                        style: TextStyle(
                          color: Color(0xFF373737),
                          fontFamily: 'AoboshiOne',
                          fontSize: 16.7,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 06,
                      ),
                      emailField,
                    ],
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Senha:',
                        style: TextStyle(
                          color: Color(0xFF373737),
                          fontFamily: 'AoboshiOne',
                          fontSize: 16.7,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 06,
                      ),
                      passwordField,
                    ],
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Confirmar Senha:',
                        style: TextStyle(
                          color: Color(0xFF373737),
                          fontFamily: 'AoboshiOne',
                          fontSize: 16.7,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 06,
                      ),
                      confirmPasswordField,
                    ],
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Localização:',
                        style: TextStyle(
                          color: Color(0xFF373737),
                          fontFamily: 'AoboshiOne',
                          fontSize: 16.7,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 06,
                      ),
                      onglocField,
                    ],
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      signUpButton,
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      cancelButton,
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
    /*void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => {postDetailsToFirestore()})
            .catchError((e) {
          Fluttertoast.showToast(msg: e!.message);
        });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }
  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sedning these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    // writing all the values
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.firstName = firstNameEditingController.text;
    userModel.secondName = secondNameEditingController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully :) ");

    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => HomeScreen()),
        (route) => false);*/
  }
}
