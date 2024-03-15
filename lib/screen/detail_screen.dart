import 'package:flutter/material.dart';
import 'package:ucp1/screen/login_screen.dart';
import 'package:ucp1/widget/footer_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      {super.key,
      required this.mkn,
      required this.mnm,
      required this.dsrt,
      required this.nama,
      required this.no});
  final String mkn;
  final String mnm;
  final String dsrt;
  final String nama;
  final String no;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pesanan'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('$nama'),
              SizedBox(
                height: 10,
              ),
              Text('$no'),
              SizedBox(
                height: 10,
              ),
              Text('$mkn'),
              SizedBox(
                height: 10,
              ),
              Text('$mnm'),
              SizedBox(
                height: 10,
              ),
              Text('$dsrt'),
              SizedBox(
                height: 10,
              ),
              FooterDetail(onPressDone: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                    (route) => false);
              })
            ],
          ),
        ),
      ),
    );
  }
}
