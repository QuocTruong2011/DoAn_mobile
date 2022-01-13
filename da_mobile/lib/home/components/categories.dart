import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({
    Key key,
  }) : super(key: key);
  List<String> categories = [
    "assets/images/Cate-01.jpg",
    "assets/images/Cate-02.jpg",
    "assets/images/Cate-03.jpg",
    "assets/images/Cate-01.jpg",
    "assets/images/Cate-02.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Loại",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Xem thêm",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(Icons.double_arrow),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width,
          height: size.height * 0.23,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  onTap: () {
                    print("AAAA");
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 0.3,
                        height: size.height * 0.2,
                        color: Colors.white,
                        child: Image.asset(categories[index], fit: BoxFit.fill),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          "Chính trị",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                             

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
// Container(
//                         width: size.width * 0.3,
//                         height: size.height * 0.2,
//                         color: Colors.white,
//                         child: Image.asset(
//                           "assets/images/Cate-01.jpg",
//                           fit: BoxFit.cover,
//                         ),
//                       ),
