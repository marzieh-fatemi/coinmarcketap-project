import 'package:flutter/material.dart';

class ListHorizintal extends StatelessWidget {
  final List<String> img = [
    'images/google-search-magnifying-glass.png',
    'images/unnamed.png',
    'images/BTC-Trading.jpg',
    'images/Monetize_Cybercrime-1200x433.jpg',
    'images/Adbrain-hack-obeStock_121896609-1700x1133.jpeg',
    'images/dark-side-of-social-media.jpg'
  ];
  final List<String> titletxt = [
    'Google Finance Now Lists Bitcoin',
    'Ripple Presentation Highlighting',
    'UniSwap Protocol Integerated into',
    'Bitcoin IsGetting Two Major',
    'Ripple Exploring Prototype Use',
    'Ripple Giant Shift 50 Mln XRP',
  ];
  final List<String> txt = [
    'Mainstream Media Attention',
    'First Ahead Of Top Forex Currencies',
    'Bank of America Partnership Goes',
    'Trandingview',
    'Improvements in Historic Code',
    'Cases for XRP Out',
  ];
  final List<String> time = [
    'BeinCrypto.1d ago',
    'Bitcoinist.1d ago',
    'The Daily Hold.2d ago',
    'Ethereum World News.3d ago',
    'Decrypt.3d ago',
    'The Daily Hold.4d ago'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: img.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'images/icons8-werewolf-24.png',
                        width: 15,
                        height: 15,
                      ),
                      Text(
                        'DISCUSS ON CRYPTOPANIC >',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                ),
                margin: EdgeInsets.all(10.0),
                width: 230.0,
                height: 180.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      img[index],
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                titletxt[index],
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              Text(
                txt[index],
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                time[index],
                style: TextStyle(fontSize: 10.0, color: Colors.grey),
              ),
            ],
          );
        },
      ),
    );
  }
}
