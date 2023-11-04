import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'live.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _form = GlobalKey<FormState>();
  final _username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'criativa.app',
                style: GoogleFonts.abrilFatface(fontSize: 40),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Form(
                key: _form,
                child: TextFormField(
                  controller: _username,
                  style: const TextStyle(fontSize: 17),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Seu usuário',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Informe seu usuário para entrar';
                    }
                    return null;
                  },
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.fromLTRB(10, 24, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LiveStream(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.account_box),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'Entrar',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
