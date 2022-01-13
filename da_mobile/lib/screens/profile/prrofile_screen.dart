import 'package:da_mobile/screens/profile/components/body.dart';
import 'package:da_mobile/screens/profile/size_config.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
     
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor:Color(0xFF6F35A5),
      leading: SizedBox(),
      // On Android it's false by default
      centerTitle: true,
      
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
              color: Colors.black,
              fontSize: SizeConfig.defaultSize * 1.6, //16
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
