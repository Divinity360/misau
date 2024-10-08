import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:misau/utils/utils.dart';
import 'package:misau/widget/custom_dropdown.dart';
import 'package:misau/widget/custom_pie_chart.dart';
import 'package:misau/widget/outline_datepicker.dart';
import 'package:misau/widget/outline_dropdown.dart';
import 'package:misau/widget/outline_textfield.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({
    super.key,
  });

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen>
    with SingleTickerProviderStateMixin {
  // List<String> options = ['Monthly', 'Weekly', 'Daily'];
  bool showGreenLine = true;
  bool showOrangeLine = true;
  TextEditingController titleController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xffF4F4F7),
        body: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Filter",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                      color: Color(0xff1B1C1E),
                      letterSpacing: -.5,
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    children: [
                      Text(
                        "State ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xff1B1C1E),
                          letterSpacing: -.5,
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Color(0xffE03137),
                          letterSpacing: -.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  OutlineDropdown(['Osun', 'Justin']),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "LGA ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xff1B1C1E),
                      letterSpacing: -.5,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  OutlineDropdown(['Boluwaduro']),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Facility ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xff1B1C1E),
                      letterSpacing: -.5,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  OutlineDropdown(['Afao Primary Health Clinic']),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .4,
                        child: const Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "From ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Color(0xff1B1C1E),
                                    letterSpacing: -.5,
                                  ),
                                ),
                                Text(
                                  "*",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Color(0xffE03137),
                                    letterSpacing: -.5,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            OutlineDatePicker(),
                          ],
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .4,
                        child: const Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "To ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Color(0xff1B1C1E),
                                    letterSpacing: -.5,
                                  ),
                                ),
                                Text(
                                  "*",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Color(0xffE03137),
                                    letterSpacing: -.5,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            OutlineDatePicker(),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * .4,
                          height: 55,
                          child: OutlinedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                side: const BorderSide(
                                  color: Color(0xff121827),
                                  width: 1.5,
                                ),
                              ),
                              child: const Text(
                                "Cancel",
                                style: TextStyle(
                                  color: Color(0xff121827),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ))),
                      const Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .4,
                        height: 55,
                        child: SizedBox(
                            width: double.infinity, // Make button full width
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      12.0), // border radius
                                ),
                                primary:
                                    const Color(0xffDC1C3D), // background color
                              ),
                              child: const Text(
                                "Filter",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )));
  }

  Widget _buildTab(String text) {
    return Tab(
      text: text,
      height: 38,
    );
  }
}
