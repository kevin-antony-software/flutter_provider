import 'package:flutter/material.dart';
import 'package:flutter_provider_test/providers/counter_provider.dart';
import 'package:flutter_provider_test/providers/shopping_cart_provider.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example App (${context.watch<Counter>().Count})'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${context.watch<ShoppingCart>().count}'),
            Text('${context.watch<ShoppingCart>().cart}')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('addItem_floatingActionButton'),
        onPressed: () => context.read<ShoppingCart>().addItem('BreadJ'),
        tooltip: 'Add Item',
        child: Icon(Icons.add),
      ),
    );
  }
}
