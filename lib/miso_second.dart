import 'package:flutter/material.dart';

import 'miso.dart';

class MisoSecondPage extends StatelessWidget {
  const MisoSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),

                    /// 예약 내역
                    Text(
                      "예약 내역",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    Row(
                      children: [
                        Icon(Icons.error, color: misoPrimaryColor),
                        SizedBox(width: 8),
                        // 예약된 서비스가 없어요 ! 부분
                        // 폰의 폭과 관계없이 언제나 텍스트를 한 줄로 보여주는 방법
                        Expanded(
                          // row의 남은 영역을 모두 차지하도록 함
                          child: FittedBox(
                            // 해당 영역에 적절한 사이즈로 scaleDown 함
                            // 텍스트 사이즈가 100 이어도 폰의 폭에 맞춰서 줄어듬
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "아직 예약된 서비스가 없어요. 지금 예약해보세요 !",
                              style: TextStyle(fontSize: 100),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 18,
                right: 24,
                left: 24,
                child: GestureDetector(
                  onTap: () {
                    print("+ 예약하기 버튼 클릭 됨.");
                  },
                  child: Container(
                    width: double.infinity,
                    height: 58,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: misoPrimaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "예약하기",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
