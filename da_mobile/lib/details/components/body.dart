import 'package:da_mobile/details/components/content.dart';
import 'package:da_mobile/details/components/imgdetails_icons.dart';
import 'package:da_mobile/details/components/title_details.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ImgDetailsWithIcon(),
          TitleDetails(),
          ContentDetails(),
        ],
      ),
    );
  }
}
