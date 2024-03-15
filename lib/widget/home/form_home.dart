import 'package:flutter/material.dart';

class FormHome extends StatefulWidget {
  const FormHome(
      {super.key,
      required this.formKey,
      required this.etMakan,
      required this.etMinum,
      required this.etDessert});
  final GlobalKey<FormState> formKey;
  final TextEditingController etMakan;
  final TextEditingController etMinum;
  final TextEditingController etDessert;
  @override
  State<FormHome> createState() => _FormHomeState();
}

class _FormHomeState extends State<FormHome> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.key,
      child: Column(
        children: [
          TextFormField(
            controller: widget.etMakan,
            decoration: InputDecoration(
                labelText: 'Makanan',
                hintText: 'Massukan Pesanan',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: widget.etMinum,
            decoration: InputDecoration(
                labelText: 'Minuman',
                hintText: 'Massukan Pesanan',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: widget.etDessert,
            decoration: InputDecoration(
                labelText: 'Dessert',
                hintText: 'Massukan Pesanan',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
