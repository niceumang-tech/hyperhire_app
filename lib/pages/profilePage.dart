import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFEEEEEE),
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          elevation: 8.0,
          automaticallyImplyLeading: true,
          leading: Image.asset("assets/imgs/arrow_left.png"),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "랭킹 1위",
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF868686),
                ),
              ),
              Text(
                "베스트 리뷰어",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1D1D1D),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      color: Colors.white,
                      child: const Divider(),
                    ),
                    _profileBar(),
                    const SizedBox(height: 12.0),
                    _moreDetails()
                  ],
                  //_banners()
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _profileBar() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 16.0, right: 16.0, top: 10.0, bottom: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60.0,
              child: Image.asset(
                "assets/imgs/cat_details.png",
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "Name01",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/imgs/premium_gold.png"),
                const Text(
                  "골드",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFD233),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Container(
              padding: const EdgeInsets.all(10.0),
              color: const Color(0xFFF0F0F0),
              child: const Text(
                "조립컴 업체를 운영하며 리뷰를 작성합니다.",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF868686),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _moreDetails() {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("작성한 리뷰",
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500)),
                const Text("총 35개",
                    style: TextStyle(
                        color: Color(0xFF616161),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400)),
                const Spacer(),
                Image.asset("assets/imgs/selectmenu.png")
              ],
            ),
            const Divider(
              color: Color(0xFFF0F0F0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    child: Image.asset(
                      "assets/imgs/img1_details.png",
                      width: 80.0,
                      height: 80.0,
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AMD 라이젠 5 5600X 버미어 \n정품 멀티팩",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        const SizedBox(height: 6.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/imgs/star_big.png"),
                            Image.asset("assets/imgs/star_big.png"),
                            Image.asset("assets/imgs/star_big.png"),
                            Image.asset("assets/imgs/star_big.png"),
                            Image.asset("assets/imgs/star_grey.png"),
                            const SizedBox(width: 6.0),
                            const Text(
                              "4.07",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF000000)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color(0xFFF0F0F0),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16.0,
                  child: Image.asset(
                    "assets/imgs/cat_details.png",
                  ),
                ),
                const SizedBox(width: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Name01",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/imgs/star.png"),
                        Image.asset("assets/imgs/star.png"),
                        Image.asset("assets/imgs/star.png"),
                        Image.asset("assets/imgs/star.png"),
                        Image.asset("assets/imgs/small_grey_star.png"),
                        const Text(
                          "2022.12.09",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF686868),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/imgs/bookmark.png"),
                ),
                const SizedBox(height: 8.0),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "\“가격 저렴해요\”",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFA0A0A0),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\“CPU온도 고온\”",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFA0A0A0),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\“서멀작업 가능해요\”",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFA0A0A0),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\“게임 잘 돌아가요\”",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFA0A0A0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Image.asset("assets/imgs/bijli_active.png"),
                  const SizedBox(width: 12.0),
                  const Text(
                    "멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 \n고객님들에게도 추천 가능한 제품인 듯 합니다.",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF616161),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Image.asset("assets/imgs/bijli_dis.png"),
                  const SizedBox(width: 12.0),
                  const Text(
                    "3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한\n 느낌 까지는 아닙니다..",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF616161),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Image.asset("assets/imgs/img2_details.png"),
                  const SizedBox(width: 12.0),
                  Image.asset("assets/imgs/img3_details.png"),
                  const SizedBox(width: 12.0),
                  Image.asset("assets/imgs/img4_details.png"),
                ],
              ),
            ),
            const Divider(
              color: Color(0xFFF0F0F0),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Image.asset("assets/imgs/chat.png"),
                  const SizedBox(width: 2.0),
                  const Text(
                    "댓글 달기..",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF616161),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
