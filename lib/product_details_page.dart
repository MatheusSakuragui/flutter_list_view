import 'package:flutter/material.dart';
import 'confirmation_page.dart';

class ProductDetailsPage extends StatelessWidget {
  final String productName;

  ProductDetailsPage(this.productName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Produto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(productName, style: TextStyle(fontSize: 24)),
            TextField(
              decoration: InputDecoration(labelText: 'Quantidade'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConfirmationPage()),
                );
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
