import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:task/config/size_config.dart';
import 'package:task/model/data.dart';

class PopUp extends StatelessWidget {
  const PopUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double w = SizeConfig.getWidth(context);
    double h = SizeConfig.getHeight(context);
    return Container(
      height: h * .53,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Center(
        child: SizedBox(
          width: w,
          child: Column(
            children: [
              SizedBox(
                height: h * .02,
              ),
              SizedBox(
                  width: w * .9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.clear, color: Colors.black),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        'Filter by',
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Clear',
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: h * .03,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: h * .37,
                width: w * .9,
                child: ListView.builder(
                  itemCount: Data.listViewData3.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.fromLTRB(1, 1, 15, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Data.listViewData3[index]['icon'],
                          size: 25,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: w * .4,
                          child: Text(
                            Data.listViewData3[index]['title'],
                            style: GoogleFonts.nunito(
                              fontSize: 25,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * .1,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
