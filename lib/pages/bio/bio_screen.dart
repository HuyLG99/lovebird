import 'package:flutter/material.dart';
import 'package:lovebird/config/routes/routing.dart';
import 'package:lovebird/config/styles/color.dart';
import 'package:lovebird/pages/bio/custom_circle_avatar.dart';
import 'package:lovebird/widgets/bio_screen/text_devider.dart';
import 'custom_circle_avatar.dart';

class BioScreen extends StatefulWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  _BioScreenState createState() => _BioScreenState();
}

class _BioScreenState extends State<BioScreen> {
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
      child: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: SizedBox(
          width: mediaQuery.width,
          height: mediaQuery.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                Container(
                  height: mediaQuery.height * 0.2,
                  width: mediaQuery.width * 2,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80),
                    ),
                  ),
                ),
                const Positioned(
                    left: 0, right: 0, top: 40, child: CustomCircleAvatar()),
                SizedBox(
                  height: mediaQuery.height * 0.68,
                  child: Center(
                    child: Text(
                      'Love Bird, 24',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: mediaQuery.width * 0.08),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(320, 180, 4, 80),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.tiffany, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRouting.bioeditRoute);
                    },
                    child: const Icon(Icons.edit, size: 30),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 300, 20, 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: mediaQuery.width * 0.02,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_pin, size: 30),
                          SizedBox(
                            width: mediaQuery.width * 0.02,
                          ),
                          Text(
                            'Đang ở TP.Hồ Chí Minh',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: mediaQuery.width * 0.06),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mediaQuery.width * 0.02,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.date_range, size: 30),
                          SizedBox(
                            width: mediaQuery.width * 0.02,
                          ),
                          Text(
                            '24/12/1999',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: mediaQuery.width * 0.06),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mediaQuery.width * 0.02,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.wc, size: 30),
                          SizedBox(
                            width: mediaQuery.width * 0.02,
                          ),
                          Text(
                            'Giới tính: Nam',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: mediaQuery.width * 0.06),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mediaQuery.width * 0.02,
                      ),
                      Center(
                        child: TextDivider(
                          textDivider: "Your Bio",
                          color: AppColors.tiffany,
                          sizeTextDivider: mediaQuery.width * 0.04,
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.width * 0.02,
                      ),
                      Container(
                        width: mediaQuery.width * 0.8,
                        height: mediaQuery.width * 0.14,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8,
                              // spreadRadius: -21,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: mediaQuery.width * 0.14,
                                  height: mediaQuery.width * 0.2,
                                  child: Image.asset("assets/img/facebook.png"),
                                ),
                                SizedBox(
                                  width: mediaQuery.width * 0.05,
                                ),
                                Text(
                                  'Link FaceBook',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: mediaQuery.width * 0.05),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.width * 0.05,
                      ),
                      Container(
                        width: mediaQuery.width * 0.8,
                        height: mediaQuery.width * 0.14,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8,
                              // spreadRadius: -21,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: mediaQuery.width * 0.14,
                                  height: mediaQuery.width * 0.2,
                                  child:
                                      Image.asset("assets/img/instagram.png"),
                                ),
                                SizedBox(
                                  width: mediaQuery.width * 0.05,
                                ),
                                Text(
                                  'Link FaceBook',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: mediaQuery.width * 0.05),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.width * 0.03,
                      ),
                      Container(
                        width: mediaQuery.width * 0.8,
                        height: mediaQuery.width * 0.14,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8,
                              // spreadRadius: -21,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: mediaQuery.width * 0.14,
                                  height: mediaQuery.width * 0.2,
                                  child: Image.asset("assets/img/twitter.png"),
                                ),
                                SizedBox(
                                  width: mediaQuery.width * 0.05,
                                ),
                                Text(
                                  'Link FaceBook',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: mediaQuery.width * 0.05),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.width * 0.03,
                      ),
                      Container(
                        width: mediaQuery.width * 0.8,
                        height: mediaQuery.width * 0.14,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8,
                              // spreadRadius: -21,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: mediaQuery.width * 0.14,
                                  height: mediaQuery.width * 0.2,
                                  child: Image.asset("assets/img/world.png"),
                                ),
                                SizedBox(
                                  width: mediaQuery.width * 0.05,
                                ),
                                Text(
                                  'Link FaceBook',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: mediaQuery.width * 0.05),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.width * 0.08,
                      ),
                      Container(
                        width: mediaQuery.width * 0.5,
                        height: mediaQuery.width * 0.14,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: mediaQuery.width * 0.14,
                                  height: mediaQuery.width * 0.2,
                                  child: const Icon(
                                    Icons.power_settings_new,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Log Out',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: mediaQuery.width * 0.06),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
