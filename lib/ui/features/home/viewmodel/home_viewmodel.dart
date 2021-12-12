import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/_product/model/income_anons/income_anons.dart';
import 'package:with_retro_firebase/_product/model/user/user_dto.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
part 'home_viewmodel.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store, BaseViewModel {
  @observable
  List<UserDTO> nearList = <UserDTO>[];

  @observable
  List<IncomeAnons> incomeAnonsList = <IncomeAnons>[];

  @action
  setDummy() {
    nearList.add(
      UserDTO(
          id: 1,
          name: "Hasan",
          url:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4glkxnuYj0sidq0TsYPhqR8Xwo4UWYH03wjsvU2vI62-kxL-r0ij68cj-9d_fjWH-vxs&usqp=CAU"),
    );
    nearList.add(
      UserDTO(
          id: 2,
          name: "Hasan",
          url:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4glkxnuYj0sidq0TsYPhqR8Xwo4UWYH03wjsvU2vI62-kxL-r0ij68cj-9d_fjWH-vxs&usqp=CAU"),
    );
    nearList.add(
      UserDTO(
          id: 3,
          name: "Hasan",
          url:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4glkxnuYj0sidq0TsYPhqR8Xwo4UWYH03wjsvU2vI62-kxL-r0ij68cj-9d_fjWH-vxs&usqp=CAU"),
    );
    nearList.add(
      UserDTO(
          id: 4,
          name: "Hasan",
          url:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4glkxnuYj0sidq0TsYPhqR8Xwo4UWYH03wjsvU2vI62-kxL-r0ij68cj-9d_fjWH-vxs&usqp=CAU"),
    );
    nearList.add(
      UserDTO(
          id: 5,
          name: "Hasan",
          url:
              "https://i2.gazetevatan.com/i/gazetevatan/75/0x410/60cbcc9693215108901088dc.jpg"),
    );
    nearList.add(
      UserDTO(
          id: 6,
          name: "Hasan",
          url:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbYBcjCWpAxvoyXW-eajnrLbei5DKm1C7n3izmw1B6YxYLcHMH5-483vJHaTh7pxmnOIQ&usqp=CAU"),
    );
    nearList.add(
      UserDTO(
          id: 7,
          name: "Hasan",
          url:
              "https://image.biletinial.com//Uploads/People/johnny-depp-20175217416.jpg"),
    );

    incomeAnonsList.add(IncomeAnons(
        id: 1,
        name: "Stefen Build",
        isFavorite: true,
        date: '10.12.2021',
        comments: 5,
        url:
            "https://image.biletinial.com//Uploads/People/johnny-depp-20175217416.jpg",
        location: "US / Newyork City",
        text: "Okeye 4. arıyoruz gelmek isteyen varsa Kızılaydayız X mekan"));

    incomeAnonsList.add(IncomeAnons(
        id: 2,
        name: "Johhny Depp",
        isFavorite: false,
        comments: 12,
        date: '12.12.2021',
        url:
            "https://images.squarespace-cdn.com/content/v1/55a94019e4b0dad7bd1c05d1/1593633476997-3T5HZKNYD2YH2W80YL1N/Business+-+Headshot+%2821%29-min.jpg?format=2500w",
        location: "US / Malta",
        text: "Okeye 4. arıyoruz gelmek isteyen varsa Kızılaydayız X mekan"));
    incomeAnonsList.add(IncomeAnons(
        id: 1,
        name: "Stefen Build",
        isFavorite: true,
        date: '10.12.2021',
        comments: 5,
        url:
            "https://image.biletinial.com//Uploads/People/johnny-depp-20175217416.jpg",
        location: "US / Newyork City",
        text: "Okeye 4. arıyoruz gelmek isteyen varsa Kızılaydayız X mekan"));

    incomeAnonsList.add(IncomeAnons(
        id: 2,
        name: "Johhny Depp",
        isFavorite: false,
        comments: 12,
        date: '12.12.2021',
        url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4glkxnuYj0sidq0TsYPhqR8Xwo4UWYH03wjsvU2vI62-kxL-r0ij68cj-9d_fjWH-vxs&usqp=CAU",
        location: "US / Malta",
        text: "Okeye 4. arıyoruz gelmek isteyen varsa Kızılaydayız X mekan"));
    incomeAnonsList.add(IncomeAnons(
        id: 1,
        name: "Stefen Build",
        isFavorite: true,
        date: '10.12.2021',
        comments: 5,
        url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4glkxnuYj0sidq0TsYPhqR8Xwo4UWYH03wjsvU2vI62-kxL-r0ij68cj-9d_fjWH-vxs&usqp=CAU",
        location: "US / Newyork City",
        text: "Okeye 4. arıyoruz gelmek isteyen varsa Kızılaydayız X mekan"));

    incomeAnonsList.add(IncomeAnons(
        id: 2,
        name: "Johhny Depp",
        isFavorite: false,
        comments: 12,
        date: '12.12.2021',
        url:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4glkxnuYj0sidq0TsYPhqR8Xwo4UWYH03wjsvU2vI62-kxL-r0ij68cj-9d_fjWH-vxs&usqp=CAU",
        location: "US / Malta",
        text: "Okeye 4. arıyoruz gelmek isteyen varsa Kızılaydayız X mekan"));
  }

  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() async {
    setDummy();
  }
}
