import 'package:bubltown_nfc/ui/screens/init/vendor_view/vendor_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/common_themed/assets.dart';
import '../../../../common/common_themed/themed_color.dart';
import '../../../../common/common_themed/themed_text.dart';

class VendorView extends StatelessWidget {
  const VendorView({super.key});

  @override
  Widget build(BuildContext context) =>
      ViewModelBuilder<VendorViewModel>.reactive(
        builder: (BuildContext context, VendorViewModel model, Widget? child) =>
            Scaffold(
                body: model.vendor != null
                    ? ListView(children: [
                        OfferVendorDetails(model),
                        const SizedBox(
                          height: 50.0,
                        ),
                        Center(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 100,
                                    child: VerticalDivider(
                                      thickness: 2,
                                      color: BrandTheme.favBrandColorDiscovery,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  SizedBox(
                                    height: 100.0,
                                    width: 100,
                                    child: SvgPicture.asset(
                                      DEMOTOWN_LAUNCH,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ThemedText.boldTitle('LOOK',
                                          BrandTheme.favBrandColorDiscovery,
                                          maxLine: 10,
                                          textAlign: TextAlign.start,
                                          fontWeight: ThemedText.bold,
                                          fontSize: 25),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      ThemedText.boldTitle('LOCAL',
                                          BrandTheme.favBrandColorDiscovery,
                                          maxLine: 10,
                                          textAlign: TextAlign.start,
                                          fontWeight: ThemedText.bold,
                                          fontSize: 25),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      ThemedText.boldTitle('FIRST',
                                          BrandTheme.favBrandColorDiscovery,
                                          maxLine: 10,
                                          textAlign: TextAlign.start,
                                          fontWeight: ThemedText.bold,
                                          fontSize: 25),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  SizedBox(
                                    height: 100,
                                    child: VerticalDivider(
                                      thickness: 2,
                                      color: BrandTheme.favBrandColorDiscovery,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              ThemedText.boldTitle(
                                  'Get the Free {channelName} App',
                                  BrandTheme.favBrandColorDiscovery,
                                  maxLine: 10,
                                  textAlign: TextAlign.start,
                                  fontWeight: ThemedText.bold,
                                  fontSize: 25),
                              const SizedBox(
                                height: 50.0,
                              ),
                              if (MediaQuery.of(context).size.width <= 850)
                                Wrap(
                                  runSpacing: 20.0,
                                  spacing: 30.0,
                                  alignment: WrapAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 400,
                                      child: Image.asset(
                                        PLAY_STORE,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 400,
                                      child: Image.asset(
                                        APP_STORE,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                ),
                              if (MediaQuery.of(context).size.width > 850)
                                Wrap(
                                  runSpacing: 20.0,
                                  spacing: 30.0,
                                  alignment: WrapAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 180,
                                      child: Image.asset(
                                        PLAY_STORE,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 180,
                                      child: Image.asset(
                                        APP_STORE,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ThemedText.boldTitle(
                                      'bubltown, ', BrandTheme.keyDark,
                                      maxLine: 10,
                                      textAlign: TextAlign.start,
                                      fontWeight: ThemedText.bold,
                                      fontSize: 15),
                                  ThemedText.boldTitle(
                                      '2a Woodcote Avenue, Wallington, Surrey, SM6 0QS',
                                      BrandTheme.keyDark,
                                      maxLine: 10,
                                      textAlign: TextAlign.start,
                                      fontWeight: ThemedText.regular,
                                      fontSize: 15),
                                ],
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ThemedText.boldTitle(
                                      '©2022 ', BrandTheme.keyDark,
                                      maxLine: 10,
                                      textAlign: TextAlign.start,
                                      fontWeight: ThemedText.regular,
                                      fontSize: 15),
                                  ThemedText.boldTitle(
                                      'bubltown', BrandTheme.keyDark,
                                      maxLine: 10,
                                      textAlign: TextAlign.start,
                                      fontWeight: ThemedText.bold,
                                      fontSize: 15),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ThemedText.boldTitle(
                                      'To feature your business on {ChannelName}, ',
                                      BrandTheme.keyDark,
                                      maxLine: 10,
                                      textAlign: TextAlign.start,
                                      fontWeight: ThemedText.bold,
                                      fontSize: 15),
                                  ThemedText.boldTitle(
                                      'get started here', Colors.blue,
                                      maxLine: 10,
                                      textAlign: TextAlign.start,
                                      fontWeight: ThemedText.bold,
                                      fontSize: 15),
                                  InkWell(
                                    child: ThemedText.boldTitle(
                                      ' for free.',
                                      BrandTheme.keyDark,
                                      maxLine: 10,
                                      textAlign: TextAlign.start,
                                      fontWeight: ThemedText.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ThemedText.boldTitle('Terms', BrandTheme.shadowDark,
                                maxLine: 10,
                                textAlign: TextAlign.center,
                                fontWeight: ThemedText.regular,
                                fontSize: 13),
                            const SizedBox(
                              width: 60.0,
                            ),
                            SizedBox(
                              height: 15,
                              child: VerticalDivider(
                                thickness: 1,
                                color: BrandTheme.shadowDark,
                              ),
                            ),
                            const SizedBox(
                              width: 60.0,
                            ),
                            ThemedText.boldTitle(
                                'Privacy', BrandTheme.shadowDark,
                                maxLine: 10,
                                textAlign: TextAlign.center,
                                fontWeight: ThemedText.regular,
                                fontSize: 13),
                            const SizedBox(
                              width: 60.0,
                            ),
                            SizedBox(
                              height: 15,
                              child: VerticalDivider(
                                thickness: 1,
                                color: BrandTheme.shadowDark,
                              ),
                            ),
                            const SizedBox(
                              width: 60.0,
                            ),
                            ThemedText.boldTitle(
                                'About bubltown', BrandTheme.shadowDark,
                                maxLine: 10,
                                textAlign: TextAlign.center,
                                fontWeight: ThemedText.regular,
                                fontSize: 13),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        )
                      ])
                    : Center(
                        child: CircularProgressIndicator(),
                      )),
        onViewModelReady: (model) => model.onInit(context),
        viewModelBuilder: () => VendorViewModel(),
      );
}

class MyPolygon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(0, size.height),
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      Offset(size.width, size.height / 1.15)
    ], true);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

// ignore: non_constant_identifier_names
Widget OfferVendorDetails(VendorViewModel model) {
  return Center(
      child: Container(
          decoration: BoxDecoration(color: BrandTheme.keyLight),
          width: 650,
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                ThemedText.boldTitle(
                  '${model.vendor!.name} just added an exclusive new deal for you',
                  BrandTheme.keyDark,
                  maxLine: 10,
                  textAlign: TextAlign.center,
                  fontWeight: ThemedText.bold,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  textDirection: TextDirection.rtl,
                  children: [
                    SizedBox(
                      height: 100.0,
                      child: SvgPicture.asset(
                        DEMOTOWN_LAUNCH,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        ClipPath(
                          clipper: MyPolygon(),
                          child: Container(
                            color: BrandTheme.favBrandColorDiscovery,
                            width: 650,
                            height: 300,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 130.0,
                            ),
                            ThemedText.boldTitle(
                              'Hi ${model.vendor!.firstName},',
                              BrandTheme.keyLight,
                              maxLine: 10,
                              textAlign: TextAlign.center,
                              fontWeight: ThemedText.bold,
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            ThemedText.boldTitle('Here’s a new deal for you!',
                                BrandTheme.keyLight,
                                maxLine: 10,
                                textAlign: TextAlign.center,
                                fontWeight: ThemedText.bold,
                                fontSize: 28),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ThemedText.boldTitle(
                        '${model.vendor!.name} just added a brand new deal on Demotown for you. Click below to claim it before time runs out!',
                        BrandTheme.keyDark,
                        maxLine: 10,
                        textAlign: TextAlign.start,
                        fontWeight: ThemedText.bold,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 300,
                        width: 600,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage(model.vendor!.images[0]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      // ThemedText.boldTitle('Super Discount', BrandTheme.keyDark,
                      //     maxLine: 10,
                      //     textAlign: TextAlign.start,
                      //     fontWeight: ThemedText.bold,
                      //     fontSize: 20),
                      ThemedText.boldTitle('By ${model.vendor!.name}',
                          BrandTheme.favBrandColorDiscovery,
                          maxLine: 10,
                          textAlign: TextAlign.start,
                          fontWeight: ThemedText.bold,
                          fontSize: 25),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ThemedText.boldTitle(
                        '${model.vendor!.desc}',
                        BrandTheme.keyDark,
                        maxLine: 10,
                        textAlign: TextAlign.start,
                        fontWeight: ThemedText.bold,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ThemedText.boldTitle(
                        '${model.vendor!.distance}',
                        BrandTheme.keyDark,
                        maxLine: 10,
                        textAlign: TextAlign.start,
                        fontWeight: ThemedText.bold,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ThemedText.boldTitle(
                          '{DiscountedAmount}', BrandTheme.dangerColor,
                          maxLine: 10,
                          textAlign: TextAlign.start,
                          fontWeight: ThemedText.bold,
                          fontSize: 25),
                      const SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: BrandTheme.favBrandColorDiscovery,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: ThemedText.boldTitle(
                            'View Offer',
                            BrandTheme.keyLight,
                            maxLine: 10,
                            textAlign: TextAlign.start,
                            fontWeight: ThemedText.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ThemedText.boldTitle(
                        'Stay tuned for more exclusive deals from {vendorName}.',
                        BrandTheme.keyDark,
                        maxLine: 10,
                        textAlign: TextAlign.start,
                        fontWeight: ThemedText.bold,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ThemedText.boldTitle(
                        'Team {ChannelName}',
                        BrandTheme.keyDark,
                        maxLine: 10,
                        textAlign: TextAlign.start,
                        fontWeight: ThemedText.bold,
                      ),
                    ],
                  ),
                ),
              ])));
}


// class CommonBottomButtonLayout extends ViewModelWidget<VendorViewModel> {
//   const CommonBottomButtonLayout({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, VendorViewModel viewModel) {
//     return InkWell(
//       onTap: null,
//       child: Container(
//         height: 20.0,
//         width: 20.0,
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           color: BrandTheme().brandColor,
//           borderRadius: BorderRadius.circular(5.0),
//         ),
//         child: ThemedText.subtitle2Bold(
//           'View Offer',
//           BrandTheme.keyLight,
//           1,
//         ),
//       ),
//     );
//   }
// }
