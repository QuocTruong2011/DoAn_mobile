
import 'package:da_mobile/screens/payment/components/quantity.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

enum thanhtoan { tm, ttd }

class _BodyState extends State<Body> {
  int stt = 1;
  thanhtoan _thanhtoan = thanhtoan.tm;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thanh toán '),
        elevation: 0.0,
        backgroundColor: const Color(0xFF6F35A5),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1)),
                  backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.room_outlined),
                    SizedBox(width: 20),
                    Expanded(child: Text("17 nguyễn huệ,quận 1,TPHCM")),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/Cate-01.jpg",
                  width: 150,
                  height: 150,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Đắc nhân tâm ',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text('100.000đ'),
                  ],
                ),
                quanity(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Phương thức thanh toán',
                      style: TextStyle(fontSize: 22,color: Colors.black,),
                    ),
                  ),
                  Column(
                    children: [
                      RadioListTile(
                        title: Text('Tiền mặt'),
                        value: thanhtoan.tm,
                        groupValue: _thanhtoan,
                        onChanged: (thanhtoan value) {
                          setState(() {
                            _thanhtoan = value;
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('Thẻ tín dụng'),
                        value: thanhtoan.ttd,
                        groupValue: _thanhtoan,
                        onChanged: (thanhtoan value) {
                          setState(() {
                            _thanhtoan = value;
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Voucher',
                      style: TextStyle(fontSize: 22,color: Colors.black,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "nhập mã voucher",
                          hintStyle: const TextStyle(
                            letterSpacing: 2,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                          fillColor: Colors.brown,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tổng tiền: ',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        '100.000đ',
                        style: TextStyle(fontSize: 20,color: Colors.black,),
                      )
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 100,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Thông báo"),
                              content: Text('Đặt hàng thành công'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'Ok'),
                                  child: const Text('Ok'),
                                ),
                              ],
                            );
                          });
                    });
                  },
                  child: Text(
                    'Đặt hàng',
                    style: TextStyle(fontSize: 15),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF6F35A5))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
