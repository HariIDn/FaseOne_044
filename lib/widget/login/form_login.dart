import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin(
      {super.key,
      required this.formKey,
      required this.etNama,
      required this.etNo});
  final GlobalKey<FormState> formKey;
  final TextEditingController etNama;
  final TextEditingController etNo;
  @override
  State<FormLogin> createState() => _HeadFormState();
}

class _HeadFormState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        child: Column(
          children: [
            TextFormField(
              controller: widget.etNama,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Nama',
                  hintText: 'Silahkan Masukan Nama',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Masukan Nama';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: widget.etNo,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Nomor Telepon',
                  hintText: 'Silahkan Masukan Nomor',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              validator: (value) {
                bool valid = RegExp(r"^[0-9]+$").hasMatch(value!);
                if (value!.isEmpty) {
                  return 'Nomor Tidak boleh kosong';
                } else if (!valid || value.length < 12) {
                  return 'Format Tidak Benar';
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Alamat',
                  hintText: 'Silahkan Masukan Alamat',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ],
        ));
  }
}

enum JK { Pria, Wanita }

class JenisKelamin extends StatefulWidget {
  const JenisKelamin({super.key});

  @override
  State<JenisKelamin> createState() => _JenisKelaminState();
}

class _JenisKelaminState extends State<JenisKelamin> {
  JK? _pilihan = JK.Pria;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('Pria'),
          leading: Radio<JK>(
            value: JK.Pria,
            groupValue: _pilihan,
            onChanged: (JK? value) {
              setState(
                () {
                  _pilihan = value;
                },
              );
            },
          ),
        ),
        ListTile(
          title: Text('Wanita'),
          leading: Radio<JK>(
            value: JK.Wanita,
            groupValue: _pilihan,
            onChanged: (JK? value) {
              setState(
                () {
                  _pilihan = value;
                },
              );
            },
          ),
        )
      ],
    );
  }
}
