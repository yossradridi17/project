// import 'package:flutter/material.dart';
// import 'package:flutter_application_7/Fournisseur/Home/colors.dart';
// import 'package:provider/provider.dart';

// import '../Data/product.dart';
// import '../registration_provider.dart';
// import 'categoryscreen.dart';

// class CategoryTile extends StatelessWidget {
//   CategoryTile(
//       {required this.category,
//       required this.imageUrl,
//       this.imageAlignment = Alignment.center,
//       Key? key})
//       : super(key: key);
//   final String imageUrl;
//   final Category category;
//   final Alignment imageAlignment;
// //final RegistrationProvide = Provider.of<RegistrationProvider>(BuildContext context);
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<RegistrationProvider>(
//         builder: (context, registrationProvider, _) {
//       return InkWell(
//         onTap: () async {
//           final RegistrationProvide =
//               Provider.of<RegistrationProvider>(context);
//           List j = await RegistrationProvide.getAllP();
//           print(j[0][1][0]);
//           _pushScreen(
//             context: context,
//             screen: CategoryScreen(
//               category: category,
//             ),
//           );
//         },
//         child: Container(
//           height: 200,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//           ),
//           clipBehavior: Clip.antiAlias,
//           child: Stack(
//             fit: StackFit.expand,
//             children: [
//               Image.network(
//                 imageUrl,
//                 color: kBackgroundColor,
//                 colorBlendMode: BlendMode.darken,
//                 alignment: imageAlignment,
//                 fit: BoxFit.cover,
//               ),
//               Align(
//                 alignment: Alignment.center,
//                 child: Text(
//                   category.title.toUpperCase(),
//                   style: Theme.of(context).textTheme.headlineMedium!.copyWith(
//                         color: Colors.white,
//                       ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     });
//   }
// }

// Future<void> _pushScreen(
//     {required BuildContext context, required Widget screen}) async {
//   ThemeData themeData = Theme.of(context);

//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (_) => Theme(data: themeData, child: screen),
//     ),
//   );
// }
import 'package:flutter/material.dart';
import 'package:flutter_application_7/Fournisseur/Home/colors.dart';
import 'package:provider/provider.dart';

import '../Data/product.dart';
import '../registration_provider.dart';
import 'categoryscreen.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({
    required this.category,
    required this.imageUrl,
    this.imageAlignment = Alignment.center,
    Key? key,
  }) : super(key: key);

  final String imageUrl;
  final Category category;
  final Alignment imageAlignment;

  @override
  Widget build(BuildContext context) {
    return Consumer<RegistrationProvider>(
      builder: (context, registrationProvider, _) {
        return InkWell(
          onTap: () async {
            List j = await registrationProvider.getAllP();
            print(j[0][1][0]);
            _pushScreen(
              context: context,
              screen: CategoryScreen(
                category: category,
              ),
            );
          },
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  imageUrl,
                  color: kBackgroundColor,
                  colorBlendMode: BlendMode.darken,
                  alignment: imageAlignment,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    category.title.toUpperCase(),
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Future<void> _pushScreen({
  required BuildContext context,
  required Widget screen,
}) async {
  ThemeData themeData = Theme.of(context);

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => Theme(
        data: themeData,
        child: screen,
      ),
    ),
  );
}
