import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard/helpers/reponsiveness.dart';
import 'package:flutter_admin_dashboard/widgets/large_screen.dart';
import 'package:flutter_admin_dashboard/widgets/side_menu.dart';
import 'package:flutter_admin_dashboard/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: const LargeScreen(),
        smallScreen: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            color: Colors.greenAccent,
          ),
        ),
      ),
    );
  }
}
