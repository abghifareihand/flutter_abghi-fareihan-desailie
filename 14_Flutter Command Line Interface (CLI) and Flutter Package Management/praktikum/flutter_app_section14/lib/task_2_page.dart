import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class DuaPage extends StatelessWidget {
  const DuaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            MyBarcode(
              textBarcode: 'Alterra Academy',
            ),
            SizedBox(
              height: 26,
            ),
            MyBarcode(
              textBarcode: 'Flutter Asik',
            ),
            SizedBox(
              height: 26,
            ),
            MyBarcode(
              textBarcode: 'Abghi Fareihan Desailie',
            ),
          ],
        ),
      ),
    );
  }
}

class MyBarcode extends StatelessWidget {
  final String textBarcode;

  const MyBarcode({
    Key? key,
    required this.textBarcode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
      child: BarcodeWidget(
        barcode: Barcode.code128(),
        data: textBarcode,
        width: 200,
      ),
    );
  }
}
