import 'package:flutter/material.dart';

class TitleDetails extends StatefulWidget {
  const TitleDetails({
    Key key,
  }) : super(key: key);

  @override
  State<TitleDetails> createState() => _TitleDetailsState();
}

class _TitleDetailsState extends State<TitleDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      height: size.height * 0.2,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "999 lá thư gửi cho mình",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Container(
                height: size.height * 0.06,
                width: size.width * 0.15,
                color: Colors.yellow,
                child: Column(
                  children: const [
                    Text(
                      "20%",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      "Giảm",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Text(
            "đ200.000",
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: size.width * 0.7,
                height: size.height * 0.05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    builIconFavitor(),
                    const Text(
                      "5.0",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: size.width * 0.001,
                      height: size.height * 0.05,
                      color: Colors.white,
                    ),
                    Text(
                      "Đã bán 1k",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width * 0.2,
                height: size.height * 0.05,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: size.height * 0.002,
            width: size.width,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Row builIconFavitor() {
    return Row(
      children: const [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
