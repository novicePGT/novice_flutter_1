import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "hello flutter",
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
                16), // EdgeInsets 는 전방위로 top, left, right, bottom 으로 나뉘는데 all 하게 되면 전방위로 바뀌게 된다.
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Image.network(
                    "https://i.ibb.co/CwzHq4z/trans-logo-512.png",
                    width: 81,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(labelText: '이메일'),
                ),
                TextField(
                  obscureText: true, // 비밀번호 형식으로 입력하기 위해 사용: *****
                  decoration: InputDecoration(labelText: '비밀번호'),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('로그인'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
