import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text('Daimond Company'),
              ],
            ),
            const SizedBox(height: 120.0),
            TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  filled: true,
                  labelText :'username',
              ),
            ),
            const SizedBox(height: 120.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                filled : true,
                labelText:'Password',
              ),
                  obscureText: true,
            ),
            // TODO: Add button bar (101)
            ButtonBar(
              children: <Widget>[
                TextButton(
                    child: const Text('cancel'),
                    onPressed: () {
                        _usernameController.clear();
                        _passwordController.clear();
                    },
                ),
                ElevatedButton(
                    onPressed: (){
                        Navigator.pop(context);
                    },
                    child: const Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)
