part of 'controller.dart';


class OnboardingView
    extends StatelessView<OnboardingScreen, OnboardingController> {
  const OnboardingView(OnboardingController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              const Color(0xfff3f3f3),
              const Color(0xffc9eefc).withOpacity(1.0)
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 149.h),
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    left: 46.w,
                    bottom: 323.h,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                        10.w,
                        30.h,
                        10.w,
                        30.h,
                      ),
                      height: 454.h,
                      width: 336.6.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10).r,
                          color: Colors.white),
                      child: Column(
                        children: [
                          Text(
                            'Memes forever?',
                            style: GoogleFonts.manrope(
                              color: const Color(0xff1d1d1d),
                              fontWeight: FontWeight.w700,
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(
                            height: 352.h,
                            width: 316.6.w,
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/bull.png',
                                  fit: BoxFit.contain,
                                ),
                                Positioned(
                                  top: 41.h,
                                  left: 218.w,
                                  child: SvgPicture.asset(
                                    'assets/svg/chat.svg',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 53.h),
                    height: 419.h,
                    width: double.infinity.w,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/svg/profile_picture.svg'),
                        SizedBox(height: 24.h),
                        Text(
                          'Welcome!',
                          style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w700,
                              fontSize: 24.sp,
                              color: const Color(0xff1d1d1d)),
                        ),
                        SizedBox(height: 24.h),
                        Text(
                          'Create and discover the best memes ',
                          style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                              color: const Color(0xff1d1d1d)),
                        ),
                        SizedBox(height: 24.h),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10).r),
                          color: const Color(0xff1d1d1d),
                          height: 50.h,
                          minWidth: 284.w,
                          onPressed: () => controller.nextScreen(),
                          child: Text(
                            'Let\'s Go!',
                            style: GoogleFonts.mulish(
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        SizedBox(height: 48.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('By proceeding, you agree to our',
                                style: GoogleFonts.mulish(
                                  color: const Color(0xff1d1d1d),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                )),
                            SizedBox(
                              width: 2.w,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Terms of Service',
                                style: GoogleFonts.mulish(
                                    color: const Color(0xff1d1d1d),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
