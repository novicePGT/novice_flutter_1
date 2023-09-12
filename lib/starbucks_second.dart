import 'package:flutter/material.dart';

class StarbucksSecondPage extends StatelessWidget {
  const StarbucksSecondPage({Key? key}) : super(key: key);

  /// 카드 이미지
  final String cardImgUrl = "https://i.ibb.co/BgfYHg4/2021-12-16-1-49-51.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: titleBar(),
      body: Column(
        children: [
          Expanded(
            child:
                // 스크롤 하는데 스냅이 걸려서 해당 항목이 화면 중앙에 보이는 경우 PageView 사용
                PageView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        offset: Offset(0, 5),
                        spreadRadius: 1,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Image.network(cardImgUrl),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(12, 0, 12, 12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  offset: Offset(0, 5),
                  spreadRadius: 1,
                  blurRadius: 6,
                ),
              ],
            ),
            height: 52,
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () => print("Coupon 선택 됨"),
                    child: Text(
                      "Coupon",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 12,
                  color: Colors.grey,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () => print("Gift 선택 됨"),
                    child: Text(
                      "Gift",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar titleBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Pay",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          icon: Icon(
            Icons.list_rounded,
            color: Colors.grey,
          ),
          onPressed: () => print("Pay 우측 상단 아이콘 클릭 됨"),
        )
      ],
    );
  }
}
