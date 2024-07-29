
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/services.dart';
import 'package:ui_9_expense_dashboard/widgets/amount_and_filter.dart';
import 'package:ui_9_expense_dashboard/widgets/header.dart';
import 'package:ui_9_expense_dashboard/widgets/payment_item.dart';

import 'constants.dart';
import 'custom_component/data_viz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: Constants.backgroundColor,
          textTheme: GoogleFonts.oxygenTextTheme(
            Theme.of(context).textTheme,
          )),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Constants.backgroundColor,
        body: SafeArea(
          child: (isMobile(context) ? mobilePage() : desktopPage()),
        ),
      ),
    );
  }

  Widget desktopPage() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Header(),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Row(
                  children: [
                   const  Icon(Icons.chevron_left_rounded, size: 60, color: Colors.black45,),
                    Expanded(child: DataViz()),
                   const  Icon(Icons.chevron_right_rounded, size: 60, color: Colors.black45,),
                  ],
                ),
              ),
            ),
          ),
        ],)),
        Expanded(child: SingleChildScrollView(
          child: Column(children: [
            Padding(
                padding: const EdgeInsets.all(24.0),
                child: AmountAndFilter()),
             const  Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PaymentItem(
                      title: "Dark Souls",
                      category: "Games",
                      iconData: Icons.videogame_asset_rounded,
                      amount: "-\$54.00",
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    PaymentItem(
                      title: "Cinema Theater",
                      category: "Entertainment",
                      iconData: Icons.movie_creation_rounded,
                      amount: "-\$10.00",
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    PaymentItem(
                      title: "Other",
                      iconData: Icons.grid_on_rounded,
                      amount: "-\$130.00", category: '',
                    )
                  ],
                ))
          ],),
        )),
      ],
    );
  }

  Widget mobilePage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Header(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Row(
              children: [
                Icon(Icons.chevron_left_rounded, size: 60, color: Colors.black45,),
                Expanded(child: DataViz()),
                Icon(Icons.chevron_right_rounded, size: 60, color: Colors.black45),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(24.0),
              child: AmountAndFilter()),
        const   Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  PaymentItem(
                    title: "Dark Souls",
                    category: "Games",
                    iconData: Icons.videogame_asset_rounded,
                    amount: "-\$54.00",
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  PaymentItem(
                    title: "Cinema Theater",
                    category: "Entertainment",
                    iconData: Icons.movie_creation_rounded,
                    amount: "-\$10.00",
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  PaymentItem(
                    title: "Other",
                    iconData: Icons.grid_on_rounded,
                    amount: "-\$130.00",
                    category: '',
                  )
                ],
              ))
        ],
      ),
    );
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }
}