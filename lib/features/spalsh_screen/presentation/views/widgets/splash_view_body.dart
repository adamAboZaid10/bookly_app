import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  //any animation need to stateful widget
  late AnimationController animationController; //0,1
  late Animation<Offset> slidingAnimation;
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    initSlidingAnimation();
    //what the time that code wait this to work
    navigateToHomeView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 5,
        ),
        AnimatedBuilder(
          builder: (context, state) {
            return SlideTransition(
              position: slidingAnimation,
              child: const Text(
                'Read Free Book',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            );
          },
          animation: slidingAnimation,
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
            .animate(animationController);
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(
      //   () => const HomeView(),
      //   transition: Transition.fade,
      //   duration: kTransitionDuration,
      // );
      GoRouter.of(context).push('/homeView');
    });
  }
}
