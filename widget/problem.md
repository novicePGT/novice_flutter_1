# 모르는 부분을 적어두는 메모장

## SafeArea
'SafeArea()' 는 Flutter에서 사용되는 위젯으로, 기기의 화면에 안전한 영역을 제공하는 데 사용된다.   
화면의 상단이나 하단에 시스템 바( Appbar, BottomNavigator ) 같은 요소들이 있는데 이러한 요소들과 겹치지 않게 하기 위해서 사용한다.   

## Expanded
'Expanded()' 는 Flutter에서 사용되는 위젯으로, 자식 위젯을 확장하여 남은 공간을 채우도록 도와주는 역할을 한다.   
'Expanded()' 는 주로 Row 나 Column, Flex 와 함께 사용되며, 자식 위젯의 나머지 공간을 채우는 방식이다.
```dart
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
                    )
```

## ListTile
'ListTile()' 은 목록(리스트) 내에 항목을 표시하는 데 사용하는 위젯이다.   
ListView, ListView.builder, ListView.separated 와 같은 위젯과 함꼐 사용되며, 리스트 내의 각 항목을 나타내는데 유용하다.   

#### ListTile 의 몇 가지 속성
- leading: 왼쪽에 표시되는 위젯으로, 주로 아이콘을 나타내는 데 사용됩니다.
- title: 항목의 제목을 나타내는 위젯 또는 텍스트입니다.
- subtitle: 항목의 부제목 또는 추가 정보를 나타내는 위젯 또는 텍스트입니다.
- trailing: 오른쪽에 표시되는 위젯으로, 주로 추가 작업을 수행하는 버튼 또는 아이콘을 나타내는 데 사용됩니다.
- onTap: 항목을 탭할 때 실행되는 함수를 정의합니다.

