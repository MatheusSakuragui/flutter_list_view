import 'package:flutter/material.dart';
import 'product_list_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(height: 20),
            Container(
            padding: EdgeInsets.only(top: 50),
            width: 800,
            child: TextField(
              decoration: InputDecoration(labelText: 'Login'),
            )),
            Container(
            padding: EdgeInsets.only(top: 50),
            width: 800,
            child: TextField(
              decoration: InputDecoration(labelText: 'Senha'),
            ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductListPage()),
                    );
            },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50),
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
