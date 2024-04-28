import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:binny_application/widgets/profilewid.dart';

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  final List<String> items = [
    'พลาสติกใสPET 68kg',
    'กระป๋องอลูมิเนียม 120kg',
    'กล่องเรื่องดื่มUHT 48kg',
    'น้ำมันพืชใช้เเล้ว 150kg',
  ];

  String selectedMonth = 'มกราคม';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: 40,
              left: -5,
              right: -55,
              child: Container(
                child: Image.asset(
                  'assets/profile/BG_img.png',
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10), // กำหนดขอบมนขนาด 10 px
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Center(
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: BinnyBunWidget(),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: FollowStatsContainer(),
                      ),
                      Center(
                        child: MyWasteStatistics(),
                      ),
                      Center(
<<<<<<< Updated upstream
                          child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: Colors.transparent, width: 2),
                        ),
                        child: ListView(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          children: <Widget>[
                            Row(
                              children: [
                                _buildCard(items[0], 4),
                                _buildCard(items[1], 1),
                              ],
                            ),
                            Row(
                              children: [
                                _buildCard(items[2], 2),
                                _buildCard(items[3], 3),
                              ],
                            ),
                          ],
                        ),
                      )),
=======
                        child: BcardWidget(items: items),
                      )
>>>>>>> Stashed changes
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Image.asset(
                    'assets/profile/Group119.png',
                    width: 175,
                    height: 175,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 110,
              right: MediaQuery.of(context).size.width * 0.05,
              child: InkWell(
                onTap: () {
                  // ใส่เส้นทางไปหน้าแก้ไขโปรไฟล์
                  print('Edit profile pressed');
                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/profile/akar-icons.png',
                      width: 18,
                      height: 18,
                      color: Color(0xFF29D062),
                    ),
                    SizedBox(width: 1),
                    Text(
                      'แก้ไขโปรไฟล์',
                      style: TextStyle(
                          color: Color(0xFF29D062),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
