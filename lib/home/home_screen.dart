import 'package:flutter/material.dart';
import 'package:sameple_flutter/extension/extension.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final list = ['a', 'b', 'c', 'd', 'e'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          _buildLogout(),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildLogout() {
    return IconButton(
      icon: const Icon(Icons.logout),
      onPressed: () {
        //Navigator.pushReplacementNamed(context, '/login');
      },
    );
  }

  Widget _buildBody() {
    return ListView.separated(
      itemBuilder: ((context, index) {
        return ListTile(
          title: Text(
            1020.toMyString(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.lightBlue),
            child: Text(
              "(${index + 1})",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        );
      }),
      separatorBuilder: (ctx, index) => const Divider(
        thickness: 0.5,
        indent: 20,
        endIndent: 20,
      ),
      itemCount: 20,
    );
  }
}
