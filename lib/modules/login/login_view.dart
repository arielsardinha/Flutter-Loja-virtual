import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loja_virtual/modules/login/login_controller.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrar'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20),
            children: [
              TextFormField(
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                validator: (value) {
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: 'E-mail',
                ),
              ),
              TextFormField(
                controller: controller.senhaController,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                obscureText: true,
                validator: (value) {
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Esqueci minha senha'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.login();
                },
                child: const Text('Entrar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
