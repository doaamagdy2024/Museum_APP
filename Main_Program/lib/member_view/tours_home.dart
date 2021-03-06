import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:main_program/member_view/tour_info.dart';
import '../controller.dart';
import '../data_holders.dart';

Widget tourCard(Tour tour, context) {
  return GFCard(
    boxFit: BoxFit.cover,
    titlePosition: GFPosition.start,
    showOverlayImage: true,
    imageOverlay: NetworkImage('https://via.placeholder.com/150/FFFFFF/FFFFFF'),
    title: GFListTile(
      avatar: GFAvatar(shape: GFAvatarShape.standard),
      titleText: tour.title,
      subTitleText: 'Date: ' + tour.Date_start,
    ),
    content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tour.description,
          maxLines: 3,
        ),
      ],
    ),
    buttonBar: GFButtonBar(
      children: <Widget>[
        GFButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Tour_info(tour: tour)));
          },
          text: "More info",
          blockButton: true,
        ),
      ],
    ),
  );
}

class toursHome extends StatefulWidget {
  final int Member_id;

  const toursHome({Key? key, required this.Member_id}) : super(key: key);

  @override
  _ToursHomeState createState() => _ToursHomeState(Member_id);
}

class _ToursHomeState extends State<toursHome> {
  final int Member_id;
  List<Tour> allTours = [];
  _ToursHomeState(this.Member_id);

  void initState() {
    // TODO: implement initState
    super.initState();
    Controller.getAllTours().then((ListOfToursRows) {
      setState(() {
        for (var row in ListOfToursRows) {
          print(row);
          Tour tour = Tour(row[0], row[1], row[2], row[3], row[4], row[5],
              row[6], row[7], Member_id);
          allTours.add(tour);
        }
        setState(() {}); //just call it to update screen
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Available Tours"),
      ),
      body: ListView.builder(
        itemCount: allTours.length, // should be dynamic -> retrieve articles
        itemBuilder: (context, index) {
          return tourCard(allTours[index], context);
        },
      ),
    );
  }
}
