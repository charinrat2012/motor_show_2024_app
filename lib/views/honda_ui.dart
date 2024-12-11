// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, sized_box_for_whitespace, unnecessary_import

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class HondaUI extends StatefulWidget {
  const HondaUI({super.key});

  @override
  State<HondaUI> createState() => _HondaUIState();
}

class _HondaUIState extends State<HondaUI> {
  //Honda BR-V
  List<String> typeSedan = [
    'https://www.honda.co.th/uploads/car_models/grade/1660883082_751.jpg',
    'https://www.honda.co.th/uploads/car_models/grade/1660883082_751.jpg',
    'https://www.honda.co.th/uploads/car_models/grade/1654249371_709.png',
    'https://www.honda.co.th/uploads/car_models/grade/1635850799_725.png',
    ];
  //Honda BR-V 
  List<String> sedanData = [
    'E - Taffeta White\n915,000  บาท' ,
    'E - Crystal Black\n921,000  บาท',
    'EL - Crystal Black \n973,000 บาท',
    'EL – Premium Sunlight\n977,000 บาท',
  ];
/ //Honda Civic
  List<String> typeSuv = [
    'https://www.honda.co.th/uploads/car_models/grade/1654618914_592.png',
    'https://www.honda.co.th/uploads/car_models/grade/1655097125_413.png',
    'https://www.honda.co.th/uploads/car_models/grade/1654619095_831.png',
    'https://www.honda.co.th/uploads/car_models/grade/1654249371_709.png',
  ];
  //Honda Civic
  List<String> suvData = [
    'EL \n964,900 บาท',
    'EL+\n1,009,900 บาท',
    'e:HEV EL+\n1,129,000 บาท',
    'e:HEV RS\n1,259,000 บาท',
  ];
  //Honda HR-V
  List<String> typeTruck = [
    'https://www.honda.co.th/uploads/car_models/grade/1635850799_593.png',
    'https://www.honda.co.th/uploads/car_models/grade/1635850799_728.png',
    'https://www.honda.co.th/uploads/car_models/grade/1635850799_725.png',
    'https://www.honda.co.th/uploads/car_models/grade/1635850799_728.png',
    ];
  //Honda HR-V
  List<String> truckData = [
    'e:HEV E\n979,000 บาท',
    'e:HEV EL\n1,079,000 บาท',
    'e:HEV RS\n1,179,000 บาท',
    'e:HEV E\n1,529,000 บาท'
  ];
//Honda CR-V 2024
  List<String> typeVan = [
    'https://www.honda.co.th/uploads/car_models/grade/1678430740_127.jpg',
    'https://www.honda.co.th/uploads/car_models/grade/1678431887_437.jpg',
    'https://www.honda.co.th/uploads/car_models/grade/1678431887_982.jpg',
    'https://www.honda.co.th/uploads/car_models/grade/1678431887_674.jpg',
  ];
  //Honda CR-V 2024
  List<String> vanData = [
    'Honda E \n1,419,000 บาท',
    'Honda ES 4WD\n 1,599,000 บาท',
    'Honda EL 4WD\n1,649,000 บาท',
    'Honda e:HEV ES\n1,589,000 บาท',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 108, 15),
        title: Text(
          'HONDA',
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
                'Honda BR-V',
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
                'Honda Civic',
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
                'Honda HR-V',
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
                'Honda CR-V 2024',
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
