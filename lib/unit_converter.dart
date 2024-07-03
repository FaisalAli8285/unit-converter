import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/provider_screen.dart';

class UnitConverterScreen extends StatefulWidget {
  const UnitConverterScreen({super.key});

  @override
  State<UnitConverterScreen> createState() => _UnitConverterScreenState();
}

class _UnitConverterScreenState extends State<UnitConverterScreen> {
  List<DropdownMenuItem<String>> listOptions = [
    const DropdownMenuItem(
      value: "KG",
      child: Text("KG"),
    ),
    const DropdownMenuItem(
      value: "G",
      child: Text("G"),
    ),

    const DropdownMenuItem(
      value: "Foot",
      child: Text("Foot"),
    ),
    const DropdownMenuItem(
      value: "Meter",
      child: Text("Meter"),
    ),
    const DropdownMenuItem(
      value: "Pound",
      child: Text("Pound"),
    ),
    // Removed duplicate "G"
    const DropdownMenuItem(
      value: "KM",
      child: Text("KM"),
    ),
    const DropdownMenuItem(
      value: "Mile",
      child: Text("Mile"),
    ),
    const DropdownMenuItem(
      value: "Inch",
      child: Text("Inch"),
    ),
  ];
  String? dropDownValue;

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    final unitProvider = Provider.of<UnitProvider>(context, listen: false);

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Unit Converter"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: _height * 0.1, left: _height * 0.008, right: _height * 0.008),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(_height * 0.008),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 102,
                        width: _width * 0.45,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: _width * 0.5,
                              child: TextFormField(
                                controller: unitProvider.editorOne,
                                onChanged: (value) {
                                  unitProvider.unitConverter1();
                                },
                                decoration: InputDecoration(
                                    hintText: "Enter Value",
                                    contentPadding:
                                        EdgeInsets.only(left: _width * 0.05)),
                              ),
                            ),
                            Container(
                                height: 50,
                                width: _width * 0.5,
                                padding: EdgeInsets.symmetric(
                                    horizontal: _width * 0.05),
                                child: Consumer<UnitProvider>(
                                  builder: (context, value, child) {
                                    return DropdownButton<String>(
                                      onChanged: (value) {
                                        unitProvider.setUnit1(value);
                                        unitProvider.unitConverter2();
                                      },
                                      items: listOptions,
                                      value: value.getunit1,
                                      focusColor: Colors.blue,
                                      underline: Container(),
                                    );
                                  },
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: _width * 0.02,
                      ),
                      Container(
                        height: 102,
                        width: _width * 0.45,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: _width * 0.5,
                              child: TextFormField(
                                controller: unitProvider.editorTwo,
                                onChanged: (value) {
                                  unitProvider.unitConverter2();
                                },
                                decoration: InputDecoration(
                                    hintText: "Enter Value",
                                    contentPadding:
                                        EdgeInsets.only(left: _width * 0.05)),
                              ),
                            ),
                            Container(
                                height: 50,
                                width: _width * 0.5,
                                padding: EdgeInsets.symmetric(
                                    horizontal: _width * 0.05),
                                child: Consumer<UnitProvider>(
                                  builder: (context, value, child) {
                                    return DropdownButton<String>(
                                      onChanged: (value) {
                                        unitProvider.setUnit2(value);
                                        unitProvider.unitConverter1();
                                      },
                                      items: listOptions,
                                      value: value.getunit2,
                                      focusColor: Colors.blue,
                                      underline: Container(),
                                    );
                                  },
                                )),
                          ],
                        ),
                      )
                      // SizedBox(
                      //   height: _height * 0.02,
                      // ),
                      // Column(
                      //   children: [
                      //     Expanded(
                      //     child: TextFormField(
                      //   controller: unitProvider.editorTwo,
                      //   onChanged: (value) {
                      //     unitProvider.unitConverter2();
                      //   },
                      //   decoration: InputDecoration(
                      //       hintText: "Enter Value",
                      //       fillColor: Colors.deepPurple.shade100,
                      //       filled: true),
                      // )),
                      // SizedBox(
                      //   width: _width * 0.020,
                      // ),
                      // Expanded(
                      //   child: Container(
                      //       padding: EdgeInsets.symmetric(
                      //           horizontal: _width * 0.05),
                      //       color: Colors.deepPurple.shade100,
                      //       child: Consumer<UnitProvider>(
                      //         builder: (context, value, child) {
                      //           return DropdownButton<String>(
                      //             onChanged: (value) {
                      //               unitProvider.setUnit2(value);
                      //             },
                      //             items: listOptions,
                      //             value: value.unit2,
                      //           );
                      //         },
                      //       )),
                      // ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: _height * 0.04,
                      // ),
                      // Center(
                      //   child: InkWell(
                      //     onTap: () {
                      //       unitProvider.unitConverter1();
                      //     },
                      //     child: Container(
                      //       padding: EdgeInsets.all(_height * 0.02),
                      //       color: Colors.deepPurple.shade700,
                      //       child: Text("Converter"),
                      //     ),
                      //   ),
                      // )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
