// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, sized_box_for_whitespace, unnecessary_import

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class MazdaUI extends StatefulWidget {
  const MazdaUI({super.key});

  @override
  State<MazdaUI> createState() => _MazdaUIState();
}

class _MazdaUIState extends State<MazdaUI> {
  //PASSENGER
  List<String> typeSedan = [
    'https://mazdaarena.com/wp-content/uploads/2022/10/LINE_ALBUM_M2-Sedan_221025_6.jpg',
    'https://mazdaarena.com/wp-content/uploads/2022/10/LINE_ALBUM_M2-Hatchback_221025_1.jpg',
    'https://mazdaarena.com/wp-content/uploads/2022/10/LINE_ALBUM_M3-Sedan_221025_2-768x329.jpg',
    'https://mazdaarena.com/wp-content/uploads/2022/10/LINE_ALBUM_M3-Fastback_221025_6-768x334.jpg',
    ];
  //PASSENGER
  List<String> sedanData = [
    'MAZDA2 SEDAN\n546,000 บาท',
    'MAZDA2 HATCHBACK\n546,000 บาท',
    'Mazda 2 1.5 XDL\n830,000 บาท',
    'Mazda 2 1.3 SP\n730,000  บาท',
  ];
  //CX-SERIES
  List<String> typeSuv = [
    'https://mazdaarena.com/wp-content/uploads/2022/10/LINE_ALBUM_CX-3_221025_3-768x364.jpg',
    'https://mazdaarena.com/wp-content/uploads/2022/10/LINE_ALBUM_CX-30_221025_0-768x357.jpg',
    'https://mazdaarena.com/wp-content/uploads/2022/10/LINE_ALBUM_CX-5_221025_3-768x372.jpg',
    'https://mazdaarena.com/wp-content/uploads/2022/10/LINE_ALBUM_CX-8_221025_3-768x358.jpg',
  ];
  //CX-SERIES
  List<String> suvData = [
    'MAZDA CX-3\n786,000 บาท',
    'MAZDA CX-30\n989,000 บาท',
    'Mazda CX-3 2.0\n970,000 บาท',
    'Mazda CX-3 2.0 Base Plus\n1,549,000 บาท',
  ];
  //Mazda MX
  List<String> typeTruck = [
    'https://www.checkraka.com/uploaded/gallery/1e/1eb917e686276031344f9db0b94156d3.jpg',
    'https://www.checkraka.com/uploaded/gallery/0d/0db41588f045fe8005ca4d83a0bba723.jpg',
    'https://www.checkraka.com/uploaded/gallery/0d/0db41588f045fe8005ca4d83a0bba723.jpg',
    'https://www.checkraka.com/uploaded/gallery/b3/b3458f474e4f2c0b92d431126e8652dd.jpg',
    ];
  //Mazda MX
  List<String> truckData = [
    'Mazda MX-5 2.0 RF MT\n3,029,000 บาท',
    'Mazda MX-5 2.0 RF\n3,029,000 บาท',
    'Mazda BT-50 Double Cab 4X4 3.0 SP 6AT\n1,272,000 บาท',
    'Mazda BT-50 Double Cab 1.9 s Hi-Racer \n922,000 บาท',
  ];
  //Mazda BT-50
  List<String> typeVan = [
    'https://www.mazda.co.th/link/6ca443ad4179469384bdb090ce701750.aspx',
    'https://www.mazda.co.th/link/6ca443ad4179469384bdb090ce701750.aspx',
    'https://www.mazda.co.th/link/6ca443ad4179469384bdb090ce701750.aspx',
    'https://www.mazda.co.th/link/6ca443ad4179469384bdb090ce701750.aspx',
    
  ];
//Mazda BT-50
  List<String> vanData = [
    'Mazda 1.9 C\n 679,000 บาท',
    'Mazda 1.9 C Hi-Racer \n874,000 บาท',
    'Mazda 1.9 S Hi-Racer 6AT\n939,000 บาท',
    'Mazda 4x4 3.0 SP 6AT \n999,000 บาท',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 108, 15),
        title: Text(
          'mazda',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                'PASSENGER',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: typeSedan.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Column(
                          children: [
                            Image.network(
                              typeSedan[index],
                              width: MediaQuery.of(context).size.width * 0.35,
                            ),
                            Text(
                              sedanData[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.027),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Text(
                'CX-SERIES',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: typeSuv.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Column(
                          children: [
                            Image.network(
                              typeSuv[index],
                              width: MediaQuery.of(context).size.width * 0.35,
                            ),
                            Text(
                              suvData[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.027),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Text(
                'Mazda MX',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: typeTruck.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Column(
                          children: [
                            Image.network(
                              typeTruck[index],
                              width: MediaQuery.of(context).size.width * 0.35,
                            ),
                            Text(
                              truckData[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.027),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Text(
                'Mazda BT-50',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: typeVan.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Column(
                          children: [
                            Image.network(
                              typeVan[index],
                              width: MediaQuery.of(context).size.width * 0.35,
                            ),
                            Text(
                              vanData[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.027),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }

 
}
