import 'package:flutter/material.dart';
import 'package:flutter_mvc_architecture_example/view/pages/register_user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(20),
          itemBuilder: (context, index) {
            return Card(
              color: Color.fromARGB(255, 234, 249, 251),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: ListTile(
                  title: Text('Usuário 1'),
                  subtitle: Text('email@gmail.com'),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 158, 236, 246),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const RegisterUser(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
