part of 'controller.dart';

class CreateMemeView
    extends StatelessView<CreateMemeScreen, CreateMemeController> {
  const CreateMemeView(CreateMemeController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Edit Meme',
          style: GoogleFonts.mulish(
            textStyle: TextStyle(
              color: const Color(0xff1d1d1d),
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: REdgeInsets.all(20.r),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 400.h,
              child: widget.isLocalImage
                  ? Image.file(
                      File(controller.widget.file!.path),
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: double.infinity,
                    )
                  : CachedNetworkImage(
                      imageUrl: controller.widget.model!.image,
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: double.infinity,
                      errorWidget: (context, url, error) => const FlutterLogo(),
                    ),
            ),
            SizedBox(height: 30.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextForm(
                    title: 'Top text',
                    controller: controller.topTextController,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextForm(
                    title: 'Bottom text',
                    controller: controller.bottomTextController,
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10).r),
                    color: const Color(0xff1d1d1d),
                    height: 52.h,
                    minWidth: 380.w,
                    onPressed: () => controller.submitMeme(),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/svg/submit.svg'),
                        SizedBox(
                          width: 16.w,
                        ),
                        BlocBuilder<SubmitMemeBloc, SubmitMemeState>(
                          builder: (context, state) {
                            if (state is SubmitMemeLoading) {
                              return const SpinKitThreeBounce(
                                color: Colors.white,
                                size: 30.0,
                              );
                            }
                            return Text(
                              'Submit',
                              style: GoogleFonts.mulish(
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,
    required this.title,
    required this.controller,
  });

  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.mulish(
            fontStyle: FontStyle.normal,
            textStyle: TextStyle(
                color: const Color(
                  0xff1d1d1d,
                ),
                fontSize: 12.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        TextFormField(
          controller: controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (value!.isEmpty) {
              return '$title can\'t be null';
            }
            return null;
          },
          style: GoogleFonts.mulish(
            fontStyle: FontStyle.normal,
            textStyle: TextStyle(
              color: const Color(
                0xff383838,
              ),
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          cursorColor: Colors.black,
          decoration: InputDecoration(
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
                borderSide: const BorderSide(color: Color(0xff38cb89)),
                borderRadius: BorderRadius.circular(6).r),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xff1d1d1d)),
                borderRadius: BorderRadius.circular(10).r),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xff1d1d1d)),
                borderRadius: BorderRadius.circular(10).r),
          ),
        ),
      ],
    );
  }
}
