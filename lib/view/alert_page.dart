import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/config/colors_config.dart';
import 'package:task/widget/alertPageComponents/app_bar.dart';
import 'package:task/widget/homeComponents/container_dialog.dart';
import '../config/size_config.dart';
import '../model/data.dart';
import '../widget/alertPageComponents/container_info.dart';
import '../widget/alertPageComponents/drop_down_button.dart';
import '../widget/alertPageComponents/listof_numbers.dart';
import '../widget/alertPageComponents/toggle_switch.dart';

// ignore: depend_on_referenced_packages
import 'package:awesome_dialog/awesome_dialog.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  State<AlertPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AlertPage> {
  final myController = TextEditingController();

  bool bookMark = false;
  static List<String> roomList = <String>[
    'Room 1.02',
  ];

  @override
  Widget build(BuildContext context) {
    double w = SizeConfig.getWidth(context);
    double h = SizeConfig.getHeight(context);
    return Scaffold(
      backgroundColor: Colors.white, //<-- SEE HERE
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBarC2(returnF: () {
              Navigator.pop(context);
            }),
            const ContainerInfo(
              text: 'Site',
              info: true,
            ),
            DropdownButtonExample(
              bookMarkIcon: true,
              data: Data.dropDownData1,
              bookMark: bookMark,
              onTapF: () {
                setState(() {
                  bookMark = !bookMark;
                });
              },
            ),
            const ContainerInfo(
              text: 'Zone',
              info: true,
            ),
            DropdownButtonExample(
              bookMarkIcon: true,
              data: Data.dropDownData2,
              bookMark: !bookMark,
              onTapF: () {
                setState(() {
                  bookMark = !bookMark;
                });
              },
            ),
            const ContainerInfo(
              text: 'Level',
              info: false,
            ),
            const ListOfNumber(),
            const ContainerInfo(
              text: 'Location',
              info: false,
            ),
            const Toggle(switch1: 'Room', switch2: 'Equipment'),
            ContainerWithDialodg(
              add: () {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.NO_HEADER,
                  headerAnimationLoop: false,
                  animType: AnimType.BOTTOMSLIDE,
                  title: 'Add Room',
                  buttonsTextStyle: const TextStyle(color: Colors.black),
                  body: SizedBox(
                      height: h * .1,
                      width: w * .7,
                      child: Column(
                        children: [
                          SizedBox(
                            height: h * .03,
                          ),
                          SizedBox(
                            height: h * .05,
                            width: w * .6,
                            child: TextField(
                              controller: myController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Example Room 0.2',
                              ),
                            ),
                          )
                        ],
                      )),
                  showCloseIcon: true,
                  btnCancelColor: Colors.grey,
                  btnOkColor: AppColors.primaryPurple,
                  btnCancelOnPress: () {},
                  btnOkOnPress: () {
                    setState(() {
                      roomList.add(myController.text);
                    });
                  },
                ).show();
              },
            ),
            DropdownButtonExample(
              bookMarkIcon: false,
              data: roomList,
              bookMark: !bookMark,
              onTapF: () {
                setState(() {
                  bookMark = !bookMark;
                });
              },
            ),
            const ContainerInfo(
              text: 'Position',
              info: false,
            ),
            const Toggle(switch1: 'Insid', switch2: 'Outside'),
            const ContainerInfo(
              text: 'Time expected to complete the job',
              info: false,
            ),
            DropdownButtonExample(
              bookMarkIcon: false,
              data: Data.dropDownData3,
              bookMark: !bookMark,
              onTapF: () {
                setState(() {
                  bookMark = !bookMark;
                });
              },
            ),
            SizedBox(
              height: h * .03,
            ),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: h * .06,
                    width: w * .9,
                    child: Center(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          FontAwesomeIcons.paperPlane,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Send Alert',
                          style: GoogleFonts.nunito(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ))))
          ],
        ),
      ),
    );
  }
}
