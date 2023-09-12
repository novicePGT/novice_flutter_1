import 'package:flutter/material.dart';

class MisoFourthPage extends StatelessWidget {
  const MisoFourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 62,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "나의 정보",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "010-9999-9999",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              ListTile(
                onTap: () {
                  print("주소 관리 클릭");
                },
                contentPadding: EdgeInsets.zero,
                leading: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  "주소 관리",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  print("결제 수단 관리 클릭");
                },
                contentPadding: EdgeInsets.zero,
                leading: Icon(
                  Icons.credit_card_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  "결제 수단 관리",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  print("공지사항 클릭");
                },
                contentPadding: EdgeInsets.zero,
                leading: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  "공지사항",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  print("문의사항 클릭");
                },
                contentPadding: EdgeInsets.zero,
                leading: Icon(
                  Icons.question_answer_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  "문의사항",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          )),
    ));
  }
}
