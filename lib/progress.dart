import 'package:flutter/material.dart';

class progresss extends StatelessWidget {
  const progresss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF4F6FA),
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "The following is the development checklist for a\n1mo baby. Tap this card to update Richard’s\ndevelopment progress.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff4C5980), fontSize: 12),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          RichText(
            text: TextSpan(
                text: '1st ',
                style: TextStyle(
                    color: Color(0xff76265E3),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'Month',
                    style: TextStyle(
                        color: Color(0xff2D3142),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                minHeight: 10,
                backgroundColor: Color(0xffE1DDF5),
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff7265E3)),
                value: 0.15,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            height: 60,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/off.png'))),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Look at you")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              height: 60,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(209, 204, 234, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage('images/on.png'))),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Startle to loud noise ")
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.5, right: 30.5),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffE8E9EA),
                    width: 1,
                  ),
                  color: Color(0xffF4F6FA),
                  borderRadius: BorderRadius.circular(40)),
              child: Padding(
                padding: const EdgeInsets.only(left: 3, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff8C80F8),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/Queue.png"))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Browse all Millstones",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff7265E3),
                                fontWeight: FontWeight.w600))
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/re.png"))),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
