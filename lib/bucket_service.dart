import 'package:flutter/material.dart';

import 'main.dart';

class BucketService extends ChangeNotifier {
  List<Bucket> bucketList = [
    Bucket("자바 공부하기", false),
    Bucket("파이썬 공부하기", false),
    Bucket("코틀린 공부하기", false),
  ];

  // buck 추가
  void addBucket(String job) {
    bucketList.add(Bucket(job, false));
    notifyListeners(); // 모든 Consumer<BuscketService>의 builer 함수를 다시 호출한다.
  }

  void updateBucket(Bucket bucket, int index) {
    bucketList[index] = bucket;
    notifyListeners();
  }

  void deleteBucket(int index) {
    bucketList.removeAt(index);
    notifyListeners();
  }
}