import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:hyperhire_app/model/profiles.dart';
import 'package:hyperhire_app/model/top3winner.dart';
import 'package:hyperhire_app/pages/profilePage.dart';
import 'package:mj_image_slider/mj_image_slider.dart';
import 'package:mj_image_slider/mj_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LOGO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const List<String> sampleImages = [
    'assets/imgs/banner_img_1.png',
    'assets/imgs/banner_img1.png',
    'assets/imgs/banner_img2.png',
    'assets/imgs/banner_img3.png',
  ];

  List<TopThree> topThreeList = [];
  List<Profiles> profileList = [];

  TextEditingController searchController = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    topThreeList.add(TopThree(
        "LG전자 스탠바이미 27ART10AKPL (스탠",
        "\u2022 화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.",
        "\u2022 스탠바이미는 사랑입니다!️",
        "4.89",
        "(216)",
        "LG전자",
        "편리성",
        "assets/imgs/tv1.png",
        "assets/imgs/premium_gold.png"));
    topThreeList.add(TopThree(
        "LG전자 울트라HD 75UP8300KNA (스탠드)",
        "\u2022 화면 잘 나오고... 리모컨 기능 좋습니다.",
        "\u2022 넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!",
        "4.36",
        "(136)",
        "LG전자",
        "고화질",
        "assets/imgs/tv2.png",
        "assets/imgs/premium_grey.png"));
    topThreeList.add(TopThree(
        "라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)",
        "\u2022 반응속도 및 화질이나 여러면에서도 부족함을 느끼기에는 커녕 이정도에 이 정도 성능이면 차고 넘칠만 합니다",
        "\u2022중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어 OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고",
        "3.98",
        "(98)",
        "라익미",
        "가성비",
        "assets/imgs/tv3.png",
        "assets/imgs/premium_yellow.png"));
    profileList.add(Profiles(
        "Name01", "assets/imgs/cat1.png", "assets/imgs/premium_gold.png"));
    profileList.add(Profiles("Name02", "assets/imgs/cat2.png", ""));
    profileList.add(Profiles("Name03", "assets/imgs/cat3.png", ""));
    profileList.add(Profiles("Name04", "assets/imgs/cat4.png", ""));
    profileList.add(Profiles("Name05", "assets/imgs/cat5.png", ""));
    profileList.add(Profiles("Name06", "assets/imgs/cat6.png", ""));
    profileList.add(Profiles("Name07", "assets/imgs/cat7.png", ""));
    profileList.add(Profiles("Name08", "assets/imgs/cat8.png", ""));
    profileList.add(Profiles("Name09", "assets/imgs/cat9.png", ""));
    profileList.add(Profiles("Name10", "assets/imgs/cat10.png", ""));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFEEEEEE),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.white,
          centerTitle: false,
          title: Image.asset("assets/imgs/logo_lbl.png"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _searchBar(),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _banners(),
                    _topThreeWinners(),
                    const SizedBox(height: 12.0),
                    _profiles(),
                    _footer()
                  ],
                  //_banners()
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Card(
          surfaceTintColor: Colors.white,
          color: Colors.white,
          elevation: 6.0,
          borderOnForeground: false,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/imgs/home.png"),
                    const Text(
                      "홈",
                      style: TextStyle(
                          color: Color(0xFF1D1D1D),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/imgs/component.png"),
                    const Text(
                      "카테고리",
                      style: TextStyle(
                          color: Color(0xFF1D1D1D),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/imgs/peoples.png"),
                    const Text(
                      "커뮤니티",
                      style: TextStyle(
                          color: Color(0xFF1D1D1D),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/imgs/profile.png"),
                    const Text(
                      "마이페이지",
                      style: TextStyle(
                          color: Color(0xFF1D1D1D),
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  Widget _banners() {
    return MJImageSlider(
      options: MjOptions(
        height: 221.0,
        aspectRatio: 16 / 12,
        viewportFraction: 0.9,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 2000),
        autoPlayCurve: Curves.fastOutSlowIn,
        scrollDirection: Axis.horizontal,
      ),
      widgets: [
        ...sampleImages
            .map((e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage(e)),
                ))
            .toList()
      ],
    );
  }

  Widget _searchBar() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 16.0, right: 16.0, top: 10.0, bottom: 10.0),
        child: SizedBox(
          height: 34.0,
          child: TextField(
            expands: false,
            scrollPadding: EdgeInsets.zero,
            decoration: InputDecoration(
              border: GradientOutlineInputBorder(
                gapPadding: 0.0,
                borderRadius: BorderRadius.circular(8.0),
                gradient: const LinearGradient(
                    colors: [Color(0xFF74FBDE), Color(0xFF3C41BF)]),
                width: 2,
              ),
              focusedBorder: GradientOutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  gapPadding: 0.0,
                  gradient: const LinearGradient(
                      colors: [Color(0xFF3C41BF), Color(0xFF74FBDE)]),
                  width: 2),
              label: Row(
                children: [
                  const Text(
                    "검색어를 입력하세요",
                    style: TextStyle(
                        color: Color(0xFF868686),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/imgs/search.png",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _topThreeWinners() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
            top: 12.0, left: 12.0, right: 12.0, bottom: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("제일 핫한 리뷰를 만나보세요",
                        style: TextStyle(
                            color: Color(0xFF616161),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400)),
                    Image.asset("assets/imgs/lable_top3.png")
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/imgs/arrow.png"),
                )
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors
                                .black45, //                   <--- border color
                            width: 1.0,
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Center(
                              child: Image.asset(
                                topThreeList[index].images,
                                width: 80.0,
                                height: 80.0,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 6.0, left: 2.0),
                              child: Image.asset(
                                topThreeList[index].iconImage,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              topThreeList[index].title,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              topThreeList[index].desc1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF1D1D1D)),
                            ),
                            Text(
                              topThreeList[index].desc2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF1D1D1D)),
                            ),
                            const SizedBox(height: 6.0),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset("assets/imgs/star.png"),
                                Text(
                                  topThreeList[index].rating,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFFFD233)),
                                ),
                                Text(
                                  topThreeList[index].ratingOutOf,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFC4C4C4)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4.0),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  color: const Color(0XFFF0F0F0),
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    topThreeList[index].tag1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF868686)),
                                  ),
                                ),
                                const SizedBox(width: 4.0),
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  color: const Color(0XFFF0F0F0),
                                  child: Text(
                                    topThreeList[index].tag2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF868686)),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: topThreeList.length,
            )
          ],
        ),
      ),
    );
  }

  Widget _profiles() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text("골드 계급 사용자들이예요",
                    style: TextStyle(
                        color: Color(0xFF616161),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400)),
                Image.asset("assets/imgs/lable_winner.png")
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: 150.0,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfilePage()));
                    },
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 36.0,
                                child: Image.asset(profileList[index].catImage),
                              ),
                            ),
                            profileList[index].winnerImage != null &&
                                    profileList[index].winnerImage != ""
                                ? Image.asset(profileList[index].winnerImage)
                                : Container()
                          ],
                        ),
                        Text(
                          maxLines: 1,
                          profileList[index].catName,
                          style: const TextStyle(
                              color: Color(0xFF616161),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: profileList.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _footer() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "LOGO Inc.",
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFF868686)),
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "회사 소개",
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF868686)),
              ),
              const Spacer(),
              Container(
                height: 20.0,
                width: 2.0,
                color: const Color(0xFFC8C8C8),
              ),
              const Spacer(),
              const Text(
                "인재 채용",
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF868686)),
              ),
              const Spacer(),
              Container(
                height: 20.0,
                width: 2.0,
                color: const Color(0xFFC8C8C8),
              ),
              const Spacer(),
              const Text(
                "기술 블로그",
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF868686)),
              ),
              const Spacer(),
              Container(
                height: 20.0,
                width: 2.0,
                color: const Color(0xFFC8C8C8),
              ),
              const Spacer(),
              const Text(
                "리뷰 저작권",
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF868686)),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/imgs/arrow_right.png"),
              const SizedBox(width: 4.0),
              const Text(
                "review@logo.com",
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF868686)),
              ),
              const Spacer(),
              Image.asset("assets/imgs/dropdownf.png"),
            ],
          ),
          const Divider(),
          const Text(
            "@2022-2022 LOGO Lab, Inc. (주)아무개 서울시 강남구",
            style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w400,
                color: Color(0xFF868686)),
          ),
        ],
      ),
    );
  }
}
