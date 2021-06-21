import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  Future<void> insertTest() {
    Map<String, String> data = {'teste': 'teste'};
    FirebaseFirestore.instance.collection("teste").add(data);
  }
}
