import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(44, 172, 126, 1),
                  width: 4,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(360),
              ),
              child: const Text(
                'M',
                style: TextStyle(
                    fontSize: 44, color: Color.fromRGBO(64, 157, 177, 1)),
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            const Text(
              '  Lets check your \nheight and weight.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WeightRow(
                  text: 'kgs',
                  decorColor: Colors.black,
                  textColor: Colors.white,
                ),
                WeightRow(
                  text: 'lbs',
                  decorColor: Colors.white,
                  textColor: Colors.black,
                ),
                SizedBox(width: 20),
                WeightRow(
                  text: 'cms',
                  decorColor: Colors.black,
                  textColor: Colors.white,
                ),
                WeightRow(
                  text: 'ins',
                  decorColor: Colors.white,
                  textColor: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Column(
              children: [
                ListOfColumns(
                  iconList: Icons.article_outlined,
                  nameList: 'Current Weight',
                  propertiesList: '--- kgs',
                ),
                ListOfColumns(
                  iconList: Icons.article_outlined,
                  nameList: 'Target Weight',
                  propertiesList: '--- kgs',
                ),
                ListOfColumns(
                  iconList: Icons.edit,
                  nameList: 'Height',
                  propertiesList: '--- cms',
                ),
                ListOfColumns(
                  iconList: Icons.male,
                  nameList: 'Gender',
                  propertiesList: 'Female',
                ),
                ListOfColumns(
                  iconList: Icons.calendar_month,
                  nameList: 'Birthday',
                  propertiesList: 'dd/mm/yy',
                ),
                ListOfColumns(
                  iconList: Icons.people,
                  nameList: 'Gym Member',
                  propertiesList: 'No',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WeightRow extends StatelessWidget {
  final Color decorColor;
  final Color textColor;
  final String text;
  const WeightRow({
    super.key,
    required this.text,
    required this.decorColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: decorColor, borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

class ListOfColumns extends StatelessWidget {
  final IconData iconList;
  final String nameList;
  final String propertiesList;
  const ListOfColumns(
      {super.key,
      required this.iconList,
      required this.nameList,
      required this.propertiesList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
            color: const Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 10, top: 1, bottom: 1, right: 15),
              child: Icon(iconList),
            ),
            Text(
              nameList,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                propertiesList,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF898A8D)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
