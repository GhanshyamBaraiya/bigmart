import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newbigmart/Utils/Common/app_color.dart';
import 'package:newbigmart/Utils/Common/app_image.dart';

class botamnavigat extends StatefulWidget {
  const botamnavigat({super.key});

  @override
  State<botamnavigat> createState() => _botamnavigatState();
}

class _botamnavigatState extends State<botamnavigat> {
  int _selectedindex = 0;
  static const List<Widget> _widgetoptions = <Widget>[
    Text('index 1: Business'),
    Text('index 2: data'),
    Text('index 3: map'),
    Text('index 4: id'),
    Text('index 5: lock'),
  ];
  void _onitemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetoptions.elementAt(_selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              Appimage.home,
              height: 25,
              color: _selectedindex == 0 ? AppColor.primarycolor : Colors.grey,
            ),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Appimage.shop,
              height: 25,
              color: _selectedindex == 1 ? AppColor.primarycolor : Colors.grey,
            ),
            label: "shop",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Appimage.store,
              height: 25,
              color: _selectedindex == 2 ? AppColor.primarycolor : Colors.grey,
            ),
            label: "store",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Appimage.cart,
              height: 25,
              color: _selectedindex == 3 ? AppColor.primarycolor : Colors.grey,
            ),
            label: "cart",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Appimage.profile,
              height: 25,
              color: _selectedindex == 4 ? AppColor.primarycolor : Colors.grey,
            ),
            label: "profile",
          ),
        ],
        currentIndex: _selectedindex,
        selectedItemColor: AppColor.primarycolor,
        onTap: _onitemTapped,
      ),
    );
  }
}
