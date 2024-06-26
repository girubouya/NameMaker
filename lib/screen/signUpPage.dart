import 'package:flutter/material.dart';
import 'package:name_maker/screen/loginPage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confPasswordController = TextEditingController();
    TextEditingController userNameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: Column(
                children: [
                  TextField(
                    controller: userNameController,
                    decoration: const InputDecoration(
                        labelText: "userName", hintText: "daichi"),
                  ),
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        labelText: "email", hintText: "test@gmail.com"),
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                        labelText: "password", hintText: "testtest"),
                  ),
                  TextField(
                    controller: confPasswordController,
                    decoration: const InputDecoration(
                        labelText: "pleasePassword", hintText: "testtest"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: const Text('SignUp'))
          ],
        ),
      ),
    );
  }
}
