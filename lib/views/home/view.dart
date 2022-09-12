part of 'controller.dart';

class HomeView extends StatelessView<HomeScreen, HomeController> {
  const HomeView(HomeController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: SizedBox(
            height: 10.66.h,
            width: 10.52.w,
            child: SvgPicture.asset(
              'assets/svg/profile_picture.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        title: Text(
          'Discover',
          style: GoogleFonts.mulish(
            fontStyle: FontStyle.normal,
            textStyle: TextStyle(
                color: const Color(
                  0xff1d1d1d,
                ),
                fontSize: 18.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24.w),
            child: SvgPicture.asset('assets/svg/notification.svg'),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
          top: 10.h,
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
                width: 380.w,
                child: TextField(
                  style: GoogleFonts.mulish(
                    fontStyle: FontStyle.normal,
                    textStyle: TextStyle(
                        color: const Color(
                          0xff383838,
                        ),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefixIcon: SizedBox(
                      height: 10.h,
                      width: 10.w,
                      child: SvgPicture.asset(
                        'assets/svg/search.svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    // hintText: hint,
                    hintStyle: GoogleFonts.mulish(
                      fontStyle: FontStyle.normal,
                      textStyle: TextStyle(
                        color: const Color(
                          0xff1d1d1d,
                        ),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff38cb89),
                        ),
                        borderRadius: BorderRadius.circular(6).r),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff1d1d1d)),
                        borderRadius: BorderRadius.circular(10).r),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff1d1d1d)),
                        borderRadius: BorderRadius.circular(10).r),
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              Row(
                children: [
                  Text(
                    'Trending Templates',
                    style: GoogleFonts.mulish(
                      fontStyle: FontStyle.normal,
                      textStyle: TextStyle(
                          color: const Color(0xff000000),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 16.h,
                    width: 55.w,
                    child: GestureDetector(
                      onTap: () => controller.seeAll(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'See All',
                            style: GoogleFonts.mulish(
                              fontStyle: FontStyle.normal,
                              textStyle: TextStyle(
                                color: const Color(0xff000000),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: const Color(0xff1d1d1d),
                            size: 10.sp,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 32.h),
              SizedBox(
                height: 95.h,
                width: double.infinity.w,
                child: BlocConsumer<LoadMemesBloc, LoadMemesState>(
                  listener: (context, state) {
                    if (state is MemesError) {
                      controller.memesError(state.error);
                    }
                  },
                  builder: (context, state) {
                    if (state is MemesLoaded) {
                      return ListView.separated(
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 16.w),
                        itemCount: state.memes.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => TemplateTile(
                          model: state.memes[index],
                        ),
                      );
                    }
                    return ListView(
                      scrollDirection: Axis.horizontal,
                      children: loadingShimmer,
                    );
                  },
                ),
              ),
              SizedBox(height: 32.h),
              Text(
                'Your Feed',
                style: GoogleFonts.mulish(
                  fontStyle: FontStyle.normal,
                  textStyle: TextStyle(
                      color: const Color(
                        0xff000000,
                      ),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 32.h),
              Expanded(
                child: BlocBuilder<LocalMemesBloc, LocalMemesState>(
                  builder: (context, state) {
                    if (state is LocalMemesEmpty) {
                      return const Center(
                        child: Text('No Memes'),
                      );
                    }
                    if (state is LocalMemesLoaded) {
                      List<MemeModel> memes = state.memes.reversed.toList();
                      return ListView.separated(
                          itemCount: state.memes.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 20),
                          itemBuilder: (context, index) =>
                              FeedTile(meme: memes[index]));
                    }
                    return const ShimmerWidget(width: double.infinity,);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 2,
        notchMargin: 25.h,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 70.h,
          width: double.infinity.w,
          child: Row(
            children: [
              SizedBox(
                width: 159.w,
              ),
              appBarItem(
                  'Drafts',
                  SvgPicture.asset('assets/svg/draft.svg', fit: BoxFit.fill),
                  19.0),
              SizedBox(
                width: 60.w,
              ),
              appBarItem(
                  'Saved',
                  SvgPicture.asset('assets/svg/bookmark.svg', fit: BoxFit.fill),
                  22.0),
              SizedBox(
                width: 60.w,
              ),
              appBarItem('Profile',
                  SvgPicture.asset('assets/svg/pp.svg', fit: BoxFit.fill), 27),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.pickImage(),
        child: Container(
          height: 66.h,
          width: 66.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100).r,
            color: const Color(0xff1d1d1d),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
    );
  }
}

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    Key? key,
    this.width,
  }) : super(key: key);

  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 90.w,
      height: width ?? 90.w,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}

class TemplateTile extends StatelessWidget {
  const TemplateTile({super.key, required this.model});
  final MemeModel model;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      width: 93.w,
      child: CachedNetworkImage(
        imageUrl: model.image,
        fit: BoxFit.fill,
        errorWidget: (context, url, error) => const FlutterLogo(),
      ),
    );
  }
}

Widget appBarItem(String title, Widget item, double height) {
  return GestureDetector(
    child: SizedBox(
      height: 55.h,
      width: 37.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: height.h,
            width: 19.h,
            child: item,
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            title,
            style: GoogleFonts.inter(
              fontStyle: FontStyle.normal,
              textStyle: TextStyle(
                  color: const Color(0xff1d1d1d),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    ),
  );
}

List<Widget> loadingShimmer = [
  const ShimmerWidget(),
  SizedBox(width: 16.w),
  const ShimmerWidget(),
  SizedBox(width: 16.w),
  const ShimmerWidget(),
  SizedBox(width: 16.w),
  const ShimmerWidget(),
  SizedBox(width: 16.w),
];

class FeedTile extends StatelessWidget {
  const FeedTile({super.key, required this.meme});
  final MemeModel meme;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390.h,
      width: double.infinity.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: SizedBox(
              height: 41.h,
              width: 41.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child:
                    Image.asset('assets/images/profile.png', fit: BoxFit.fill),
              ),
            ),
            title: Text(
              'Borderline_User',
              style: GoogleFonts.mulish(
                textStyle: TextStyle(
                    color: const Color(
                      0xff1d1d1d,
                    ),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
            subtitle: Text(
              '19 minutes ago',
              style: GoogleFonts.mulish(
                textStyle: TextStyle(
                    color: const Color(
                      0xff959292,
                    ),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
            trailing: SvgPicture.asset('assets/svg/post_action.svg'),
          ),
          SizedBox(
            height: 18.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 52.0.w),
            child: SizedBox(
              height: 292.h,
              width: 326.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '#${meme.name}',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: const Color(
                          0xff1c1b1f,
                        ),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    height: 233.h,
                    width: 326.w,
                    child: Stack(children: [
                      CachedNetworkImage(
                        imageUrl: meme.image,
                        width: double.infinity,
                        fit: BoxFit.fill,
                        errorWidget: (context, url, error) =>
                            const FlutterLogo(),
                      ),
                      Positioned(
                        top: 10.h,
                        left: 130.w,
                        child: Text(
                          meme.topText!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15.h,
                        left: 122.w,
                        child: Text(
                          meme.bottomText!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    height: 12.h,
                    width: 292.w,
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/svg/comment.svg'),
                        SizedBox(width: 9.w),
                        Text('6.8k',
                            style: GoogleFonts.urbanist(
                              textStyle: TextStyle(
                                  color: const Color(
                                    0xff1c1b1f,
                                  ),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            )),
                        SizedBox(
                          width: 48.w,
                        ),
                        SvgPicture.asset('assets/svg/heart.svg'),
                        SizedBox(width: 9.w),
                        Text('267.1k',
                            style: GoogleFonts.urbanist(
                              textStyle: TextStyle(
                                  color: const Color(
                                    0xff1c1b1f,
                                  ),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            )),
                        SizedBox(
                          width: 48.w,
                        ),
                        SvgPicture.asset('assets/svg/bookmark.svg'),
                        SizedBox(
                          width: 48.w,
                        ),
                        SvgPicture.asset('assets/svg/share.svg'),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const SizedBox()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
