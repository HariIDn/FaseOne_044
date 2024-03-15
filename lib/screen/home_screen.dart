import 'package:flutter/material.dart';
import 'package:ucp1/screen/detail_screen.dart';
import 'package:ucp1/widget/home/footer_home.dart';
import 'package:ucp1/widget/home/form_home.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.nama, required this.no});
  final String nama;
  final String no;
  @override
  Widget build(BuildContext context) {
    var mkn = TextEditingController();
    var mnm = TextEditingController();
    var dsrt = TextEditingController();
    var formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Data Makanan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Nama: $nama',
              style: TextStyle(fontSize: 10),
            ),
            Text(
              'No HP: $no',
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(
              height: 10,
            ),
            FormHome(
              formKey: formKey,
              etMakan: mkn,
              etMinum: mnm,
              etDessert: dsrt,
            ),
            FooterHome(
              onPressNext: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
