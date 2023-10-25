import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:with_firebase_flutter_uidesign1/Global_Widgets/custome_widgets.dart';
import 'package:with_firebase_flutter_uidesign1/utlits/appColors.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  List<String> SliderImage = [
    'https://th.bing.com/th/id/OIP.48vbDCW1qCYNnLIASFMtrQAAAA?pid=ImgDet&rs=1',
    'https://thumbs.dreamstime.com/b/discount-sale-sticker-banner-vector-eps-percent-off-discount-sale-sticker-banner-yelow-background-vector-eps-194775935.jpg',
    'https://thumbs.dreamstime.com/b/sale-special-offer-tag-price-tags-sales-label-banner-vector-illustration-170941128.jpg',
  ];

  List<Map<String, String>> categories = [
    {
      'icon': 'assets/images/5.png',
    },
    {
      'icon': 'assets/images/3.png',
    },
    {
      'icon': 'assets/images/4.png',
    },
    {
      'icon': 'assets/images/2.png',
    },
    {
      'icon': 'assets/images/1.png',
    },
    {
      'icon': 'assets/images/5.png',
    },
  ];

  List<Map<String, String>> WatchName = [
    {
      'name': 'Readmi Not 4',
      'price': '\$120',
    },
    {
      'name': 'Readmi Not 5',
      'price': '\$130',
    },
    {
      'name': 'Apple watch 2',
      'price': '\$140',
    },
    {
      'name': 'Apple watch 4',
      'price': '\$310',
    },
    {
      'name': 'Realme 7',
      'price': '\$150',
    },
    {
      'name': 'Samsung Not 11',
      'price': '\$160',
    },
    {
      'name': 'Realme 8pro',
      'price': '\$200',
    },
    {
      'name': 'Casio',
      'price': '\$100',
    },
    {
      'name': 'Apple watch 7',
      'price': '\$330',
    },
    {
      'name': 'Onplush 2',
      'price': '\$230',
    },
    {
      'name': 'Readmi Not 8',
      'price': '\$154',
    },
    {
      'name': 'Readmi Not 10',
      'price': '\$230',
    },
    {
      'name': 'Realme 11 pro',
      'price': '\$250',
    },
    {
      'name': 'Samsung 5mi',
      'price': '\$210',
    },
  ];

  List<String> RecentImages = [
    'https://th.bing.com/th/id/OIP.MIgJHTUuXtxlTk80GvyghQHaHa?pid=ImgDet&w=179&h=179&c=7',
    'data:image/jpeg;base64,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',
    'https://th.bing.com/th/id/OIP.dEYK9s_VCQpxGb-90qE6EQHaHa?w=188&h=188&c=7&r=0&o=5&pid=1.7',
    'https://th.bing.com/th/id/OIP.-DKRGdRhzShBLrBTchRaggHaHa?w=188&h=188&c=7&r=0&o=5&pid=1.7',
    'https://th.bing.com/th/id/OIP.yOtEtaQ5YG1GFe8qjW36bQHaHa?w=188&h=188&c=7&r=0&o=5&pid=1.7',
    'https://th.bing.com/th?q=Apple+Watch+Women&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247',
    'https://th.bing.com/th/id/OIP.yIH19jyjpC7GwnJRWUERqQHaHa?w=214&h=214&c=7&r=0&o=5&pid=1.7',
    'https://th.bing.com/th/id/OIP.HM9whNoDo1kfkuq4mwMz0QHaHa?pid=ImgDet&w=179&h=179&c=7',
    'https://th.bing.com/th/id/OIP.mK5x8yHMrW1kY35hH-7-OgAAAA?pid=ImgDet&w=179&h=179&c=7',
    'https://th.bing.com/th/id/OIP.sgG-ox1Bxa_YLRkGCZHIcwHaGd?pid=ImgDet&w=179&h=156&c=7',
    'https://th.bing.com/th/id/OIP.72IRTcRW6FhqzvtKwl97oQAAAA?pid=ImgDet&w=179&h=179&c=7',
    'https://th.bing.com/th/id/OIP.zNYhIVBKzTevcR3nnmhHPAHaHa?pid=ImgDet&w=179&h=179&c=7',
    'https://th.bing.com/th/id/OIP.YTmJP-BB4Egddl7iDmlG8AHaIt?pid=ImgDet&w=179&h=209&c=7',
    'https://th.bing.com/th/id/OIP.MIgJHTUuXtxlTk80GvyghQHaHa?pid=ImgDet&w=179&h=179&c=7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        isleading: Icon(Icons.menu),
        action: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hellow Emon 👋',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                'Let’s start shopping!',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(.5),
                ),
              ),
              Container(
                height: 170,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: CarouselSlider.builder(
                  itemCount: SliderImage.length,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(SliderImage[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayCurve: Curves.easeInOut,
                    enlargeCenterPage: true,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Categories',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 14,
                        color: appColors.prymarey,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 62,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF2F2F2),
                        border: Border.all(
                          color: Color.fromARGB(215, 224, 224, 215),
                        ),
                      ),
                      child: Center(
                        child: Image.asset(categories[index]['icon']!),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Recent Product',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(.5),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.8,
                ),
                itemCount: RecentImages.length,
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 245, 242, 242),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: NetworkImage(RecentImages[index]),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.black.withOpacity(.2),
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          WatchName[index]['name']!,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          WatchName[index]['price']!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: appColors.prymarey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
