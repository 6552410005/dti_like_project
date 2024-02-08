// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabindex = 0;

  @override
  void initState() {
    _tabController =
        TabController(length: 7, vsync: this, initialIndex: _currentTabindex);
    super.initState();
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.pink,
          title: Text(
            'DTI Cake Shop',
            style: GoogleFonts.kanit(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                exit(0);
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.grey[400],
            indicatorColor: Colors.yellow,
            indicatorWeight: 5.0,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.shop,
                ),
                text: ('เค้กบ้านสวน'),
              ),
              Tab(
                icon: Icon(
                  Icons.shop_2,
                ),
                text: ('Smile Bekery'),
              ),
              Tab(
                icon: Icon(
                  Icons.shop_outlined,
                ),
                text: ('Smoke Bekery'),
              ),
              Tab(
                icon: Icon(
                  Icons.shop_2_outlined,
                ),
                text: ('Momo Bekery'),
              ),
              Tab(
                icon: Icon(
                  Icons.shop_sharp,
                ),
                text: ('Anart Bekery'),
              ),
              Tab(
                icon: Icon(
                  Icons.shop_2_sharp,
                ),
                text: ('Goodies Bekery'),
              ),
              Tab(
                icon: Icon(
                  Icons.shop_2_rounded,
                ),
                text: ('Gody Bekery'),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            shrinkWrap: false,
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'SAU Cake Shop',
                  style: GoogleFonts.kanit(),
                ),
                accountEmail: Text(
                  'แอปสำหรับคนชอบกินเค้ก',
                  style: GoogleFonts.kanit(),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg_welcome.png'),
                    fit: BoxFit.cover,
                  ),
                  //color: Colors.pink,
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2017/01/11/11/33/cake-1971552_1280.jpg'),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2015/05/27/12/10/cake-786473_640.jpg'),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/09/19/08/52/pancake-2764589_1280.jpg'),
                  ),
                ],
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 0;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck01.png',
                  ),
                ),
                title: Text(
                  'เค้กบ้านสวน',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 1;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck01.png',
                  ),
                ),
                title: Text(
                  'Smile Bekery',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck01.png',
                  ),
                ),
                title: Text(
                  'Smoke Bekery',
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 2;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck01.png',
                  ),
                ),
                title: Text(
                  'Momo Bekery',
                ),
                trailing: Icon(
                  FontAwesomeIcons.tree,
                  color: Colors.green,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 3;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck01.png',
                  ),
                ),
                title: Text(
                  'Anart Bekery',
                ),
                trailing: Icon(
                  FontAwesomeIcons.amazon,
                  color: Colors.blue,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 4;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck01.png',
                  ),
                ),
                title: Text(
                  'Goodies Bekery',
                ),
                trailing: Icon(
                  FontAwesomeIcons.cakeCandles,
                  color: Colors.orange,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 5;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck01.png',
                  ),
                ),
                title: Text(
                  'Gody Bekery',
                ),
                trailing: Icon(
                  FontAwesomeIcons.crown,
                  color: Colors.orange,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 6;
                  });
                  Navigator.pop(context);
                  exit(0);
                },
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                ),
                title: Text(
                  'ออกจากแอพ',
                  style: GoogleFonts.kanit(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            showShopwidget('เค้กบ้านสวน', 'assets/images/ck01.png',
                '0987654321', 'http://www.a.com', '13.7075197,100.3532919'),
            showShopwidget('Smile Bekery', 'assets/images/ck02.png',
                '0987654322', 'http://www.b.com', '13.7075197,100.3532918'),
            showShopwidget('Smoke Bekery', 'assets/images/ck03.png',
                '0987654323', 'http://www.c.com', '13.7075197,100.3532917'),
            showShopwidget('Momo Bekery', 'assets/images/ck04.png',
                '0987654324', 'http://www.d.com', '13.7075197,100.3532916'),
            showShopwidget('Anart Bekery', 'assets/images/ck05.png',
                '0987654325', 'http://www.e.com', '13.7075197,100.3532915'),
            showShopwidget('Goodies Bekery', 'assets/images/ck06.png',
                '0987654326', 'http://www.f.com', '13.7075197,100.3532914'),
            showShopwidget('Gody Bekery', 'assets/images/ck07.png',
                '0987654327', 'http://www.g.com', '13.7075197,100.3532913'),
          ],
        ),
      ),
    );
  }

  //showShopwidget เป็นเลย์เอาต์ของหน้า shop
  Widget showShopwidget(String shopName, String shopImg, String shopPhone,
      String shopWeb, String shopGps) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Text(
            shopName,
            style: GoogleFonts.kanit(
              fontSize: MediaQuery.of(context).size.height * 0.035,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Image.asset(
            shopImg,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: ListTile(
              onTap: () {
                _makePhoneCall(shopPhone);
              },
              tileColor: Colors.red,
              leading: Icon(
                Icons.phone,
              ),
              title: Text(
                shopPhone,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: ListTile(
              onTap: () {
                _launchInBrowser(
                  Uri.parse(shopWeb),
                );
              },
              tileColor: Colors.red,
              leading: Icon(
                Icons.web,
              ),
              title: Text(
                shopWeb,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: ListTile(
              onTap: () {
                _launchInBrowser(
                  Uri.parse('https://www.google.com/maps/@${shopGps},17z'),
                );
              },
              tileColor: Colors.red,
              leading: Icon(
                Icons.map,
              ),
              title: Text(
                'นำทางไปร้าน',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
