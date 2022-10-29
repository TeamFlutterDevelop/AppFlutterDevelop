import 'package:appflutterfevelop/home_page.dart';
import 'package:appflutterfevelop/registrar_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usuarioEmail = TextEditingController();
  final contrasena = TextEditingController();

  void validarUsuario(){
    if (usuarioEmail.text == "narvaezkevin82@gmail.com" && contrasena.text == "1234"){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const HomePage()));
    }else {
      mostrarMensaje("Daotos Incorrectar");
    }
  }

  void mostrarMensaje(String mensaje){
    final pantalla =  ScaffoldMessenger.of(context);
    pantalla.showSnackBar(
        SnackBar(
          content: Text(mensaje, style:const TextStyle(fontSize: 20),),
          backgroundColor: const Color(0xFFD50000),
          duration: const Duration(seconds: 10),
          action: SnackBarAction(
            label: "Aceptar",
            onPressed: pantalla.hideCurrentSnackBar,
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFFFF0B2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 50),
          child: Center(
              child: Column(
                children: [
                  Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                    margin: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        border: Border.all(color: Colors.yellow, width: 2),
                        color: Colors.amber),
                    child: const Image(
                      image: AssetImage("assets/iconequipaje.png"),
                      width: 150,
                      height: 150,
                    ),
                  ),
                  TextFormField(
                    controller: usuarioEmail,
                    decoration: const InputDecoration(
                        labelText: 'Correo electrónico',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.amber,
                          size: 20,
                        )),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    //keyboardType: TextInputType.number,
                    controller: contrasena,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.key,
                        color: Colors.amber,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(200, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          shadowColor: Colors.black26,
                          textStyle: const TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 21)),
                      onPressed: () {
                        validarUsuario();
                      },
                      child: const Text("Ingresar")
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              color: Colors.blue)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegistrarPage()));
                      },
                      child: const Text('Registrarse')),
                ],
              )
          ),
        ),
      ),
    );
  }
}
