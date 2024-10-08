import 'package:app_medico_consultas/screens/initial_screen.dart';
import 'package:app_medico_consultas/screens/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameControler = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  bool _backgroundColor = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: _backgroundColor ? Colors.white : Colors.white10,
          body: Form(
            key: _formKey,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 90),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: Colors.blueAccent,
                            size: 45,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Agendei",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xFF197ADE),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: SizedBox(
                        width: 300,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Nome',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10)),
                                fillColor: Colors.black12,
                                filled: true,
                              ),
                              controller: _nameControler,
                              validator: (String? value) {
                                if (value != null && value.isEmpty) {
                                  return 'Insira seu nome';
                                }
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _emailController,
                              validator: (String? value) {
                                if (value != null && value.isEmpty) {
                                  return "Insira um E-mail valido";
                                } else if (value != null &&
                                    !value.contains("@")) {
                                  return 'O E-mail deve conter @';
                                }
                                ;
                              },
                              decoration: InputDecoration(
                                hintText: 'E-mail',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10)),
                                fillColor: Colors.black12,
                                filled: true,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _senhaController,
                              validator: (String? value) {
                                if (value != null && value.isEmpty) {
                                  return 'Insira sua senha';
                                }
                              },
                              decoration: InputDecoration(
                                hintText: 'Senha',
                                hintStyle: const TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10)),
                                fillColor: Colors.black12,
                                filled: true,
                              ),
                              obscureText: true,
                            ),
                            SizedBox(height: 16),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  minimumSize: const Size(300, 50),
                                  backgroundColor: const Color(0xFF197ADE),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) ;
                                },
                                child: Text(
                                  "Criar Conta",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Já tenho conta.",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ));
                              },
                              child: Text(
                                'Fazer login.',
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.w800,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.blueAccent,
                onPressed: () {
                  setState(() {
                    switch (_backgroundColor) {
                      case true:
                        _backgroundColor = false;
                      case false:
                        _backgroundColor = true;
                    }
                  });
                },
                child: Icon(
                  Icons.light_mode_sharp,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              FloatingActionButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InitialScreen()));
              })
            ],
          ),
        ),
      ],
    );
  }
}
