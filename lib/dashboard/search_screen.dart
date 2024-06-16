import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool showOption = false;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/map.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: AnimationLimiter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(seconds: 2),
                childAnimationBuilder: (widget) => FadeInAnimation(
                  child: widget,
                ),
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xfff1f1f1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'Saint Petersburg',
                              prefixIcon: const Icon(Icons.search),
                              prefixIconColor: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: null,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Icon(
                            Icons.tune_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 70),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showOption = !showOption;
                                });
                              },
                              child: showOption
                                  ? AnimationConfiguration.synchronized(
                                      child: FadeInAnimation(
                                        curve: Curves.easeIn,
                                        duration: const Duration(seconds: 2),
                                        child: Container(
                                          height: 170,
                                          width: 180,
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 5),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(20),
                                            ),
                                            color: Colors.white.withOpacity(.8),
                                          ),
                                          child: const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ListTile(
                                                contentPadding:
                                                    EdgeInsets.all(0),
                                                minTileHeight: 17,
                                                dense: true,
                                                leading:
                                                    Icon(Icons.shield_outlined),
                                                title: Text(
                                                  'Cosy Area',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              ListTile(
                                                contentPadding:
                                                    EdgeInsets.all(0),
                                                minTileHeight: 17,
                                                dense: true,
                                                leading:
                                                    Icon(Icons.wallet_rounded),
                                                title: Text(
                                                  'Price',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              ListTile(
                                                contentPadding:
                                                    EdgeInsets.all(0),
                                                minTileHeight: 17,
                                                dense: true,
                                                leading: Icon(Icons.delete),
                                                title: Text(
                                                  'Infrastructure',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              ListTile(
                                                contentPadding:
                                                    EdgeInsets.all(0),
                                                minTileHeight: 17,
                                                dense: true,
                                                leading: Icon(Icons.layers),
                                                title: Text(
                                                  'Without any layers',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : Container(
                                      padding: const EdgeInsets.all(20),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff747474),
                                      ),
                                      child: Icon(
                                        Icons.layers,
                                        color: Colors.white.withOpacity(.8),
                                      ),
                                    ),
                            ),
                            const SizedBox(height: 10),
                            GestureDetector(
                              onTap: null,
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff747474),
                                ),
                                child: Icon(
                                  Icons.navigation_outlined,
                                  color: Colors.white.withOpacity(.8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: null,
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 70),
                          padding: const EdgeInsets.all(10),
                          height: 60,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            color: Color(0xff747474),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.list,
                                color: Colors.white.withOpacity(.8),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "List of Varients",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white.withOpacity(0.8),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
