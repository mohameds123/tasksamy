import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double _value = 40.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GestureDetector(
          onTap: () {
            modalBottomSheet(context);
          },
          child: Center(
              child: Text(
            "open Sheet",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          )),
        ),
      ),
    );
  }

  void modalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1.0,
                          blurRadius: 5.0,
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Reset",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Text(
                            "Filters",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.close))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Text(
                          "PRICE PER HIGHT",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              "540+\$",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SfSlider(

                    min: 0.0,
                    max: 100.0,
                    value: _value,
                    interval: 20,
                    showTicks: true,
                    showLabels: true,
                    enableTooltip: true,
                    minorTicksPerInterval: 1,
                    onChanged: (dynamic value){
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child:
                    Text(
                      'RATING',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(218, 56, 53, 1),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Text(
                              "O+",

                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(253,156,21,1),
                              borderRadius: BorderRadius.circular(8)

                          ),
                          child: Center(
                            child: Text(
                              "7+",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(99,163,15,1),
                              borderRadius: BorderRadius.circular(8)

                          ),
                          child: Center(
                            child: Text(
                              "7.5+",

                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(2,129,0,1),
                              borderRadius: BorderRadius.circular(8)

                          ),
                          child: Center(
                            child: Text(
                              "8+",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0,95,0,1),
                              borderRadius: BorderRadius.circular(8)

                          ),
                          child: Center(
                            child: Text(
                              "8.5+",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 16),
                    child:
                    Text(
                      'HOTEL CLASS',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                child: Image.asset(
                    "assets/images/rate.jpg",
                ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 16),
                    child:
                    Text(
                      'DISTANCE FROM',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16,top: 7),
                    child: Divider(
                      thickness: 1.8,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16,right: 16),
                        child: Text(
                            "Location",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,

                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "City center",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                          color: Colors.grey,

                        ),

                      ),
                      IconButton(onPressed: (){}, icon: Icon(
                          Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18,
                      ))
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 1.0,
                              blurRadius: 5.0,
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Center(
                          child: Container(
                            width: 280,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromRGBO(0,123, 193, 1),


                            ),
                            child: GestureDetector(
                              child: Center(
                                child: Text(
                                  "Show results",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,

                                  ),

                                ),
                              ),

                            ),
                          ),
                        ),
                      ),
                    ],

                  ),

                ],
              ),
            ),
          );
        });
  }
}
class Data {
  Data({required this.x, required this.y});

  final DateTime x;

  final double y;
}