// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_final_fields, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';


class CalculateUI extends StatefulWidget {
  const CalculateUI({super.key});

  @override
  State<CalculateUI> createState() => _CalculateUIState();
}

class _CalculateUIState extends State<CalculateUI> {
  //สร้างเมธอดแสดง WarningMessage
  showWarningMessage(context, header, msg) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          header,
          textAlign: TextAlign.center,
        ),
        content: Text(
          msg,
          textAlign: TextAlign.center,
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'ตกลง',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }

  String _periodSelected = '12 งวด(1ปี)';

  List<String> _period = [
    '12 งวด(1ปี)',
    '24 งวด(2ปี)',
    '36 งวด(3ปี)',
    '48 งวด(4ปี)',
    '60 งวด(5ปี)',
    '72 งวด(6ปี)',
  ];

  TextEditingController _carCtrl = new TextEditingController(text: '');
  TextEditingController _interestCtrl = new TextEditingController(text: '');

  // Group radio
  int _partpay = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 108, 15),
        title: Text(
          'คำนวณค่างวดรถ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height * 0.01),
                  child: Image.asset(
                    'assets/images/logo1.png',height: MediaQuery.of(context).size.height * 0.2
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 200),
                  child: Text(
                    'ราคารถ (บาท)',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Expanded(
                    child: TextField(
                      controller: _carCtrl,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^[0-9]+.?[0-9]*'),
                        ),
                      ],
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 200),
                  child: Text(
                    'เงินดาวน์ (%)',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 10,
                      groupValue: _partpay,
                      onChanged: (paramValue) {
                        setState(() {
                          _partpay = paramValue!;
                        });
                      },
                    ),
                    Text(
                      '10%',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Radio(
                      value: 20,
                      groupValue: _partpay,
                      onChanged: (paramValue) {
                        setState(() {
                          _partpay = paramValue!;
                        });
                      },
                    ),
                    Text(
                      '20%',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Radio(
                      value: 25,
                      groupValue: _partpay,
                      onChanged: (paramValue) {
                        setState(() {
                          _partpay = paramValue!;
                        });
                      },
                    ),
                    Text(
                      '25%',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Radio(
                      value: 30,
                      groupValue: _partpay,
                      onChanged: (paramValue) {
                        setState(() {
                          _partpay = paramValue!;
                        });
                      },
                    ),
                    Text(
                      '30%',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 200),
                  child: Text(
                    'จำนวนปีที่ผ่อน',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: DropdownButton(
                    value: _periodSelected,
                    isExpanded: true,
                    onChanged: (paramValue) {
                      setState(() {
                        _periodSelected = paramValue!;
                      });
                    },
                    items: _period
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Center(
                                child: Text(
                                  e,
                                  textAlign: TextAlign
                                      .center, 
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 200),
                  child: Text(
                    'ดอกเบี้ย (%) ต่อปี',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Expanded(
                    child: TextField(
                      controller: _interestCtrl,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^[0-9]+.?[0-9]*'),
                        ),
                      ],
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: ElevatedButton(
                          child: Text(
                            'คำนวณค่างวดรถ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.025,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[400],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fixedSize: Size(
                                MediaQuery.of(context).size.height * 0.1,
                                MediaQuery.of(context).size.height * 0.1),
                          ),
                          onPressed: () {
                            //Validate data
                            int years = 1;
                            if (_carCtrl.text.trim() == '' ||
                                _carCtrl.text.trim() == '0') {
                              showWarningMessage(context, 'คำเตือน',
                                  'กรุณาป้อน "ราคารถ" ด้วย');
                              return;
                            } else if (_interestCtrl.text.trim() == '') {
                              showWarningMessage(context, 'คำเตือน',
                                  'กรุณาป้อน "ดอกเบี้ย (%)" ด้วย');
                              return;
                            } else {
                              if (_periodSelected == '12 งวด(1ปี)') {
                                years = 1;
                              } else if (_periodSelected == '24 งวด(2ปี)') {
                                years = 2;
                              } else if (_periodSelected == '36 งวด(3ปี)') {
                                years = 3;
                              } else if (_periodSelected == '48 งวด(4ปี)') {
                                years = 4;
                              } else if (_periodSelected == '60 งวด(5ปี)') {
                                years = 5;
                              } else if (_periodSelected == '72 งวด(6ปี)') {
                                years = 6;
                              }
                              double carPrice = double.parse(
                                      _carCtrl.text.trim()), //ราคารถ
                                  interest = double.parse(_interestCtrl.text
                                      .trim()), //ดิกเบี้ยต่อปี
                                  partpayCaled =
                                      carPrice * (_partpay / 100), //เงินดาวน์

                                  Financing = carPrice - partpayCaled, //ยอดจัด
                                  Interest_amount = Financing *
                                      (interest / 100), //จำนวนเงินดอกเบี้ย(บาท)
                                  Intrest_all =
                                      Interest_amount * years, //ดอกเบี้ยทั้งหมด
                                  Monthly_installment = (Financing +
                                          Intrest_all) /
                                      (years * 12); //จำนวนเงินผ่อนต่อเดือน(บาท) ยังไม่รวม Vat 7%
                              String formattedCarPrice =
                                  NumberFormat("#,###").format(carPrice);
                              String formattedpartpay =
                                  NumberFormat("#,###").format(_partpay);
                              String formattedpartpayCaled =
                                  NumberFormat("#,###").format(partpayCaled);
                              String formattedMonthly_installment =
                                  NumberFormat("#,###")
                                      .format(Monthly_installment);
                              showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text(
                                    'ยอดผ่อนรถต่อเดือน',
                                    textAlign: TextAlign.center,
                                  ),
                                  content: Text(
                                    'รถราคา ' +
                                        formattedCarPrice.toString() +
                                        ' บาท\n' +
                                        'ดาวน์ ' +
                                        formattedpartpay.toString() +
                                        '% เป็นเงิน ' +
                                        formattedpartpayCaled.toString() +
                                        ' บาท\n' +
                                        'จำนวนผ่อน ' +
                                        (years * 12).toString() +
                                        ' เดือน\n' +
                                        'ค่าผ่อนต่อเดือนเป็นเงิน ' +
                                        formattedMonthly_installment
                                            .toString() +
                                        ' บาท',
                                    textAlign: TextAlign.center,
                                  ),
                                  actionsAlignment: MainAxisAlignment.center,
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'ตกลง',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey[800],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
