import 'package:flutter/material.dart';
import 'package:name_maker/screen/loginPage.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('home'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: const Text('login')),
          ],
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //左の名前の出力場所とボタン
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: const Text(
                        "word",
                      ),
                    ),
                    ElevatedButton(onPressed: () {}, child: const Text("出力")),
                  ],
                ),
                //右の名前の出力場所とボタン
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: const Text(
                        "word",
                      ),
                    ),
                    ElevatedButton(onPressed: () {}, child: const Text("出力")),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          //リセットボタン
          ElevatedButton(onPressed: () {}, child: const Text('リセット')),
        ],
      ),
    );
  }
}
