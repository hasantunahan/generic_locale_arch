import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/_product/model/user/user_dto.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
part 'home_viewmodel.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store, BaseViewModel {
  @observable
  List<UserDTO> nearList = <UserDTO>[];

  @action
  setDummy() {
    nearList.add(
      UserDTO(
          id: 1,
          name: "Hasan",
          url:
              "https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/female/68.png"),
    );
    nearList.add(
      UserDTO(
          id: 2,
          name: "Hasan",
          url:
              "https://ritecaremedicalofficepc.com/wp-content/uploads/2019/09/img_avatar.png"),
    );
    nearList.add(
      UserDTO(
          id: 3,
          name: "Hasan",
          url: "https://www.w3schools.com/w3images/avatar2.png"),
    );
    nearList.add(
      UserDTO(
          id: 4,
          name: "Hasan",
          url: "https://www.w3schools.com/w3images/avatar6.png"),
    );
    nearList.add(
      UserDTO(
          id: 5,
          name: "Hasan",
          url:
              "https://ritecaremedicalofficepc.com/wp-content/uploads/2019/09/img_avatar.png"),
    );
    nearList.add(
      UserDTO(
          id: 6,
          name: "Hasan",
          url:
              "https://st2.depositphotos.com/2703645/11438/v/450/depositphotos_114389700-stock-illustration-woman-avatar-character.jpg"),
    );
    nearList.add(
      UserDTO(
          id: 7,
          name: "Hasan",
          url:
              "https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/female/68.png"),
    );
  }

  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() async {
    setDummy();
  }
}
