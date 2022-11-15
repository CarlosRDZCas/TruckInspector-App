import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trailerinspector/src/components/components.dart';

import '../provider/providers.dart';
import '../services/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          color: const Color(0xAAF0F0F0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: const [
                LoginLogo(),
                FormLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final authService = Provider.of<AuthService>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Center(
        child: Form(
            key: authProvider.frmKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                    cursorColor: Colors.grey[700],
                    decoration: InputDecoration(
                        floatingLabelStyle:
                            TextStyle(color: Colors.black.withOpacity(0.9)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(18)),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        labelText: 'Usuario'),
                    onChanged: (value) {
                      authProvider.user = value;
                    },
                    validator: (value) =>
                        value!.isEmpty ? "Ingrese el usuario" : null,
                    textInputAction: TextInputAction.next),
                const SizedBox(height: 30),
                TextFormField(
                    obscureText: true,
                    cursorColor: Colors.grey[700],
                    decoration: InputDecoration(
                        floatingLabelStyle:
                            TextStyle(color: Colors.black.withOpacity(0.9)),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(18)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        labelText: 'Contraseña'),
                    onChanged: (value) {
                      authProvider.password = value;
                    },
                    validator: (value) {
                      return (value != null && value.length >= 6)
                          ? null
                          : "La contraseña debe tener al menos 6 caracteres";
                    },
                    textInputAction: TextInputAction.next),
                const SizedBox(height: 10),
                Row(children: [
                  Checkbox(
                      value: true,
                      onChanged: (val) {},
                      checkColor: Colors.white,
                      fillColor:
                          MaterialStateProperty.all(CustomColors.primary)),
                  const Text('Recordar'),
                  const SizedBox(width: 80),
                  TextButton(
                      child: const Text('Olvide mi contraseña'),
                      onPressed: () {})
                ]),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(5),
                      backgroundColor:
                          MaterialStateProperty.all(CustomColors.primary),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)))),
                  onPressed: authService.autenticando
                      ? null
                      : () async {
                          FocusScope.of(context).unfocus();
                          final login = await authService.login(
                              authProvider.user.trim(),
                              authProvider.password.trim());
                          if (login) {
                            Navigator.pushReplacementNamed(context, 'usuarios');
                          } else {
                            ShowSnackBar(
                                context, 'Datos incorrectos', 5, Colors.red);
                          }
                        },
                  child: const SizedBox(
                      width: 280,
                      child: Center(
                          child: Text(
                        'Iniciar Sesion',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ))),
                ),
                const SizedBox(height: 15)
              ],
            )),
      ),
    );
  }
}

class LoginLogo extends StatelessWidget {
  const LoginLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: Image.asset(
          'assets/images/logo.png',
          scale: 1.8,
        ));
  }
}
