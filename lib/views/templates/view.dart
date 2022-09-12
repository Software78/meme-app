
part of 'controller.dart';

class TemplateView extends StatelessView<TemplateScreen, TemplateController> {
  const TemplateView(TemplateController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Templates',
          style: GoogleFonts.mulish(
            textStyle: TextStyle(
              color: const Color(0xff1d1d1d),
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Color(0xff1d1d1d)),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: REdgeInsets.all(20.r),
        child: BlocBuilder<LoadMemesBloc, LoadMemesState>(
          builder: (context, state) {
            if (state is MemesLoaded) {
              return GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                children: List.generate(
                  state.memes.length,
                  (index) => GestureDetector(
                    onTap: () => controller.createMeme(state.memes[index]),
                    child: TemplateTile(
                      model: state.memes[index],
                    ),
                  ),
                ),
              );
            }
            return const ShimmerWidget();
          },
        ),
      ),
    );
  }
}