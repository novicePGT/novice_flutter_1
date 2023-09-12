import 'package:flutter/material.dart';

import 'miso.dart';

class MisoFirstPage extends StatelessWidget {
  const MisoFirstPage({Key? key}) : super(key: key);

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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    Text(
                      "대한민국 1등 홈서비스\n미소를 만나보세요!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 38,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("+ 예약하기 버튼 클릭 됨.");
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 24,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.add,
                              color: misoPrimaryColor,
                            ),
                            SizedBox(width: 6),
                            Text(
                              "예약하기",
                              style: TextStyle(
                                  color: misoPrimaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 24,
                  child: GestureDetector(
                    onTap: () {
                      print("서비스 상세보기 클릭됨.");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.3),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "서비스 상세보기",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
