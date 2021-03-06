import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/_product/manager/user/firebase_user.dart';
import 'package:with_retro_firebase/_product/model/my_anons/myanons.dart';
import 'package:with_retro_firebase/_product/model/user/user_dto.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/core/constant/navigation/navigation_contant.dart';
import 'package:with_retro_firebase/locator.dart';
part 'profile_viewmodel.g.dart';

class ProfileViewModel = _ProfileViewModelBase with _$ProfileViewModel;

abstract class _ProfileViewModelBase with Store, BaseViewModel {
  @observable
  var my = getIt<FirebaseUser>();

  @observable
  User user = FirebaseAuth.instance.currentUser!;

  @observable
  String name = 'hasan';

  @observable
  List<UserDTO> answeredUser = <UserDTO>[];

  @observable
  List<MyAnons> myAnons = <MyAnons>[];

  @action
  goEditPage() async {
    await navigation.navigateToPage(path: NavigationConstants.editprofile);
    await FirebaseAuth.instance.currentUser!.reload();
    user = FirebaseAuth.instance.currentUser!;
    log(user.photoURL.toString());
  }

  @action
  setNewName() {
    log("merhabaaa");
    name = "tunahan";
    log(name);
  }

  @action
  setDummyData() {
    answeredUser.add(
      UserDTO(
          id: 1,
          name: "Hasan",
          url:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4glkxnuYj0sidq0TsYPhqR8Xwo4UWYH03wjsvU2vI62-kxL-r0ij68cj-9d_fjWH-vxs&usqp=CAU"),
    );
    answeredUser.add(
      UserDTO(
          id: 2,
          name: "Hasan",
          url:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4glkxnuYj0sidq0TsYPhqR8Xwo4UWYH03wjsvU2vI62-kxL-r0ij68cj-9d_fjWH-vxs&usqp=CAU"),
    );
    answeredUser.add(
      UserDTO(
          id: 3,
          name: "Hasan",
          url:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4glkxnuYj0sidq0TsYPhqR8Xwo4UWYH03wjsvU2vI62-kxL-r0ij68cj-9d_fjWH-vxs&usqp=CAU"),
    );
    answeredUser.add(
      UserDTO(
          id: 4,
          name: "Hasan",
          url:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4glkxnuYj0sidq0TsYPhqR8Xwo4UWYH03wjsvU2vI62-kxL-r0ij68cj-9d_fjWH-vxs&usqp=CAU"),
    );
    answeredUser.add(
      UserDTO(
          id: 5,
          name: "Hasan",
          url:
              "https://i2.gazetevatan.com/i/gazetevatan/75/0x410/60cbcc9693215108901088dc.jpg"),
    );

    myAnons.add(MyAnons(
        id: "1",
        name: "??erefcan O??uz",
        isFavorite: true,
        date: '10.12.2021',
        comments: 5,
        likes: 111,
        url: "https://tashteam.com/images/sero.png",
        location: "US / Newyork City",
        text: "Okeye 4. ar??yoruz gelmek isteyen varsa K??z??layday??z X mekan"));

    myAnons.add(MyAnons(
        id: "2",
        name: "??erefcan O??uz",
        isFavorite: false,
        comments: 12,
        date: '12.12.2021',
        likes: 276,
        url: "https://tashteam.com/images/sero.png",
        location: "US / Malta",
        text: "Okeye 4. ar??yoruz gelmek isteyen varsa K??z??layday??z X mekan"));
    myAnons.add(MyAnons(
        id: "1",
        name: "??erefcan O??uz",
        isFavorite: true,
        date: '10.12.2021',
        comments: 5,
        likes: 111,
        url: "https://tashteam.com/images/sero.png",
        location: "US / Newyork City",
        text: "Okeye 4. ar??yoruz gelmek isteyen varsa K??z??layday??z X mekan"));

    myAnons.add(MyAnons(
        id: "2",
        name: "??erefcan O??uz",
        isFavorite: false,
        comments: 12,
        date: '12.12.2021',
        likes: 276,
        url: "https://tashteam.com/images/sero.png",
        location: "US / Malta",
        text: "Okeye 4. ar??yoruz gelmek isteyen varsa K??z??layday??z X mekan"));
    myAnons.add(MyAnons(
        id: "1",
        name: "??erefcan O??uz",
        isFavorite: true,
        date: '10.12.2021',
        comments: 5,
        likes: 111,
        url: "https://tashteam.com/images/sero.png",
        location: "US / Newyork City",
        text: "Okeye 4. ar??yoruz gelmek isteyen varsa K??z??layday??z X mekan"));

    myAnons.add(MyAnons(
        id: "2",
        name: "??erefcan O??uz",
        isFavorite: false,
        comments: 12,
        date: '12.12.2021',
        likes: 276,
        url: "https://tashteam.com/images/sero.png",
        location: "US / Malta",
        text: "Okeye 4. ar??yoruz gelmek isteyen varsa K??z??layday??z X mekan"));
  }

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() async {
    setDummyData();
  }
}
