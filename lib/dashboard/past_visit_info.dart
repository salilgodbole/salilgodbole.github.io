import 'package:core/core.dart';
import 'package:doctor_app/dashboard/models/patient.dart';
import 'package:doctor_app/dashboard/past_visit_info.dart';
import 'package:flutter/material.dart';

import 'models/past_visit.dart';

class PastVisitInfo extends StatelessWidget {
  final PastVisit pastVisit;

  PastVisitInfo(this.pastVisit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIHelper.defaultAppBar(
        context,
        showBackButton: true,
        title: 'Patient Health Data',
        subTitle: 'on ${AppUtils.formatDate(pastVisit.visitDate)}',
      ),
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    DefaultLabelField('Patient Insights'),
                    kDefaultVerticalSpace,
                    Card(
                      child: SizedBox(
                        height: 300,
                        width: 400,
                        child: Padding(
                          padding: kDefaultPadding,
                          child: Text(
                            pastVisit.patientInsights,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    DefaultLabelField("Doctor's Note"),
                    kDefaultVerticalSpace,
                    Card(
                      child: SizedBox(
                        height: 300,
                        width: 400,
                        child: Padding(
                          padding: kDefaultPadding,
                          child: TextFormField(
                            initialValue: pastVisit.doctorNotes,
                            readOnly: true,
                            autofocus: true,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(borderSide: BorderSide.none),
                            ),
                            minLines: 6,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    DefaultLabelField("Prescription"),
                    kDefaultVerticalSpace,
                    Card(
                      child: SizedBox(
                        height: 300,
                        width: 400,
                        child: Padding(
                          padding: kDefaultPadding,
                          child: TextFormField(
                            readOnly: true,
                            autofocus: true,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(borderSide: BorderSide.none),
                            ),
                            minLines: 6,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<PastVisit> pastVisits = [
    PastVisit("2021-10-11 10:15:00", "fever, bodyache", "BP: 120/80, Weight: 80kg"),
    PastVisit("2022-12-22 10:15:00", "fever, bodyache", "BP: 120/80, Weight: 80kg"),
    PastVisit("2022-01-05 10:15:00", "fever, bodyache", "BP: 120/80, Weight: 80kg"),
    PastVisit("2022-01-15 10:15:00", "fever, bodyache", "BP: 120/80, Weight: 80kg"),
    PastVisit("2022-02-03 10:15:00", "fever, bodyache", "BP: 120/80, Weight: 80kg"),
  ];
}

