import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import 'custom_button.dart';

class BuildLandscape extends StatefulWidget {
  const BuildLandscape({Key? key}) : super(key: key);

  @override
  State<BuildLandscape> createState() => _BuildLandscapeState();
}
class _BuildLandscapeState extends State<BuildLandscape> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //todo display section
      Expanded(
        flex: 3,
        child: Container(
          alignment: Alignment.centerRight,
          width: double.infinity,
          height: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        displayInformation,
                        style: TextStyle(
                            overflow: TextOverflow.clip,
                            color: Color(0xff818181),
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ))),
              Expanded(
                  child: Text(
                displayResult,
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w500,
                    fontSize: 35),
              )),
            ],
          ),
        ),
      ),
     //todo first row
      Expanded(
        flex: 2,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff616161),
                    textColor: Color(0xffA5A5A5),
                    buttonText: "AC",
                    buttonTabbed: () {
                      setState(() {
                        displayInformation = '';
                        displayResult = '';
                      });
                    })),
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff616161),
                    textColor: Color(0xffA5A5A5),
                    buttonText: "DEL",
                    buttonTabbed: () {
                      setState(() {
                        if (displayInformation.length > 0) {
                          displayInformation = displayInformation.substring(
                              0, displayInformation.length - 1);
                        }
                      });
                    })),
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff005DB2),
                    textColor: Color(0xff339DFF),
                    buttonText: "%",
                    buttonTabbed: () {
                      setState(() {
                        if(!displayInformation.endsWith('%')){
                          displayInformation += '%';
                        }
                      });
                    })),
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff005DB2),
                    textColor: Color(0xff24A5FF),
                    buttonText: "/",
                    buttonTabbed: () {
                      setState(() {
                        if(!displayInformation.endsWith('/')){
                          displayInformation += '/';
                        }
                      });
                    })),
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff005DB2),
                    textColor: Color(0xff339DFF),
                    buttonText: "+",
                    buttonTabbed: () {
                      setState(() {
                         if(!displayInformation.endsWith('+')){
                          displayInformation += '+';
                        }
                      });
                    })),
          ],
        ),
      ),
      //todo second row
      Expanded(
        flex: 2,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff303136),
                    textColor: Color(0xff29A8FF),
                    buttonText: "6",
                    buttonTabbed: () {
                      setState(() {
                        displayInformation += '6';
                      });
                    })),
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff303136),
                    textColor: Color(0xff29A8FF),
                    buttonText: "7",
                    buttonTabbed: () {
                      setState(() {
                        displayInformation += '7';
                      });
                    })),
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff303136),
                    textColor: Color(0xff29A8FF),
                    buttonText: "8",
                    buttonTabbed: () {
                      setState(() {
                        displayInformation += '8';
                      });
                    })),
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff303136),
                    textColor: Color(0xff29A8FF),
                    buttonText: "9",
                    buttonTabbed: () {
                      setState(() {
                        displayInformation += '9';
                      });
                    })),

            // ToDo

            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff005DB2),
                    textColor: Color(0xff24A5FF),
                    buttonText: "-",
                    buttonTabbed: () {
                      setState(() {
                         if(!displayInformation.endsWith('-')){
                          displayInformation += '-';
                        }
                      });
                    })),
          ],
        ),
      ),
     //todo third row
      Expanded(
        flex: 2,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff303136),
                    textColor: Color(0xff29A8FF),
                    buttonText: "2",
                    buttonTabbed: () {
                      setState(() {
                        displayInformation += '2';
                      });
                    })),
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff303136),
                    textColor: Color(0xff29A8FF),
                    buttonText: "3",
                    buttonTabbed: () {
                      setState(() {
                        displayInformation += '3';
                      });
                    })),
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff303136),
                    textColor: Color(0xff29A8FF),
                    buttonText: "4",
                    buttonTabbed: () {
                      setState(() {
                        displayInformation += '4';
                      });
                    })),
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff303136),
                    textColor: Color(0xff29A8FF),
                    buttonText: "5",
                    buttonTabbed: () {
                      setState(() {
                        displayInformation += '5';
                      });
                    })),
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff005DB2),
                    textColor: Color(0xff24A5FF),
                    buttonText: "*",
                    buttonTabbed: () {
                      setState(() {
                        if(!displayInformation.endsWith('*')){
                          displayInformation += '*';
                        }
                      });
                    })),
          ],
        ),
      ),
    //todo fourth row
      Expanded(
        flex: 2,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff303136),
                    textColor: Color(0xff29A8FF),
                    buttonText: "1",
                    buttonTabbed: () {
                      setState(() {
                        displayInformation += '1';
                      });
                    })),
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff303136),
                    textColor: Color(0xff29A8FF),
                    buttonText: "0",
                    buttonTabbed: () {
                      setState(() {
                        displayInformation += '0';
                      });
                    })),
            Expanded(
                child: CustomButton(
                    buttonColor: Color(0xff303136),
                    textColor: Color(0xff29A8FF),
                    buttonText: ".",
                    buttonTabbed: () {
                      setState(() {
                        displayInformation += '.';
                      });
                    })),
            Expanded(
                flex: 2,
                child: CustomButton(
                    buttonColor: Color(0xff1a90ff),
                    textColor: Color(0xffB2DAFF),
                    buttonText: "=",
                    buttonTabbed: () {
                      setState(() {
                        equalTab();
                      });
                    })),
          ],
        ),
      )
    ]);
  }
}
