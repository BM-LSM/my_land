import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:my_land/model/list_model.dart';
import 'package:my_land/theme.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:xml2json/xml2json.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';


class MainList extends StatefulWidget {
  static String routeName = "/main_list";
  final ChromeSafariBrowser browser = ChromeSafariBrowser();

  MainList({Key? key}) : super(key: key);


  @override
  _MainListState createState() => _MainListState();

}

class _MainListState extends State<MainList> {
  getData() async {
    var url = Uri.parse(
        'http://apis.data.go.kr/B551182/rprtClicHospService/getRprtClicHospService?serviceKey=NrwY3p99VQSaCvMq%2BRrnnRf3M3GDWpfVJG7UZB2oUB2BkyRgfJ8HxWz20t%2FNS5ylGy1SI%2FMi14UwtLdHrCnXFg%3D%3D&numOfRows=10&pageNo=1');
    final response = await http.get(url);

    final xml = utf8.decode(response.bodyBytes);
    var xml2Json = Xml2Json()
      ..parse(xml);
    var jsonchan = xml2Json.toParker();
    var jsonResult = jsonDecode(jsonchan);

    final jsonItems = jsonResult['response']['body']['items']['item'];

    final items = <Item>[];

    for (var u in jsonItems) {
      Item item =
      Item(u["sidoNm"], u["yadmNm"], u["XPosWgs84"], u["YPosWgs84"]);
      items.add(item);
    }
    return items;
  }


  @override
  Widget build(BuildContext context) {
    return Card(
      child: FutureBuilder(
        future: getData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Container(
              child: Center(
                child: Text('Loading'),
              ),
            );
          } else {
            return ListView.builder(
                primary: false,
                // 나보다 위의 스크롤을 따라간다
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text(snapshot.data[i].yadmNm),
                    subtitle: Text(snapshot.data[i].sidoNm),
                    trailing: ElevatedButton(
                      onPressed: () async {
                        // here!!
                        // https://www.google.com/maps/@[i]XPosWgs84,[i]YPosWgs84
                      },
                      child: Text('지도보기'),
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
