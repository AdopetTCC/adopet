// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:adopet/utils/utils.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class Configuracoes extends StatefulWidget {
  const Configuracoes({super.key});

  @override
  State<Configuracoes> createState() => _Configuracoes();
}

File? uImage;

class _Configuracoes extends State<Configuracoes> {
  Future getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);

      if (image == null) return;

      final imagePermanent = await saveFilePermanently(image.path);

      setState(() {
        uImage = imagePermanent;
      });
    } on PlatformException catch (e) {
      debugPrint('Failed to pick image: $e');
    }
  }

  Future<File> saveFilePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF5CB2FF),
            Color(0xFF0074FC),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: maxWidth,
            child: Column(
              children: [
                SizedBox(
                  width: 160,
                  height: 160,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: uImage != null
                              ? CircleAvatar(
                                  radius: 80.0,
                                  backgroundImage: FileImage(uImage!),
                                )
                              : const CircleAvatar(
                                  radius: 80.0,
                                  backgroundImage: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/512/706/706840.png",
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Material(
                          type: MaterialType.transparency,
                          child: Ink(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text(
                                        'Escolha uma opção',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                      content: SingleChildScrollView(
                                        child: ListBody(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                                getImage(
                                                  ImageSource.camera,
                                                );
                                              },
                                              splashColor: Colors.black,
                                              child: Row(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.all(8),
                                                    child: Icon(
                                                      Icons.camera,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Câmera',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                                getImage(ImageSource.gallery);
                                              },
                                              splashColor: Colors.black,
                                              child: Row(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.all(8),
                                                    child: Icon(
                                                      Icons.image_outlined,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Galeria',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Adopet',
                    style: TextStyle(
                      fontSize: 35,
                      letterSpacing: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),
                    child: Column(
                      children: [
                        BtnPerfil(nome: 'Alterar Nome'),
                        BtnPerfil(nome: 'Alterar Senha'),
                        BtnPerfil(nome: 'Notificações'),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Sobre Mim',
                          style: TextStyle(
                            fontFamily: 'AoboshiOne',
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Material(
                          elevation: 4,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            minLines: 3,
                            maxLines: 8,
                            decoration: InputDecoration(
                              hintStyle: const TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                              fillColor: Colors.white30,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 45),
              ),
              onPressed: () {
                showSnackBar(context, 'Perfil atualizado!');
              },
              child: Text(
                'Atualizar',
                style: TextStyle(
                  fontFamily: 'AoboshiOne',
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BtnPerfil extends StatelessWidget {
  final String nome;

  const BtnPerfil({super.key, required this.nome});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.9),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                nome,
                style: const TextStyle(
                  fontFamily: 'AoboshiOne',
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              const Icon(
                Icons.navigate_next_rounded,
                color: Colors.black,
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
