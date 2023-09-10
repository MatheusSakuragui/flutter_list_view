import 'package:flutter/material.dart';
import 'product_details_page.dart';

class ProductListPage extends StatelessWidget {
  final List<String> products = ['Produto 1', 'Produto 2', 'Produto 3', 'Produto 4', 'Produto 5', 'Produto 6', 'Produto 7', 'Produto 8', 'Produto 9', 'Produto 10', 'Produto 11', 'Produto 12', 'Produto 13', 'Produto 14', 'Produto 15', 'Produto 16', 'Produto 17', 'Produto 18', 'Produto 19', 'Produto 20'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
          crossAxisAlignment: CrossAxisAlignment.center, // Centraliza horizontalmente
          children: <Widget>[
            Text(
              'Lista de Produtos', // Cabeçalho (H2)
              style: TextStyle(
                fontSize: 24, // Tamanho do texto
                fontWeight: FontWeight.bold, // Negrito
              ),
            ),
            Expanded(
              child: Container(
                constraints: BoxConstraints(maxWidth: 400), // Define a largura máxima
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(products[index]),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProductDetailsPage(products[index])),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
