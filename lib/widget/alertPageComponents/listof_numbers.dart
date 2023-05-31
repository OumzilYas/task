// ignore: file_names
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:task/config/colors_config.dart';
import '../../config/size_config.dart';

class ListOfNumber extends StatefulWidget {
  const ListOfNumber({Key? key}) : super(key: key);

  @override
  State<ListOfNumber> createState() => _MyAppState();
}

class _MyAppState extends State<ListOfNumber> {
  ScrollController scrollController = ScrollController();
  int? _selectedIndex; // if you want to provide default selection, init here
  @override
  Widget build(BuildContext context) {
    double w = SizeConfig.getWidth(context);
    double h = SizeConfig.getHeight(context);
    return SizedBox(
        height: h * .1,
        width: w * .9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  scrollController.animateTo(0,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn);
                },
                child: SizedBox(
                  height: h * .06,
                  width: w * .04,
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                )),
            SizedBox(
              height: h * .07,
              width: w * .8, // play with height
              child: ListView.builder(
                controller: scrollController,
                itemCount: 13, //number of item you like show
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: h * .05,
                      height: h * .05,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: _selectedIndex == index
                            ? AppColors.primaryPurple
                            : Colors.white,
                        borderRadius: BorderRadius.circular(0),
                        border: Border.all(
                          width: 2,
                          color: AppColors.primaryPurple,
                        ),
                      ),
                      child: Text(
                        (index - 2).toString(),
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: _selectedIndex == index
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            InkWell(
                onTap: () {
                  scrollController.animateTo(1000,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn);
                },
                child: SizedBox(
                  height: h * .06,
                  width: w * .04,
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                ))
          ],
        ));
  }
}
