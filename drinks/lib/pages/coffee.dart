import 'package:drinks/pages/milk_tea.dart';

import '../colors.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:fluttericon/elusive_icons.dart';

class Coffee extends StatefulWidget {
  const Coffee({ Key? key }) : super(key: key);

  @override
  State<Coffee> createState() => CoffeeState();
}

class CoffeeState extends State<Coffee> {

  String _roastLevel = 'light';
  String _milkType0 = 'withoutMilk';
  String _iceLevel0 = 'regularIce';
  bool _whippedCream = false;

  // Private variable to hold the number of pumps of caramel syrup
  int _caramelCount = 0;  
  void _incrementCPumps() => setState(() { _caramelCount++;});
  void _decrementCPumps() => setState(() { _caramelCount>0? _caramelCount--: 0;});

  // Private variable to hold the number of pumps of mocha syrup
  int _mochaCount = 0;
  void _incrementMPumps() => setState(() { _mochaCount++;});
  void _decrementMPumps() => setState(() { _mochaCount>0? _mochaCount--: 0;});

  // Private variable to hold the number of pumps of vanilla syrup
  int _vanillaCount = 0;
  void _incrementVPumps() => setState(() { _vanillaCount++;});
  void _decrementVPumps() => setState(() { _vanillaCount>0? _vanillaCount--: 0;});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Radio Buttons for roast level
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColor.customizationBackground,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'Roast:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                  ))],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'light',
                                      groupValue: _roastLevel,
                                      onChanged: (value) {
                                        setState(() {
                                          _roastLevel = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('Light', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'medium',
                                      groupValue: _roastLevel,
                                      onChanged: (value) {
                                        setState(() {
                                          _roastLevel = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('Medium', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]                        
                      )
                    ]
                  ),
                  const SizedBox(width: 35),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'dark',
                                      groupValue: _roastLevel,
                                      onChanged: (value) {
                                        setState(() {
                                          _roastLevel = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('Dark', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'extraDark',
                                      groupValue: _roastLevel,
                                      onChanged: (value) {
                                        setState(() {
                                          _roastLevel = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('Extra Dark', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]                        
                      )
                    ]
                  ) 
                ] 
              )
            ]
          )
        ), // End of roast level
        const SizedBox(height: 5),

        // Radio Buttons for milk type
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColor.customizationBackground,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'Milk:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                  ))],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'almondMilk',
                                      groupValue: _milkType0,
                                      onChanged: (value) {
                                        setState(() {
                                          _milkType0 = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('Almond Milk', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'coconutMilk',
                                      groupValue: _milkType0,
                                      onChanged: (value) {
                                        setState(() {
                                          _milkType0 = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('Coconut Milk', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]                        
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'organicMilk',
                                      groupValue: _milkType0,
                                      onChanged: (value) {
                                        setState(() {
                                          _milkType0 = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('Organic Milk', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]                        
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'wholeMilk',
                                      groupValue: _milkType0,
                                      onChanged: (value) {
                                        setState(() {
                                          _milkType0 = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('Whole Milk', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]                        
                      ),
                    ]
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'oatmilk',
                                      groupValue: _milkType0,
                                      onChanged: (value) {
                                        setState(() {
                                          _milkType0 = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('Oatmilk', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'skimMilk',
                                      groupValue: _milkType0,
                                      onChanged: (value) {
                                        setState(() {
                                          _milkType0 = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('Skim Milk', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]                        
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'soyMilk',
                                      groupValue: _milkType0,
                                      onChanged: (value) {
                                        setState(() {
                                          _milkType0 = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('Soy Milk', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]                        
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'twoPercMilk',
                                      groupValue: _milkType0,
                                      onChanged: (value) {
                                        setState(() {
                                          _milkType0 = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('2% Milk', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]                        
                      )
                    ]
                  ) 
                ] 
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 5),
                child: const DottedLine(
                  dashColor: Colors. black38,
                  dashLength: 5,
                  dashGapLength: 6,
                )
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Container(
                          padding: const EdgeInsets.only(left: 25),
                          child: Row(
                            children: [
                              Transform.scale(
                                scale: 0.8,
                                child: Radio(
                                  value: 'withoutMilk',
                                  groupValue: _milkType0,
                                  onChanged: (value) {
                                    setState(() {
                                      _milkType0 = value as String;
                                    });
                                  },
                                  activeColor: AppColor.activeRadioButton),
                              ),
                              const Text('Without Milk', style: TextStyle(fontSize: 16)),
                            ]
                          )
                        )
                      )
                    ]
                  )
                ]
              )
            ]
          )
        ), // End of milk type
        const SizedBox(height: 5),      
        
        // Radio Buttons for ice level
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColor.customizationBackground,
            borderRadius: BorderRadius.circular(5)
          ),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'Ice Level:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                  ))],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'noIce',
                                      groupValue: _iceLevel0,
                                      onChanged: (value) {
                                        setState(() {
                                          _iceLevel0 = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('No Ice', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'lessIce',
                                      groupValue: _iceLevel0,
                                      onChanged: (value) {
                                        setState(() {
                                          _iceLevel0 = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('Less Ice', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]                        
                      ),
                    ]
                  ),
                  const SizedBox(width: 35), 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'regularIce',
                                      groupValue: _iceLevel0,
                                      onChanged: (value) {
                                        setState(() {
                                          _iceLevel0 = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('Regular Ice', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Container(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                      value: 'extraIce',
                                      groupValue: _iceLevel0,
                                      onChanged: (value) {
                                        setState(() {
                                          _iceLevel0 = value as String;
                                        });
                                      },
                                      activeColor: AppColor.activeRadioButton),
                                  ),
                                  const Text('Extra Ice', style: TextStyle(fontSize: 16)),
                                ]
                              )
                            )
                          ),
                        ]                        
                      ),
                    ]
                  )
                ]
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 5),
                child: const DottedLine(
                  dashColor: Colors.black38,
                  dashLength: 5,
                  dashGapLength: 6,
                )
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Container(
                          padding: const EdgeInsets.only(left: 25),
                          child: Row(
                            children: [
                              Transform.scale(
                                scale: 0.8,
                                child: Radio(
                                  value: 'hot',
                                  groupValue: _iceLevel0,
                                  onChanged: (value) {
                                    setState(() {
                                      _iceLevel0 = value as String;
                                    });
                                  },
                                  activeColor: AppColor.activeRadioButton),
                              ),
                              const Text('Hot', style: TextStyle(fontSize: 16)),
                            ]
                          )
                        )
                      )
                    ]
                  )
                ]
              )
            ]
          )
        ), // End of ice level
        const SizedBox(height: 5),
        
        // (-/+) Button for caramel syrup
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColor.customizationBackground,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              const Text(
                'Caramel Syrup:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )
              ),
              Expanded(child: Container()),
              IconButton(
                onPressed: _decrementCPumps,
                iconSize: 20,
                splashRadius: 1,
                color: AppColor.activeSwitch,
                icon: const Icon(CupertinoIcons.minus_circle_fill),
              ),
              Text(
                '$_caramelCount',
                style: const TextStyle(
                  fontSize: 16,
                )
              ),
              IconButton(
                onPressed: _incrementCPumps,
                iconSize: 20,
                splashRadius: 1,
                color: AppColor.activeSwitch,
                icon: const Icon(CupertinoIcons.add_circled_solid)
              ),
              const Text('pump(s)'),
            ]
          )
        ), // End of caramel syrup
        const SizedBox(height: 5),
        
        // (-/+) Button for mocha syrup
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColor.customizationBackground,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              const Text(
                'Mocha Syrup:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )
              ),
              Expanded(child: Container()),
              IconButton(
                onPressed: _decrementMPumps,
                iconSize: 20,
                splashRadius: 1,
                color: AppColor.activeSwitch,
                icon: const Icon(CupertinoIcons.minus_circle_fill),
              ),
              Text(
                '$_mochaCount',
                style: const TextStyle(
                  fontSize: 16,
                )
              ),
              IconButton(
                onPressed: _incrementMPumps,
                iconSize: 20,
                splashRadius: 1,
                color: AppColor.activeSwitch,
                icon: const Icon(CupertinoIcons.add_circled_solid)
              ),
              const Text('pump(s)'),
            ]            
          )
        ), // End of mocha syrup
        const SizedBox(height: 5),
        
        // (-/+) Button for vanilla syrup
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColor.customizationBackground,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              const Text(
                'Vanilla Syrup:',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )
              ),
              Expanded(child: Container()),
              IconButton(
                onPressed: _decrementVPumps,
                iconSize: 20,
                splashRadius: 1,
                color: AppColor.activeSwitch,
                icon: const Icon(CupertinoIcons.minus_circle_fill),
              ),
              Text(
                '$_vanillaCount',
                style: const TextStyle(
                  fontSize: 16,
                )
              ),
              IconButton(
                onPressed: _incrementVPumps,
                iconSize: 20,
                splashRadius: 1,
                color: AppColor.activeSwitch,
                icon: const Icon(CupertinoIcons.add_circled_solid)
              ),
              const Text('pump(s)'),
            ]
          )
        ), // End of vanilla syrup
        const SizedBox(height: 5),
        
        // Toggle Switch for whipped cream
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColor.customizationBackground,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              const Text(
                'Whipped Cream:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )
              ),
              Expanded(child: Container()),
              Transform.scale(
                scale: 0.60,
                child: CupertinoSwitch(
                  value: _whippedCream, 
                  onChanged: (value) {
                    setState(() {
                      _whippedCream = value;
                    });
                  },
                  activeColor: AppColor.activeSwitch,
                  trackColor: AppColor.inactiveSwitch),
              ),
            ]
          )
        ), // End of whipped cream

        // Save Button and Reset Button
        Container(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: Row(
            children: [
              ElevatedButton.icon(
                onPressed: (){
                  
                }, 
                icon: const Icon(Icons.save_alt_rounded, color: Colors.black),
                label: const Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(AppColor.activeButton1),
                  elevation: MaterialStateProperty.all<double>(3),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  )
                )),
              Expanded(child: Container()),
              ElevatedButton.icon(
                onPressed: () {
                  if (_roastLevel != 'light' || _milkType0 != 'withoutMilk' || _iceLevel0 != 'regularIce' ||
                  _caramelCount != 0 || _mochaCount != 0 || _vanillaCount != 0 || _whippedCream != false) {
                    setState(() {
                      _roastLevel = 'light';
                      _milkType0 = 'withoutMilk';
                      _iceLevel0 = 'regularIce';
                      _caramelCount = 0;
                      _mochaCount = 0;
                      _vanillaCount = 0;
                      _whippedCream = false;                    
                    });
                    // Notification for a successful reset
                    Get.snackbar(
                      "Reset Successfully", // snackbar Title
                      "", // place holder for message Text
                      messageText: (const Text(
                        "You have reset your Coffee customization back to default",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300))),
                      icon: Icon(Elusive.ok_circled2, size: 22, color: Colors.green.shade800),
                      shouldIconPulse: false,
                      snackPosition: SnackPosition.TOP,
                      margin: const EdgeInsets.only(left: 15, top: 10, right: 15),
                      backgroundColor: AppColor.snackbarBackground,
                      isDismissible: true,
                    );
                  } else { 
                    // Notification for an unsuccessfull reset
                      Get.snackbar(
                        "Reset Unsuccessful", // snackbar Title
                        "", // place holder for message Text
                        messageText: (const Text(
                          "You have not modify Coffee's default customizations",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300))),
                        icon: Icon(Elusive.cancel_circled2, size: 22, color: Colors.red.shade800),
                        shouldIconPulse: false,
                        snackPosition: SnackPosition.TOP,
                        margin: const EdgeInsets.only(left: 15, top: 10, right: 15),
                        backgroundColor: AppColor.snackbarBackground,
                        isDismissible: true,
                      );
                  }
                }, 
                icon: const Icon(Icons.restart_alt_rounded, color: Colors.black), 
                label: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black
                  )),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(AppColor.activeButton1),
                  elevation: MaterialStateProperty.all<double>(3),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  )
                ))
            ]
          )
        ), // End of Save and Reset Button
      ]
    );
  }
}