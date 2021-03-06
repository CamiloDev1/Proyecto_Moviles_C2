import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'login');
            },
            icon: Icon(Icons.arrow_back, color: Colors.pinkAccent)),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 97, 23, 194),
        title: Row(
          children: const [
            Text('Recuperar Contraseña'),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Image(
                image: AssetImage('assets/images/splash.png'),
                height: 30,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.only(right: 10, left: 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10, top: 30),
                padding: const EdgeInsets.only(right: 13),
                child: const Text(
                  'Ingresa tu email para recuperar tu contraseña',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                margin: const EdgeInsets.only(left: 0, right: 215),
                child: const Text(
                  'Correo electrónico',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 18),
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    hintText: 'Direccion de correo',
                  ),
                  onChanged: (text) {},
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Ingrese su correo electronico registrado y le enviaremos un correo electrónico que contiene un enlace para restablecer su contraseña',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 210),
              Container(
                padding: const EdgeInsets.only(top: 220, left: 10),
                child: SizedBox(
                  width: size.width - 70,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () =>
                          {Navigator.pushNamed(context, 'changepassword')},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text(
                        'Enviar Solicitud',
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
