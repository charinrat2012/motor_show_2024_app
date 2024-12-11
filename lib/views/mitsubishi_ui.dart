// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, sized_box_for_whitespace, unnecessary_import

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class MitsubishiUI extends StatefulWidget {
  const MitsubishiUI({super.key});

  @override
  State<MitsubishiUI> createState() => _ToyotaUIState();
}

class _ToyotaUIState extends State<MitsubishiUI> {
  //Mitsubishi Pajero Sport 
List<String> typeSedan = [
    'https://www.checkraka.com/uploaded/gallery/4e/4e1439b94730dca30088a40883b9919e.jpg',
    'https://www.checkraka.com/uploaded/gallery/0a/0ad9b4945d62d5cf72d656ce9f04cee9.jpg',
    'https://www.checkraka.com/uploaded/gallery/2c/2c906b22e74c7fc9f7a6423d2984315a.jpg',
    'https://www.checkraka.com/uploaded/gallery/2c/2c906b22e74c7fc9f7a6423d2984315a.jpg',
    ];
  //Mitsubishi Pajero Sport 
  List<String> sedanData = [
    'Mitsubishi Pajero Sport Elite Edition 4WD\n1,689,000  บาท',
    'Mitsubishi Pajero Sport Elite Edition 2WD \n1,579,000 บาท',
    'Mitsubishi Pajero Sport Ultra 2WD\n1,529,000 บาท',
    'Mitsubishi Pajero Sport Prime 2WD\n1,389,000 บาท',
  ];
  //Mitsubishi Triton
  List<String> typeSuv = [
    'http://www.mitsuimpression.com/wp-content/uploads/2022/09/W85_0_20L200-36-R-Side.webp',
    'http://www.mitsuimpression.com/wp-content/uploads/2022/09/U25_0_20L200-33-R-Side.webp',
    'http://www.mitsuimpression.com/wp-content/uploads/2022/09/M08_0_20L200-46-R-Side.webp',
    'http://www.mitsuimpression.com/wp-content/uploads/2022/09/U25_0_20L200-33-R-Side.webp',
  ];
  //Mitsubishi Triton
  List<String> suvData = [
    'Mitsubishi Triton Athlete 4WD AT\n 1,298,000 บาท',
    'Mitsubishi Triton Double Cab 2.4 ULTRA 4WD AT\n 1,228,000 บาท',
    'Mitsubishi Triton Athlete 2WD AT\n 1,125,000 บาท',
    'Mitsubishi Triton Double Cab Plus 2.4 ULTRA AT\n 1,027,000 บาท',
  ];
  //RALLIART
  List<String> typeTruck = [
    'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/cars/space-star/2020/primary/exterior/20spacestar-01-r/Y35_0_20SPACE_STAR-01-R-Side.png?width=2160&auto=webp&quality=70',
    'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/cars/space-star/2020/primary/exterior/20spacestar-02-r/Y35_0_20SPACE_STAR-02-R-Side.png?width=2160&auto=webp&quality=70',
    'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/cars/space-star/2020/primary/exterior/20spacestar-04-r/Y35_0_20SPACE_STAR-04-R-Side.png?width=2160&auto=webp&quality=70',
    'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/cars/space-star/2020/primary/exterior/20spacestar-01-r/Y35_0_20SPACE_STAR-01-R-Side.png?width=2160&auto=webp&quality=70',
    
    ];
  //RALLIART
  List<String> truckData = [
    'ACTIVE MT\n350,000 บาท',
    'mACTIVE CVT\n350,000 บาท',
    'SMART CVT\n350,000 บาท',
    'ACTIVE MT\n350,000 บาท',
  ];
  //xpander
  List<String> typeVan = [
    'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/cars/xpander/2022/primary/exterior/22xpander-02/U33_0_22XPANDER-02_Side.png?width=1600&auto=webp&quality=70',
    'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/cars/xpander/2022/primary/exterior/22xpander-01/U33_0_22XPANDER-01_Side.png?width=1600&auto=webp&quality=70',
    'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/cars/xpander/2022/primary/exterior/22xpander-02/U33_0_22XPANDER-02_Side.png?width=1600&auto=webp&quality=70',
    'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/cars/xpander/2022/primary/exterior/22xpander-01/U33_0_22XPANDER-01_Side.png?width=1600&auto=webp&quality=70',
  ];
  //xpander
  List<String> vanData = [
    'Mitsubishi GLS-LTD\n799,000 บาท',
    'Mitsubishi GT\n912,000 บาท',
    'Mitsubishi GLS-LTD\n838,000 บาท',
    'Mitsubishi GT\n912,000 บาท',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 108, 15),
        title: Text(
          'Mitsubishi',
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
                'Mitsubishi Pajero Sport ',
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
                'Mitsubishi Triton',
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
                'RALLIART',
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
                'xpander',
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
