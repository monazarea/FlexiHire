import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/core/helpers/constants.dart';
import 'package:grad_comp/core/routing/app_router.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/features/app_user/logic/user_cubit.dart';

import 'core/routing/routes.dart';
import 'features/get_skills_and_jobs/logic/skills_jobs_cubit.dart';

class FlexihireApp extends StatelessWidget {
  final AppRouter appRouter;

  const FlexihireApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>  getIt<SkillsJobsCubit>(),
            ),
            // أضف أي كيوبتات عامة أخرى هنا في المستقبل
          ],
          child: MaterialApp(
            title: 'Doc App',
            theme: ThemeData(
                primaryColor: ColorsManager.primary,
                scaffoldBackgroundColor: Colors.white
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: isLoggedInUser ? Routes.homeScreen : Routes
                .loginScreen,
            onGenerateRoute: appRouter.generateRoute,
          ),
        )
    );
  }
}
