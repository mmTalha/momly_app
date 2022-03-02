import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class supportmomly {
  Widget stakeprice(BuildContext context, price, sale) {
    return Stack(
      children: [
        Container(
            height: 130,
            width: MediaQuery.of(context).size.width,
            color: Colors.white),
        Positioned(
          top: 25,
          right: 7,
          left: 7,
          bottom: 5,
          child: Container(
            height: 10,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
              border: Border.all(
                color: Color(0xff8C80F8),
                width: 2.0,
              ),
            ),
          ),
        ),
        Positioned(
          top: 30,
          right: 5,
          left: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 6, right: 6),
            child: Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color(0xff8C80F8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      sale,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class signin {
  Widget sign(coolor, text, Color txtclr, size, wght, assets) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration:
          BoxDecoration(color: coolor, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(assets),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(color: txtclr, fontSize: size, fontWeight: wght),
          )
        ],
      ),
    );
  }
}

class lisst {
  Widget Lisst(name, text) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(name),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 24, color: Color(0xff2D3142)),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 20),
          child: Divider(),
        ),
      ],
    );
  }
}

class skill {
  Widget skills(text, rate) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 16, color: Color(0xff2D3142)),
        ),
        RatingBar.builder(
          itemSize: 20,
          initialRating: rate,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Color(0xffFF9D2B),
          ),
          onRatingUpdate: (rating) {},
        ),
      ],
    );
  }
}
