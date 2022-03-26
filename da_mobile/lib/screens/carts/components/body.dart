

import 'package:da_mobile/details/detail_screen.dart';
import 'package:da_mobile/home/home_screen.dart';
import 'package:da_mobile/screens/carts/components/quantity.dart';
import 'package:da_mobile/screens/payment/screen_payment.dart';
import 'package:flutter/material.dart';


import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Giỏ hàng của tôi'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.delete,
              size: 35,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
             context,
               MaterialPageRoute(
                builder: (context) {
                return DetailsScreen();
                },
              ),
          ); 
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 140,
                    height: 180,
                    child: Image.asset("assets/images/Cate-01.jpg"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Đắt nhân tâm ',
                        
                        style: TextStyle(fontSize: 20,color: Colors.black,),
                        
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        '100.000đ ',
                        style: TextStyle(fontSize: 15,
                        color: Colors.black,),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(child: quanity()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 140,
                    height: 180,
                    child: Image.asset("assets/images/Cate-02.jpg"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tâm lý học cơ bản  ',
                        style: TextStyle(fontSize: 20,color: Colors.black,),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        '200.000đ',
                        style: TextStyle(fontSize: 15,
                        color: Colors.black,),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(child: quanity()),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF6F35A5)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Payment()),
                      );
                    },
                    child: Text(
                      'ĐẶT HÀNG',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
