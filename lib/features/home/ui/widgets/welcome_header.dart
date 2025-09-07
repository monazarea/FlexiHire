// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// // تم حذف واردات BLoC
// import 'package:grad_comp/core/helpers/constants.dart';
// import 'package:grad_comp/core/helpers/extensions.dart';
// import 'package:grad_comp/core/helpers/shared_pref_helper.dart';
// import 'package:grad_comp/core/routing/routes.dart';
// import '../../../../core/theming/colors.dart';
//
// class WelcomeHeader extends StatelessWidget {
//   const WelcomeHeader({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Welcome!',
//           style: TextStyle(
//             fontSize: 16,
//             color: ColorsManager.gray,
//           ),
//         ),
//         const SizedBox(height: 4),
//
//         FutureBuilder<List<dynamic>>(
//           future: Future.wait([
//             SharedPrefHelper.getString(SharedPrefKeys.userName),
//             SharedPrefHelper.getInt(SharedPrefKeys.userId),
//             SharedPrefHelper.getString(SharedPrefKeys.userRole),
//           ]),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
//               final String savedName = snapshot.data![0] as String? ?? 'Guest';
//               final int savedUserId = snapshot.data![1] as int? ?? 0;
//               final String savedRole = snapshot.data![2] as String? ?? 'user';
//
//               return _buildTappableName(
//                 context,
//                 savedName.isNotEmpty ? savedName : 'Guest',
//                 savedUserId,
//                 savedRole,
//               );
//             }
//             return const SizedBox(height: 26);
//           },
//         ),
//       ],
//     );
//   }
//
//
//   Widget _buildTappableName(BuildContext context, String displayName, int userId, String userRole) {
//     return RichText(
//       text: TextSpan(
//         text: displayName,
//         style: const TextStyle(
//           fontSize: 22,
//           fontWeight: FontWeight.bold,
//           color: Colors.black,
//         ),
//         recognizer: TapGestureRecognizer()
//           ..onTap = () {},
//       ),
//     );
//   }
// }
