import 'package:flutter/material.dart';
import 'package:novice_flutter/starbucks.dart';

/// 첫 번째 페이지
class StarbucksFirstPage extends StatelessWidget {
  const StarbucksFirstPage({Key? key}) : super(key: key);

  /// 배경 이미지 URL
  final String backImg =
      "https://i.ibb.co/2Pz33q7/2021-12-16-12-21-42-cleanup.png";

  /// Frequency 이미지 URL
  final String frequencyImg = "https://i.ibb.co/QcVn97y/2021-12-16-1-33-11.png";

  /// 추천 메뉴
  final List<Map<String, String>> recommendMenu = const [
    {
      "name": "돌체쿠키라떼",
      "imgUrl": "https://i.ibb.co/SwGPpzR/9200000003687-20211118142543832.jpg",
    },
    {
      "name": "아이스 홀리데이 돌체 쿠키 라떼",
      "imgUrl": "https://i.ibb.co/JHVXZ72/9200000003690-20211118142702357.jpg",
    },
    {
      "name": "스노우 민트 초콜릿",
      "imgUrl": "https://i.ibb.co/M91G17c/9200000003693-20211118142933650.jpg",
    },
    {
      "name": "아이스 스노우 민트 초콜릿",
      "imgUrl": "https://i.ibb.co/jyZK4C9/9200000003696-20211118143125337.jpg",
    },
    {
      "name": "스노우 민트 초콜릿 블렌디드",
      "imgUrl": "https://i.ibb.co/DKkV0rw/9200000003699-20211118143249044.jpg",
    },
  ];

  /// 크리스마스 이벤트 이미지 URL
  final String eventImg = "https://i.ibb.co/Fb0q43T/IMG-F9-BA5-CBCB476-1.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // SliverAppBar 사용시 SafeArea 사용 불가능, 위젯을 사용하기 위해서는 CustomScrollView 사용
          CustomScrollView(
            slivers: [
              // 스크롤시 배경이 사라지게 만드려면 SliverAppBar 사용해야함.
              SliverAppBar(
                automaticallyImplyLeading: false, // 뒤로가기 버튼 숨기기
                pinned: true, // 스크롤시 bottom 영역을 화면 상단에 남길지 여부
                snap: false, // 중간에 스크롤을 멈추면 AppBar가 자동으로 올라갈지 여부
                floating: true, // AppBar를 화면에 띄울지, 아니면 컬럼처럼 최상단에 놓을지 여부
                expandedHeight: 252, // 최대 확장되었을 때의 높이
                backgroundColor: Colors.white,

                /// 스크롤 시 사라지는 영역
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin, // 스크롤시 사라지는 영역을 고정할지 여부
                  background: Stack(
                    children: [
                      Positioned.fill(
                        bottom: 60,
                        child: Image.network(backImg, fit: BoxFit.fill),
                      ),
                      Positioned(
                        left: 24,
                        right: 24,
                        bottom: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "한 해의 마무리, \n수고 많았어요💖",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                // LinearProgressIndicator가 끝없이 길어지지 않도록 Column의 가로 길이를 남은 자리만큼 차지하도록 만들어줌
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "11 ★ until next Reward",
                                        style: TextStyle(
                                          color: starbucksAccentColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 16),

                                      // LinearProgressIndicator는 각져있는데, 둥글게 보이도록 모서리를 잘라냄
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        child: LinearProgressIndicator(
                                          backgroundColor:
                                              Colors.grey.withOpacity(0.2),
                                          value: 0.083,
                                          minHeight: 10,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  starbucksAccentColor),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 28,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "1",
                                        style: TextStyle(
                                          fontSize: 38,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " / ",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "12 ★",
                                        style: TextStyle(
                                          color: starbucksAccentColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(52),
                  child: Container(
                    height: 52,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 24,
                        right: 12,
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print("What's New 클릭");
                            },
                            child: Row(children: [
                              Icon(
                                Icons.mail_outline,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "What's New",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ]),
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          // Coupon
                          GestureDetector(
                            onTap: () {
                              print("Coupon 클릭");
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.notifications_outlined,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Coupon",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),

                          // Alarm
                          Stack(
                            children: [
                              Icon(
                                Icons.notifications_outlined,
                                color: Colors.grey,
                                size: 32,
                              ),
                              Positioned(
                                right: 2,
                                top: 2,
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: starbucksPrimaryColor,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // CustomScrollView 안에서는 모든 첫 번째 위젯이 Sliver로 시작해야함.
              // SliverToBoxAdapter는 Sliver로 감싸지 않은 위젯을 Sliver로 만들어줌.
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(frequencyImg),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: "박근태",
                              style: TextStyle(
                                color: starbucksAccentColor,
                              ),
                            ),
                            TextSpan(text: "님을 위한 추천 메뉴")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          final menu =
                              recommendMenu[index % recommendMenu.length];
                          final name = menu["name"] ?? "이름";
                          final imgUrl = menu["imgUrl"] ?? "";

                          return SizedBox(
                            width: 128,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                    radius: 52,
                                    backgroundImage: NetworkImage(imgUrl),
                                    backgroundColor: Colors.transparent,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    name,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: starbucksPrimaryColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    /// Event
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 18,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          eventImg,
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 18,
            right: 24,
            child: GestureDetector(
              onTap: () => print("Delivery 클릭"),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 1),
                decoration: BoxDecoration(
                  color: starbucksPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Text(
                      "Deliverys",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.pedal_bike_outlined,
                      color: Colors.white,
                      size: 28,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
