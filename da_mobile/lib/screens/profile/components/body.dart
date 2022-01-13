import 'package:da_mobile/screens/Acc_Information.dart';
import 'package:da_mobile/screens/password_screen.dart';
import 'package:da_mobile/screens/profile/size_config.dart';
import 'package:flutter/material.dart';


import 'info.dart';
import 'profile_menu_item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Info(
            image: "assets/images/avt.jpg",
            name: "AVATA",
            email: "",
          ),
          SizedBox(height: SizeConfig.defaultSize * 2), //20
          ProfileMenuItem(
            iconSrc: "assets/icons/bookmark_fill.svg",
            title: "thông tin tài khoản",
            press: () {
               Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) {
                       return accountInformationScreen();
                    },
                   ),
                 ); 
            },
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/chef_color.svg",
            title: "đổi mật khẩu",
            press: () {
               Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) {
                       return passwordScreen();
                    },
                   ),
                 ); 
            },
          ),
          
          
        ],
      ),
    );
  }
}
