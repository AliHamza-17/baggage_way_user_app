import 'package:baggage_way_user_app/utils/colors.dart';
import 'package:baggage_way_user_app/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      'Find Your Luggage Storage',
                      style: StyleText.bodyMediumTextStyle,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        textAlign: TextAlign.start,
                        controller: _searchController,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 10, right: 15),
                            child: FaIcon(
                              FontAwesomeIcons.search,
                              size: 20,
                            ),
                          ),
                          hintText: 'City, address or location',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color:
                                      AppColors.borderColor.withOpacity(.3))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color:
                                      AppColors.borderColor.withOpacity(.3))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                color: AppColors.borderColor.withOpacity(.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nearest Locations'),
                    Container(
                      height: 162,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Luggage Storage'),
                          Text('Naples Centrale'),
                          Row(
                            children: [
                              Image.asset('assets/images/Vector_map.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Naples Centrale, 7 street, London'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/Star_5.png'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('4.2 (86 Reviews)'),
                                ],
                              ),
                              Image.asset('assets/images/Badge.png')
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/Frame_1.png'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Hotels',
                              style: StyleText.bodyTextStyle,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/Frame_2.png'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '490m',
                              style: StyleText.bodyTextStyle,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/Frame_3.png'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Shops',
                              style: StyleText.bodyTextStyle,
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Text(
                'Features',
                style: StyleText.bodyMediumTextStyle,
              ),
              Container(
                height: 60,
                color: AppColors.secondaryColor.withOpacity(.3),
                child: Row(
                  children: [
                    Image.asset('assets/images/user_feature.png'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '24/7 Instant Support',
                          style: StyleText.body4TextStyle,
                        ),
                        Expanded(
                          child: Text(
                            'We are always here to listen your queries.'
                            '\nYou are just a call away',
                            style: StyleText.bodyTextStyle,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Login to get yourself synced!',
                  style: StyleText.body3TextStyle,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Register')),
                  TextButton(onPressed: () {}, child: Text('Sign in')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
