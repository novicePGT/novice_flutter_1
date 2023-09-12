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

## Positioned
'Positioned()' 는 다른 위젯을 부모 위젯 내애ㅔ서 특정 위치로 배치할 때 사용된다.   
Positioned 위젯은 일반적으로 Stack 과 함께 사용되며, Stack 위젯 내의 자식 위젯들을 겹쳐서 배치할 때 위치를 지정하는 데 유용하다.

- left, top, right, bottom: 자식 위젯을 부모 위젯 내에서 어디에 배치할 것인지를 결정하는 속성으로, 각각 왼쪽, 위, 오른쪽, 아래의 위치를 지정합니다. 이 속성들 중 하나 또는 여러 개를 사용하여 위치를 정의할 수 있습니다.
- width, height: 자식 위젯의 너비와 높이를 지정하는 속성으로, 자식 위젯의 크기를 제한할 때 사용됩니다.

## CircleAvatar
'CircleAvatar'는 원 형태의 사용자 프로필 이미지 또는 아이콘을 나타내는 데 주로 사용된다.   
CircleAbatar 는 주어진 이미지나 아이콘을 원 형태로 자동으로 잘라내고 나머지 부분은 투명하게 처리한다.

- backgroundColor: CircleAvatar의 배경색을 설정합니다.
- backgroundImage: CircleAvatar의 배경 이미지를 설정합니다. 이 속성을 사용하면 사용자 프로필 이미지를 표시할 수 있습니다.
- child: 원 내에 표시할 자식 위젯을 설정합니다. 이 속성을 사용하여 아이콘 또는 텍스트를 CircleAvatar 내에 배치할 수 있습니다.
- radius: CircleAvatar의 반지름을 설정합니다.
