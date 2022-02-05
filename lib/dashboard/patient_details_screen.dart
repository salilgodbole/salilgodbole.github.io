import 'package:core/core.dart';
import 'package:doctor_app/dashboard/dashboard_item.dart';
import 'package:doctor_app/dashboard/models/patient.dart';
import 'package:doctor_app/dashboard/past_visit_info.dart';
import 'package:doctor_app/dashboard/view_full_report.dart';
import 'package:flutter/material.dart';

import 'models/past_visit.dart';

class PatientDetailsScreen extends StatelessWidget {
  final Patient patient;

  PatientDetailsScreen(this.patient, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIHelper.defaultAppBar(context,
          showBackButton: true,
          title: patient.name,
          subTitle: patient.id,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.note_add),
              tooltip: 'Add Prescription',
            )
          ]),
      body: Container(
        padding: kDefaultPadding,
        margin: kMaxDefaultMargin,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: DashboardItem(Icons.person, Theme.of(context).accentColor, patient.name,
                  "${patient.age} years"),
            ),
            kDefaultVerticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    DefaultLabelField('Patient Insights'),
                    kDefaultVerticalSpace,
                    SizedBox(
                      width: 400,
                      child: Card(
                        child: Row(
                          children: [
                            DashboardItem(
                              Icons.sticky_note_2_sharp,
                              Colors.orange,
                              'Blood test suggested',
                              "Fasting Sugar High Rate = 190",
                              subTitleStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                            ),
                            kDefaultHorizontalSpace,
                            TextButton(
                                onPressed: () {
                                  UiUtils.navigateToScreen(context, ViewFullReport());
                                },
                                child: Text(
                                  'View Full \n Report',
                                  style: Theme.of(context).textTheme.caption!.copyWith(
                                        color: Theme.of(context).accentColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    kDefaultVerticalSpace,
                    Card(
                      child: SizedBox(
                        height: 202,
                        width: 400,
                        child: Padding(
                          padding: kDefaultPadding,
                          child: Text(
                            "fever \n"
                            "Body ache",
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
                    DefaultLabelField("Patient Health Data"),
                    kDefaultVerticalSpace,
                    Card(
                      child: SizedBox(
                        height: 300,
                        width: 400,
                        child: Padding(
                          padding: kDefaultPadding,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              PastVisit pastVisit = pastVisits[index];
                              return InkResponse(
                                onTap: () {
                                  UiUtils.navigateToScreen(context, PastVisitInfo(pastVisit));
                                },
                                child: Card(
                                  margin: kSmallestDefaultMargin,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: kMinPaddingValue,
                                          right: kMinPaddingValue,
                                          top: kSmallestPaddingValue,
                                        ),
                                        child: DefaultLabelField(
                                          'Past Visit on ${AppUtils.formatDate(pastVisit.visitDate)}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1!
                                              .copyWith(fontSize: 13, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      ListTile(
                                        title: RichText(
                                          text: TextSpan(
                                            text: 'Patient Insights: ',
                                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                fontSize: 12, fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                text: pastVisit.patientInsights
                                                    .replaceAll("\n", ", "),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(
                                                        fontSize: 11, fontStyle: FontStyle.italic),
                                              ),
                                            ],
                                          ),
                                        ),
                                        subtitle: RichText(
                                          text: TextSpan(
                                            text: "Doctor's Notes: ",
                                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                fontSize: 12, fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                text: pastVisit.doctorNotes.replaceAll("\n", ", "),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(
                                                        fontSize: 11, fontStyle: FontStyle.italic),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            itemCount: pastVisits.length,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  List<PastVisit> pastVisits = [
    PastVisit("2021-10-11 10:15:00", "fever \nbodyache", "BP: 120/80 \nWeight: 80kg"),
    PastVisit("2022-12-22 10:15:00", "fever \nbodyache", "BP: 120/80 \nWeight: 80kg"),
    PastVisit("2022-01-05 10:15:00", "fever \nbodyache", "BP: 120/80 \nWeight: 80kg"),
    PastVisit("2022-01-15 10:15:00", "fever \nbodyache", "BP: 120/80 \nWeight: 80kg"),
    PastVisit("2022-02-03 10:15:00", "fever \nbodyache", "BP: 120/80 \nWeight: 80kg"),
  ];
}
