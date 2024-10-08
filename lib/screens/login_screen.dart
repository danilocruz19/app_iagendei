import 'package:app_medico_consultas/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle, color: Colors.blueAccent, size: 45,),
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
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                     SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'E-mail',
                        hintStyle:  TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        fillColor: Colors.black12,
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
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
                          minimumSize:  Size(300, 50),
                          backgroundColor:  Color(0xFF197ADE),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Fazer Login",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      "Não tenho conta.",
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
                                builder: (context) =>  RegisterScreen(),
                              ));
                        },
                        child:  Text(
                          'Fazer registro.',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w800,
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
