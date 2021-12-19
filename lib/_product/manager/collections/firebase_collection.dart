import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:with_retro_firebase/_product/constants/firebase/collection.dart';
import 'package:with_retro_firebase/_product/manager/user/firebase_user.dart';
import 'package:with_retro_firebase/core/base/model/basemodel.dart';

class FirebaseCollection {
  static FirebaseCollection? _instace;
  static FirebaseCollection get instance {
    if (_instace != null) return _instace!;
    _instace = FirebaseCollection._init();
    return _instace!;
  }

  FirebaseCollection._init();

  readLiveData(String name) {
    return FirebaseFirestore.instance.collection(name).snapshots();
  }

  List<T> liveData<T extends BaseModel>(
      AsyncSnapshot<QuerySnapshot<Object?>> snapshot, T parseModel) {
    List<T> lists = <T>[];
    snapshot.data!.docs.map((e) {
      Map<String, dynamic> data = e.data()! as Map<String, dynamic>;
      lists.add(parseModel.fromJson(data));
      log(FirebaseUser.instance.getUser()!.uid.toString());
    }).toList();
    return lists;
  }
}
