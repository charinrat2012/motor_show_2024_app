// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, sized_box_for_whitespace, unnecessary_import

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class ToyotaUI extends StatefulWidget {
  const ToyotaUI({super.key});

  @override
  State<ToyotaUI> createState() => _ToyotaUIState();
}

class _ToyotaUIState extends State<ToyotaUI> {
  //SUV & PPV
List<String> typeSedan = [
    'https://www.toyota.co.th/media/product/series/v/400/model/26067ee5ca9cf608fd0d1d07f31d62ab7f877e2735fd19c2f368748fe0538bb1.webp',
    'https://www.toyota.co.th/media/product/series/v/400/model/f3f18ada6b794af900318012273751994771fae830b6c48edeee76445557e5eb.webp',
    'https://www.toyota.co.th/media/product/series/v/400/model/2cf45aa691bb11fabf32a2396c3409731866a9b409c6d86faccbf060791d6370.webp',
    'https://www.toyota.co.th/media/product/series/v/400/model/8a92490ba2ffe28908a0b9ee6537201f5bbd528138a1c238e4f2c198d5892ae8.webp',
    ];
  //SUV & PPV
  List<String> sedanData = [
    'Toyota Yaris Cross\n789,000 บาท',
    'Toyota Corolla Cross\n999,000 บาท',
    'Toyota Corolla Cross GR Sport\n1,254,000 บาท',
    'Toyota Fortuner GR Sport\n1,969,000 บาท',
  ];
  //รถเก๋ง
  List<String> typeSuv = [
    'https://www.toyota.co.th/media/product/series/v/400/model/798d3263ac30c6c04da396ec92f645ef5f63be21e495388710a9eb1f8a8bc7df.webp',
    'https://www.toyota.co.th/media/product/series/v/400/model/1dea65bfaf4b381d48c507e6a7f801cd8926878db5a8f59875a0333370f54345.webp',
    'https://www.toyota.co.th/media/product/series/v/400/model/8f531d06b8c59637939f9080950085d7d773cb7bd7ec395dfa06e51fb48aa5f5.webp',
    'https://www.toyota.co.th/media/product/series/v/400/model/cb286fa0b5dd5f2fb079416900dc2f76d58c836b20aa36b37b4600afd0be7e52.webp',
  ];
//รถเก๋ง
  List<String> suvData = [
    'Toyota Yaris ATIV\n549,000 บาท',
    'Toyota Yaris\n559,000 บาท',
    'Toyota Corolla Altis GR Sport\n1,129,000 บาท',
    'Toyota GR 86\n2,949,000 บาท',
  ];
  //รถ MPv
  List<String> typeTruck = [
    'https://www.toyota.co.th/media/product/series/v/400/model/5b62fe2031bd04c164312db1ae7e80f2774ebabd871ddfeff5de6edc13a52452.webp',
    'https://www.toyota.co.th/media/product/series/v/400/model/73d696df6995a80e7849261f58547d987f81227f9acf9b6f75c590a99c0ae019.webp',
    'https://www.toyota.co.th/media/product/series/v/400/model/216e669c08dbce0ea887caaa0f6312b7671b58497788806ff5a748fe631d12f4.webp',
    'https://autostation.com/wp-content/uploads/2024/01/%E0%B8%94%E0%B8%B2%E0%B8%A7%E0%B8%99%E0%B9%8C%E0%B9%82%E0%B8%AB%E0%B8%A5%E0%B8%94-3-1.png',
     ];
  //รถ MPv
  List<String> truckData = [
    'Veloz\n795,000 บาท',
    'Innova Zenix\n1,379,000 บาท',
    'Alphard\n4,129,000 บาท',
    'Toyota VOXY Mini\n1,342,110 บาท',
  ];
  //รถกระบะ
  List<String> typeVan = [
    'https://www.toyota.co.th/media/product/series/v/400/model/206ea86d3b616e0097b78039d2d2ab94236fabef79bb0f92cf0d6432614b2e68.webp',
    'https://www.toyota.co.th/media/product/series/v/400/model/9ea937f22dd5ac6229be3218c42912381834dcb103ca8b91419e1b34372f7c72.webp',
    'https://www.toyota.co.th/media/product/series/v/400/model/c5862597d4d2969903b3e7d1dc3b403f074430d6127715e11eb1a00731776821.webp',
    '',
    ];
  //รถกระบะ
  List<String> vanData = [
    'Hilux Champ\n459,000 บาท',
    'Hilux Revo Standard Cab\n584,000 บาท',
    'Hilux Revo GR Sport\n934,000 บาท',
    'Hilux Revo Rocco\n1,006,000 บาท',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 108, 15),
        title: Text(
          'Toyota',
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
                'SUV & PPV',
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
                'รถเก๋ง',
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
                'รถ MPv',
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
                'รถระบะ',
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
