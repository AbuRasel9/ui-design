import 'dart:ui';

import 'package:flutter/material.dart';

import '../model/user_model.dart';

class ConstantValue{
  static Color yellowColor=Color(0xffffe407);
  static Color whiteColor=Colors.white;

  static List<UserModel> users = [
    UserModel(
      imagePath: 'assets/images/a.png',
      name: 'Rahim Uddin',
      rating: '1245',
    ),
    UserModel(
      imagePath: 'assets/images/b.png',
      name: 'Karim Ahmed',
      rating: '4558',
    ),
  UserModel(
    imagePath : 'assets/images/c.png',

      name: 'Sadia Jahan',
      rating: '5852',
    ),
   UserModel(
      imagePath: 'assets/images/d.png',

      name: 'Mizanur Rahman',
      rating: '7854',
    ),
    UserModel(
      imagePath: 'assets/images/e.jpeg',

      name: 'Nazmul Hasan',
      rating: '4858',
    ),
    UserModel(
      imagePath: 'assets/images/f.jpeg',

      name: 'Tanvir Hossain',
      rating: '8475',
    ),
    UserModel(
      imagePath: 'assets/images/g.jpeg',

      name: 'Sumaiya Akter',
      rating: '7854',
    ),
    UserModel(
      imagePath: 'assets/images/h.jpeg',

      name: 'Jannatul Ferdous',
      rating: '8585',
    ),
    UserModel(
      imagePath: 'assets/images/i.jpeg',

      name: 'Rakibul Islam',
      rating: '5857',
    ),
    UserModel(
      imagePath: 'assets/images/k.jpeg',

      name: 'Farhana Yesmin',
      rating: '9897',
    ),
  ];
}