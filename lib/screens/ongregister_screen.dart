//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:adopet/model/user_model.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:adopet/resources/auth_methods.dart';
import 'package:adopet/widgets/text_field_input.dart';
import 'package:flutter/material.dart';

class OngRegisterScreen extends StatefulWidget {
  const OngRegisterScreen({Key? key}) : super(key: key);

  @override
  _OngRegistrationScreenState createState() => _OngRegistrationScreenState();
}

class _OngRegistrationScreenState extends State<OngRegisterScreen> {
  //final _auth = FirebaseAuth.instance;

  // our form key
  final _formKey = GlobalKey<FormState>();
  // editing Controller
  final TextEditingController _ongNameController = TextEditingController();
  final TextEditingController _telController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _locController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _conPasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _ongNameController.dispose();
    _telController.dispose();
    _emailController.dispose();
    _locController.dispose();
    _passwordController.dispose();
    _conPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final signUpButton = Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF5CB2FF),
            Color(0xFF0074FC),
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          disabledForegroundColor: Colors.transparent.withOpacity(0.38),
          disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // <-- Radius
          ),
          minimumSize: const Size(330, 67),
        ),
        onPressed: () {
          //signUp(emailEditingController.text, passwordEditingController.text);
        },
        child: const Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'AoboshiOne',
              fontWeight: FontWeight.bold),
        ),
      ),
    );
    final cancelButton = Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFFF4E4E),
            Color(0xFFF31717),
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          disabledForegroundColor: Colors.transparent.withOpacity(0.38),
          disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // <-- Radius
          ),
          minimumSize: const Size(330, 67),
        ),
        onPressed: () => Navigator.of(context).pop(),
        child: const Text(
          "Cancelar",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'AoboshiOne',
              fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
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
                  height: 140,
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
                Positioned(
                  top: -8,
                  left: -46,
                  child: Image.asset('icons/pata1.png'),
                ),
                Positioned(
                  bottom: 45,
                  right: -50,
                  child: Image.asset('icons/pata4.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Form(
              key: _formKey,
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
                        TextFieldInput(
                            textEditingController: _ongNameController,
                            hintText: 'Nome',
                            textInputType: TextInputType.name),
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
                          'Telefone:',
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
                        TextFieldInput(
                            textEditingController: _telController,
                            hintText: 'Telefone',
                            textInputType: TextInputType.number),
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
                          'E-mail:',
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
                        TextFieldInput(
                            textEditingController: _emailController,
                            hintText: 'E-mail',
                            textInputType: TextInputType.emailAddress),
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
                        TextFieldInput(
                          textEditingController: _passwordController,
                          hintText: 'Senha',
                          textInputType: TextInputType.text,
                          isPass: true,
                        ),
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
                        TextFieldInput(
                          textEditingController: _conPasswordController,
                          hintText: 'Confirmar senha',
                          textInputType: TextInputType.text,
                          isPass: true,
                        ),
                      ],
                    ),
                  ),
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
                  TextFieldInput(
                    textEditingController: _locController,
                    hintText: 'Endereço',
                    textInputType: TextInputType.text,
                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
