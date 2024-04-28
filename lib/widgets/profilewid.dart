import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BinnyBunWidget extends StatelessWidget {
  //ชื่อโปรไฟล์ของผู้ใช้
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Binny Bun',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 0.1),
        InkWell(
          onTap: () {
            Clipboard.setData(ClipboardData(text: '@binny.bin'));
            print('Text copied');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '@binny.bin',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 2),
              Image.asset(
                'assets/profile/ci_copy.png',
                width: 18,
                height: 18,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FollowStatsContainer extends StatelessWidget {
  //ที่เเสดงค่าของ ผู้ติดตาม กำลังติดตาม
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.82,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                border: Border(
                  right: BorderSide(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '15',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'กำลังติดตาม',
                    style: TextStyle(
                      color: Color(0xFF29D062),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '4',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'ผู้ติดตาม',
                    style: TextStyle(
                      color: Color(0xFF29D062),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyWasteStatistics extends StatefulWidget {
  @override
  _MyWasteStatisticsState createState() => _MyWasteStatisticsState();
}

class _MyWasteStatisticsState extends State<MyWasteStatistics> {
  //สถิติการแยกขยะของฉัน
  final List<String> months = [
    'มกราคม',
    'กุมภาพันธ์',
    'มีนาคม',
    'เมษายน',
    'พฤษภาคม',
    'มิถุนายน',
    'กรกฎาคม',
    'สิงหาคม',
    'กันยายน',
    'ตุลาคม',
    'พฤศจิกายน',
    'ธันวาคม'
  ];

  String selectedMonth = 'มกราคม';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.transparent, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'สถิติการแยกขยะของฉัน',
                style: TextStyle(
                  color: Color(0xFF5D5D5D),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 55),
              DropdownButton<String>(
                value: selectedMonth,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedMonth = newValue!; // อัปเดตค่าเดือนที่เลือก
                  });
                },
                items: months.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              ),
            ],
          ),
          SizedBox(height: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '386',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 6),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                decoration: BoxDecoration(
                  color: Color(0xFF53D49F).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  '+2.4%',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF02C275),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 10,
            width: 350,
            child: Row(
              children: [
                Expanded(
                  flex: 20,
                  child: Container(
                    color: Color.fromRGBO(80, 183, 142, 1),
                  ),
                ),
                Expanded(
                  flex: 35,
                  child: Container(
                    color: Color.fromRGBO(196, 231, 217, 1),
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: Container(
                    color: Color.fromRGBO(215, 238, 170, 1),
                  ),
                ),
                Expanded(
                  flex: 35,
                  child: Container(
                    color: Color.fromRGBO(238, 207, 170, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BcardWidget extends StatelessWidget {
  //แสดงการ์ด 4 อันที่มีข้อมูล พลาสติกใสPET  กระป๋องอลูมิเนียม  กล่องเรื่องดื่มUHT  น้ำมันพืชใช้เเล้ว
  final List<String> items;
  BcardWidget({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.transparent, width: 2),
      ),
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCard(items[0], 4),
              _buildCard(items[1], 1),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCard(items[2], 2),
              _buildCard(items[3], 3),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String item, int index) {
    Color color = _getColorForIndex(index);
    return Expanded(
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.only(left: 16, right: 16),
          title: Row(
            children: [
              CircleAvatar(
                backgroundColor: color,
                radius: 5,
              ),
              SizedBox(width: 8),
              Text(
                item.split(' ')[0],
                style: TextStyle(
                    color: Color(0xFF5D5D5D),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          subtitle: Text(
            item.split(' ')[1],
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Color _getColorForIndex(int index) {
    List<Color> colors = [
      Color.fromRGBO(80, 183, 142, 1),
      Color.fromRGBO(196, 231, 217, 1),
      Color.fromRGBO(215, 238, 170, 1),
      Color.fromRGBO(238, 207, 170, 1),
    ];
    return colors[index % colors.length];
  }
}
