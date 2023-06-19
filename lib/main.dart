import 'package:bubltown_nfc/rout.dart';
import 'package:bubltown_nfc/ui/screens/init/init_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/locator.dart';

void main() {
  setup();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitView(),
    );

    // ChangeNotifierProvider.value(
    //   value: getIt<ThemeNotifier>(),
    //   child: Consumer<ThemeNotifier>(
    //       builder: (context, theme, _) => MaterialApp(
    //             routes: Routes.routes,
    //             debugShowCheckedModeBanner: false,
    //             title: 'TaxFill',
    //             theme: theme.getTheme(),
    //             // theme: ThemeData.dark().copyWith(
    //             //   scaffoldBackgroundColor: bgColor,
    //             //   textTheme: GoogleFonts.redHatDisplayTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.white),
    //             //   canvasColor: secondaryColor,
    //             // ),

    //             // home: const OtpView(),
    //             home: const InitView(),
    //           )),
    //);
  }
}
