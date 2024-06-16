import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:real_estate_assignment/dashboard/home_screen.dart';
import 'package:real_estate_assignment/dashboard/search_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 5, vsync: this);
    tabController.index = 2;
    tabController.animation!.addListener(
      () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomBar(
        borderRadius: BorderRadius.circular(40),
        duration: const Duration(seconds: 3),
        curve: Curves.fastOutSlowIn,
        width: MediaQuery.of(context).size.width * 0.8,
        barColor: const Color(0xff2b2b2b),
        body: (context, controller) => TabBarView(
          controller: tabController,
          children: const [
            SearchScreen(),
            Center(
              child: Text("Chatboat"),
            ),
            HomeScreen(),
            Center(
              child: Text("Liked Properties"),
            ),
            Center(
              child: Text("Profile"),
            ),
          ],
        ),
        child: TabBar(
          controller: tabController,
          dividerColor: Colors.transparent,
          labelPadding: const EdgeInsets.all(6),
          tabs: [
            CircleAvatar(
              radius: tabController.index == 0 ? 30 : 20,
              backgroundColor: tabController.index == 0
                  ? const Color(0xFFf2991a)
                  : const Color(0xff464644),
              child: const Icon(
                Icons.search_rounded,
                color: Colors.white,
              ),
            ),
            CircleAvatar(
              radius: tabController.index == 1 ? 30 : 20,
              backgroundColor: tabController.index == 1
                  ? const Color(0xFFf2991a)
                  : const Color(0xff464644),
              child: const Icon(
                Icons.message_outlined,
                color: Colors.white,
              ),
            ),
            CircleAvatar(
              radius: tabController.index == 2 ? 30 : 20,
              backgroundColor: tabController.index == 2
                  ? const Color(0xFFf2991a)
                  : const Color(0xff464644),
              child: const Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            CircleAvatar(
              radius: tabController.index == 3 ? 30 : 20,
              backgroundColor: tabController.index == 3
                  ? const Color(0xFFf2991a)
                  : const Color(0xff464644),
              child: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
            CircleAvatar(
              radius: tabController.index == 4 ? 30 : 20,
              backgroundColor: tabController.index == 4
                  ? const Color(0xFFf2991a)
                  : const Color(0xff464644),
              child: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
