import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl:
                        "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png",
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                      child: CircularProgressIndicator(
                          value: downloadProgress.progress),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  )),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.23,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Oeschinen Lake Campground",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "Kandersteg Switzerland",
                                      style: TextStyle(
                                          color: Colors.grey, height: 1.5),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                )),
                            Container(
                                alignment: Alignment.topRight,
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Container(
                                  margin: EdgeInsets.only(left: 40),
                                  width: MediaQuery.of(context).size.width,
                                  child: ListTile(
                                    title: Transform.translate(
                                      offset: Offset(-25, 0),
                                      child: Text('41'),
                                    ),
                                    leading: Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        margin: EdgeInsets.only(left: 50, right: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.call,
                                    color: Colors.blue,
                                    size: 30,
                                  ),
                                  Text(
                                    "CALL",
                                    style: TextStyle(
                                      height: 2,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.telegram,
                                    size: 30,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "ROUTE",
                                    style: TextStyle(
                                      height: 2,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.share,
                                    size: 30,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "SHARE",
                                    style: TextStyle(
                                      height: 2,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Text(
                  "Rich Text d??ng ????? hi???n th??? 1 v??n b???n text v???i nhi???u style kh??c nhau. M???i text con ???????c bi???u di???n b???i 1 TextSpan. V??n b???n c?? th??? hi???n th??? tr??n 1 d??ng ho???c nhi???u d??ng ph??? thu???c v??o c??c b???n thi???t l???p cho n??. M???i Text hi???n th??? trong Rich Text ph???i c?? 1 style r?? r??ng, style c???a n?? s??? d???ng TextStyle t????ng t??? nh?? textStyle c???a Text. Style m???c ?????nh cho n?? s??? l?? DefaultTextStyle.of(context).style"),
            )
          ],
        ),
      ),
    );
  }
}
