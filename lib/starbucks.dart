import 'package:flutter/material.dart';
import 'package:novice_flutter/starbucks_first.dart';
import 'package:novice_flutter/starbucks_second.dart';

/// Starbucks 메인 색상
Color starbucksPrimaryColor = Color.fromARGB(255, 83, 184, 138);

/// Starbucs 포인트 색상
Color starbucksAccentColor = Color.fromARGB(255, 199, 176, 121);

class Starbucks extends StatefulWidget {
  const Starbucks({Key? key}) : super(key: key);

  @override
  _StarbucksState createState() => _StarbucksState();
}

class _StarbucksState extends State<Starbucks> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex, // index 순서에 해당하는 child를 맨 위에 보여줌
        children: [
          StarbucksFirstPage(),
          StarbucksSecondPage(),
          StarbucksThirdPage(),
          Center(child: Text("Starbucks 네 번째 페이지")),
          Center(child: Text("Starbucks 다섯 번째 페이지")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // 현재 보여주는 탭
        onTap: (newIndex) {
          print("selected newIndex : $newIndex");
          // 다른 페이지로 이동
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: starbucksPrimaryColor, // 선택된 아이콘 색상
        unselectedItemColor: Colors.grey, // 선택되지 않은 아이콘 색상
        showSelectedLabels: false, // 선택된 항목 label 숨기기
        showUnselectedLabels: false, // 선택되지 않은 항목 label 숨기기
        type: BottomNavigationBarType.fixed, // 선택시 아이콘 움직이지 않기
        backgroundColor: Colors.white.withOpacity(0.8),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.free_breakfast), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.redeem), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ""),
        ],
      ),
    );
  }
}

/// 세 번째 페이지
class StarbucksThirdPage extends StatelessWidget {
  const StarbucksThirdPage({Key? key}) : super(key: key);

  /// 전체 메뉴
  final List<Map<String, String>> menu = const [
    {
      "ko": "추천",
      "en": "Recommend",
      "imgUrl": "https://i.ibb.co/SwGPpzR/9200000003687-20211118142543832.jpg",
    },
    {
      "ko": "리저브 에스프레소",
      "en": "Reserve Espresso",
      "imgUrl": "https://i.ibb.co/JHVXZ72/9200000003690-20211118142702357.jpg",
    },
    {
      "ko": "리저브 드립",
      "en": "Reserve Drip",
      "imgUrl": "https://i.ibb.co/M91G17c/9200000003693-20211118142933650.jpg",
    },
    {
      "ko": "콜드브루",
      "en": "ColdBrew",
      "imgUrl": "https://i.ibb.co/jyZK4C9/9200000003696-20211118143125337.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: titleBar(),
        body: TabBarView(
          children: [
            /// 전체 메뉴
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                final item = menu[index % menu.length];
                final ko = item["ko"] ?? "제목";
                final en = item["en"] ?? "title";
                final imgUrl = item["imgUrl"] ?? "";
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 21,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 52,
                        // Tip : circleAvatar 배경에 맞춰서 동그랗게 이미지 넣는 방법
                        backgroundImage: NetworkImage(imgUrl),
                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ko,
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            en,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),

            /// 나만의 메뉴
            Center(child: Text("나만의 메뉴")),

            /// 홀케이크 예약
            Center(child: Text("홀케이크 예약")),
          ],
        ),
      ),
    );
  }
}

AppBar titleBar() {
  return AppBar(
    centerTitle: true,
    title: Text(
      "Order",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.white,
    actions: [
      IconButton(
        icon: Icon(
          Icons.search_outlined,
          color: Colors.grey,
        ),
        onPressed: () => print("Order 우측 상단 아이콘 클릭 됨"),
      )
    ],
    bottom: TabBar(
      isScrollable: false,
      indicatorColor: starbucksPrimaryColor,
      indicatorWeight: 4,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      labelStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      tabs: [
        Tab(text: "전체 메뉴"),
        Tab(text: "나만의 메뉴"),
        Tab(text: "🎂 홀케이크"),
      ],
    ),
  );
}
