import 'package:belajar_flutter/pages/home_page.dart';
import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CalendarAppBar(
        accent: Color.fromARGB(255, 21, 115, 255),
        backButton: false,
        locale: 'id',
        onDateChanged: (value) => (value),
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now(),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {},
      backgroundColor: Color.fromARGB(255, 21, 115, 255),
      child: const Icon(Icons.add),
      ),
      body: const HomePage(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
        const SizedBox(
          width: 20,
          ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.list))
      ],),)
    );
  }
}