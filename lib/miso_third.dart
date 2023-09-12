import 'package:flutter/material.dart';

import 'miso.dart';

class MisoThirdPage extends StatelessWidget {
  const MisoThirdPage({Key? key}) : super(key: key);

  /// 세 번째 화면 배경 이미지 URL
  final String backgroundImgUrl =
      "https://i.ibb.co/rxzkRTD/146201680-e1b73b36-aa1e-4c2e-8a3a-974c2e06fa9d.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: misoPrimaryColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  constraints: BoxConstraints(maxHeight: 400),
                  child: Image.network(backgroundImgUrl),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 64,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      // 공통 스타일
                      style: TextStyle(
                        fontSize: 28,
                        height: 1.5, // 줄 간격 한 줄의 1.5 배
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(text: "친구를 추천할 때마다\n"),
                        TextSpan(
                          text: "10000원 ",
                          // 개별 스타일
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "할인 쿠폰 지급 !"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  // 자세히 보기
                  GestureDetector(
                    onTap: () {
                      print("자세히 보기 버튼 클릭");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "자세히 보기",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 42,
                child: GestureDetector(
                  onTap: () {
                    print("친구 추천하기 버튼 클릭");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          // 광원의 위치를 중심(0, 0)보다 위쪽(0, 5133)
                          offset: Offset(0, 5),
                          spreadRadius: 1,
                          blurRadius: 12,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.redeem,
                          color: misoPrimaryColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "친구 추천하기",
                          style: TextStyle(
                            color: misoPrimaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
