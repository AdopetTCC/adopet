//import 'package:adopet/pages/home_screen.dart';
import 'package:adopet/pages/home_page.dart';
import 'package:adopet/screens/choose_screen.dart';
import 'package:adopet/screens/main_screen.dart';
import 'package:adopet/utils/utils.dart';
import 'package:adopet/widgets/text_field_input.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:adopet/resources/auth_methods.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async {
    String res = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);

    if (res == "sucesso") {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => MainScreen(),
        ),
      );
    } else {
      showSnackBar(context, res);
    }
  }

  @override
  Widget build(BuildContext context) {
    //botão
    final loginButton = Container(
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
          minimumSize: const Size(298, 67),
        ),
        onPressed: loginUser,
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
                  child: Image.asset('./assets/icons/pata1.png'),
                ),
                Positioned(
                  bottom: 45,
                  right: -50,
                  child: Image.asset('./assets/icons/pata4.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
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
                          'E-mail',
                          style: TextStyle(
                            color: Color(0xFF373737),
                            fontFamily: 'AoboshiOne',
                            fontSize: 16.7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 08,
                        ),
                        TextFieldInput(
                            textEditingController: _emailController,
                            hintText: 'E-mail',
                            textInputType: TextInputType.emailAddress)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Senha',
                          style: TextStyle(
                            color: Color(0xFF373737),
                            fontFamily: 'AoboshiOne',
                            fontSize: 16.7,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 08,
                        ),
                        //TextBoxPassw
                        TextFieldInput(
                          textEditingController: _passwordController,
                          hintText: 'Senha',
                          textInputType: TextInputType.text,
                          isPass: true,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 47,
                  ),
                  //botao de login
                  loginButton,
                  const SizedBox(
                    height: 19,
                  ),
                ],
              ),
            ),
            const Text(
              "Não tem uma conta ainda?",
              style: TextStyle(
                fontFamily: 'AoboshiOne',
                color: Color(0xFF373737),
                fontSize: 22.21,
              ),
            ),
            const SizedBox(
              height: 05,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChooseScreen(),
                ),
              ),
              child: const Text(
                'Crie uma aqui',
                style: TextStyle(
                  fontFamily: 'AoboshiOne',
                  color: Color(0xFF0074FC),
                  fontSize: 22.21,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
// login function
void signIn(String email, String password) async {
  if (_formKey.currentState!.validate()) {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Login Successful"),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen())),
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
}*/
