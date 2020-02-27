import 'package:shngrc/config/assets.dart';
import 'package:shngrc/tabs/about_tab.dart';
import 'package:shngrc/tabs/fanart_tab.dart';
import 'package:shngrc/tabs/fancam_tab.dart';
import 'package:shngrc/tabs/foto_tab.dart';
import 'package:shngrc/tabs/history_tab.dart';
import 'package:shngrc/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    AboutTab(),
    FotoTab(),
    FanArtTab(),
    FanCamTab(),
    HistoryTab(),
  ];

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('SHNGRC', style: TextStyle(fontFamily: 'GoogleSansRegular'),),
          actions: <Widget>[
            IconButton(
              icon: ThemeSwitcher.of(context).isDarkModeOn?Icon(Icons.wb_sunny):Image.asset(Assets.moon,height: 20,width: 20,),
              onPressed: ()=> ThemeSwitcher.of(context).switchDarkMode(),
            )
          ],
        ),
        body: Center(
          child: tabWidgets.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo_camera),
              title: Text('Foto'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.palette),
              title: Text('FanArt'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.videocam),
              title: Text('FanCam'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('Perjalanan'),
            )
          ],
          currentIndex: _selectedIndex,
          onTap: (index)=> setState(() => _selectedIndex = index),
          unselectedItemColor: Theme.of(context).disabledColor,
          selectedItemColor: Theme.of(context).accentColor,
        ),
    );
  }

}