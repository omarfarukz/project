import 'package:blood365/screens/helper/change_request_screen.dart';
import 'package:blood365/screens/request_details_screen.dart';
import 'package:flutter/material.dart';

import 'model/requestList.dart';

List<Request> requestList = [
  Request(
      image: 'https://etimg.etb2bimg.com/photo/75642114.cms',
      bloodGroup: 'B+',
      userName: 'Imran',
      hospitalName: 'Hospital Serdang',
      hospitalLocation: 'Kuala Lumpur',
      patientsType: 'Surgery',
      patientsDepartment: 'Orthopedic',
      patientsBed: 'O02'),
  Request(
      image: 'https://etimg.etb2bimg.com/photo/75642114.cms',
      bloodGroup: 'B+',
      userName: 'Ashfi',
      hospitalName: 'Hospital Kuala lampur',
      hospitalLocation: 'Kuala Lumpur',
      patientsType: 'Delivery',
      patientsDepartment: 'Mom and Child care',
      patientsBed: 'M05'),
  Request(
      image:
          'https://www.aamc.org/sites/default/files/styles/scale_and_crop_1200_x_666/public/d/1/3-hospitalist_patient-story.jpg__992x558_q85_crop-smart_subsampling-2_upscale.jpg?itok=HL_cR-BT',
      bloodGroup: 'B+',
      userName: 'Asif',
      hospitalName: 'HUKM',
      hospitalLocation: 'Cheras',
      patientsType: 'Surgery',
      patientsDepartment: 'Orthopedic',
      patientsBed: 'O08'),
];

class Featured extends StatelessWidget {
  //const Featured({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: requestList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  changeScreen(
                    _,
                    RequestDetails(
                      request: requestList[index],
                    ),
                  );
                },
                child: Container(
                  height: 220,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red.shade50,
                          offset: Offset(4, 6),
                          blurRadius: 20),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.network(
                        "${requestList[index].image}",
                        height: 140,
                        //width: 140,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "${requestList[index].bloodGroup} Blood Needed",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.live_help,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.location_on,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "${requestList[index].hospitalName}",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
