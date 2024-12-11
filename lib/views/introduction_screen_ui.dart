// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motor_show_2024_project/views/home_ui.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: IntroductionScreen(
        dotsContainerDecorator: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://pbs.twimg.com/media/EYVptvOUEBQN1xt?format=jpg&name=large',
            ),
            fit: BoxFit.fill,
          ),
        ),
        globalBackgroundColor: Color.fromARGB(255, 222, 108, 15),
        autoScrollDuration: 3000,
        infiniteAutoScroll: true,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageUi(
              ' Honda City  รุ่น e:HEV RS',
              'https://www.honda.co.th/uploads/car_models/colors/1679246645_525.png',
              'Honda City  รุ่น e:HEV RS สปอร์ตพรีเมียมซีดานที่สะกดทุกสายตา สปอร์ตยิ่งขึ้นด้วยดีไซน์ใหม่รอบคัน โฉบเฉี่ยวในทุกมุมมองพร้อมฟังก์ชันการใช้งานที่ตอบโจทย์การใช้ชีวิตของคนยุคใหม่ ราคาเริ่มต้น 839,000 บาท'),
          PageUi(
              'Toyota Corolla Cross',
              'https://www.toyotabuzz.com/img/upload/general/20240209070042_582561878.png',
              'Toyota Corolla Cross ปรับโฉมหน้าใหม่ ด้วยดีไซน์และเทคโนโลยีที่ล้ำสมัย ครบครันกับฟังก์ชันความสะดวกสบายเหนือใครในทุกสัมผัส ภายใต้แนวคิด "COMPLETE YOUR LIFE"  ราคาเริ่มต้น 999,000 บาท'),
          PageUi(
              'Mazda 2 2024',
              'https://www.headlightmag.com/hlmwp/wp-content/uploads/2023/09/Mazda_2_CX-3-2024-new-infotainment_01.jpg',
              'New Mazda2 แตกต่างได้เต็มที่ กับหลากหลายสไตล์ของความสนุกที่เลือกได้เท่าที่ใจต้องการ เป็นตัวเองได้แบบไม่ซ้ำทางใครแต่แฝงด้วยความโฉบเฉี่ยว ปราดเปรียวทรงพลัง ราคาเริ่มต้น 599,000 บาท '),
          PageUi(
              'Mitsubishi Pajero Sport 2.4 ULTRA',
              'https://www.mitsubishi-motors.co.th/content/dam/mitsubishi-motors-th/images/site-images/vehicle-page-assets/pajero-sport/2024/mainpage/pajero-mainpage-model-elite.jpg?width=1080&auto=webp',
              'Mitsubishi Pajero Sport 2.4 ULTRA ที่สุดแห่งยนตรกรรมเหนือระดับ สะท้อนความสำเร็จในทุกด้าน โดดเด่น สง่างามในทุกเส้นทางที่ไป ราคาเริ่มต้น 1,579,000 บาท.'),
        ],
        showSkipButton: true,
        skip: Text(
          'ข้าม',
          style: GoogleFonts.kanit(color: const Color.fromARGB(255, 222, 108, 15)),
        ),
        onSkip: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size(MediaQuery.of(context).size.width * 0.025,
              MediaQuery.of(context).size.width * 0.025),
          color: Color.fromARGB(255, 255, 255, 255),
          activeSize: Size(MediaQuery.of(context).size.width * 0.025,
              MediaQuery.of(context).size.width * 0.025),
          activeColor: Color.fromARGB(255, 255, 0, 0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        next: Icon(Icons.arrow_forward_sharp,
            color: const Color.fromARGB(255, 222, 108, 15)),
        nextFlex: 0,
        done: Text(
          'เริ่มต้น',
          style: GoogleFonts.kanit(color: const Color.fromARGB(255, 222, 108, 15)),
        ),
        onDone: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
      ),
    );
  }

  PageViewModel PageUi(
    String IName,
    String IImage,
    String Index,
  ) {
    return PageViewModel(
      titleWidget: Text(
        IName,
        style: GoogleFonts.kanit(
          fontSize: MediaQuery.of(context).size.height * 0.035,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      image: Image.network(
        IImage,
      ),
      bodyWidget: Center(
        child: Text(
          '  ' + Index,
          style: GoogleFonts.kanit(
            fontSize: MediaQuery.of(context).size.height * 0.025,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
