import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _icons = [
    const FaIcon(FontAwesomeIcons.house, size: 22),
    const FaIcon(FontAwesomeIcons.heartPulse, size: 22),
    const FaIcon(FontAwesomeIcons.starOfLife, size: 22),
    const FaIcon(FontAwesomeIcons.user, size: 22),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'ClashDisplay',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(_icons.length, (index) {
                bool isSelected = index == _selectedIndex;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration:
                        isSelected
                            ? BoxDecoration(
                              color: const Color(0xFF0D1B63),
                              shape: BoxShape.circle,
                            )
                            : null,
                    alignment: Alignment.center,
                    child: IconTheme(
                      data: IconThemeData(
                        color:
                            isSelected ? Colors.white : const Color(0xFF0D1B63),
                      ),
                      child: _icons[index],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
