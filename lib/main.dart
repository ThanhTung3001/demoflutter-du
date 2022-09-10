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
                  "Rich Text dùng để hiển thị 1 văn bản text với nhiều style khác nhau. Mỗi text con được biểu diễn bởi 1 TextSpan. Văn bản có thể hiển thị trên 1 dòng hoặc nhiều dòng phụ thuộc vào các bạn thiết lập cho nó. Mỗi Text hiển thị trong Rich Text phải có 1 style rõ ràng, style của nó sử dụng TextStyle tương tự như textStyle của Text. Style mặc định cho nó sẽ là DefaultTextStyle.of(context).style"),
            )
          ],
        ),
      ),
    );
  }
}
