import 'package:flutter/material.dart';
import 'package:ucp1/screen/home_screen.dart';

import 'package:ucp1/widget/login/footer_login.dart';
import 'package:ucp1/widget/login/form_login.dart';
import 'package:ucp1/widget/login/head_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var no = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Restoran',
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            HeadLogin(),
            Text(
              'Mie Ayam',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            FormLogin(
              formKey: formKey,
              etNama: nama,
              etNo: no,
            ),
            JenisKelamin(),
            FooterLogin(
              onPressedLogin: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(
                        nama: nama.text,
                        no: no.text,
                      ),
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
