import 'package:flutter/material.dart';
import 'providers/locator.dart';
import 'ui/screens/init/vendor_view/vendor_view.dart';

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
    return const MaterialApp(
      home: VendorView(),
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
