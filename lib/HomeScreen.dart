import 'package:flutter/material.dart';
import 'package:yoones_web/resposive/drawer.dart';

import 'gen/assets.gen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return Scaffold(
      key: _key,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 90,

        title: size.width > 700
            ? null
            : InkWell(
                onTap: (() {
                  _key.currentState!.openDrawer();
                }),
                child: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
        // size.width < 700 ? null : BuildRowAppBar(textTheme: textTheme),
      ),
      drawer: size.width > 700 ? null : DrawerAppbar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height / 0.8,
              decoration: const BoxDecoration(),
              child: Stack(children: [
                //backGround
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      Assets.images.my33.path,
                      width: size.width,
                    )),
                //MenuBarr
                Container(
                  child: size.width > 700
                      ? Positioned(
                          top: 30,
                          right: 40,
                          child: SizedBox(
                            width: 340,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 35,
                                    decoration: const BoxDecoration(
                                        color:
                                        Color.fromARGB(
                                            51, 255, 255, 255)),
                                    child: TextButton(
                                        onPressed: (() {}),
                                        child: Text(
                                          "about",
                                          style: textTheme.bodySmall,
                                        )),
                                  ),

                                  Container(
                                    width: 70,
                                    height: 35,
                                    decoration: const BoxDecoration(
                                        color:
                                        Color.fromARGB(
                                            51, 255, 255, 255)),
                                    child: TextButton(
                                        onPressed: (() {}),
                                        child: Text(
                                          "work",
                                          style: textTheme.bodySmall,
                                        )),
                                  ),
                                  Container(
                                    width: 80,
                                    height: 35,
                                    decoration: const BoxDecoration(
                                        color:
                                        Color.fromARGB(
                                            51, 255, 255, 255)),
                                    child: TextButton(
                                        onPressed: (() {}),
                                        child: Text(
                                          "contact",
                                          style: textTheme.bodySmall,
                                        )),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        Assets.icons.github.path,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                          Assets.icons.linkedin.path)),
                                ]),
                          ),
                        )
                      : null,
                ),
                //YoonesName
                Positioned(
                    top: size.width < 700 ? 120 : 450,
                    left: size.width < 700 ? 8 : 80,
                    child: TextButton(
                        onPressed: (() {}),
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(30, 255, 255, 255),
                              borderRadius: BorderRadius.circular(17)),
                          child: Text("Yoones Baghaei",
                              style: size.width < 700
                                  ? textTheme.bodyMedium
                                  : textTheme.bodyLarge),
                        )))
              ]),
            ),
            Container(
              color: Colors.blueAccent,
              width: 500,
              height: 500,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.blueAccent,
              width: 500,
              height: 500,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.blueAccent,
              width: 500,
              height: 500,
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
