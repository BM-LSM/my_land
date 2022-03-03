import 'package:flutter/material.dart';
import 'package:my_land/theme.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return Column(
      children: [
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                '분양정보',
                textAlign: TextAlign.center,
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(width * 0.25, height * 0.08),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                '실거래가\n조회',
                textAlign: TextAlign.center,
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(width * 0.25, height * 0.08),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                '실거래\n가격지수',
                textAlign: TextAlign.center,
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(width * 0.25, height * 0.08),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                '지역별\nPIR/LIR',
                textAlign: TextAlign.center,
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(width * 0.25, height * 0.08),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                '부동산 뉴스',
                textAlign: TextAlign.center,
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(width * 0.25, height * 0.08),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                '준비중..',
                textAlign: TextAlign.center,
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(width * 0.25, height * 0.08),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Divider(
          color: Colors.grey[200],
          thickness: 10,
        ),
        const SizedBox(height: 15),
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
