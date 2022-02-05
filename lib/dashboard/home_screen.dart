import 'package:core/core.dart';
import 'package:doctor_app/dashboard/patient_details_screen.dart';
import 'package:flutter/material.dart';

import 'dashboard_item.dart';
import 'models/patient.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: UIHelper.defaultAppBar(context),
        body: Container(
          margin: kDefaultMargin,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: UiUtils.getScreenWidth(context) * 0.60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultLabelField(
                      'Dashboard',
                      capitalize: true,
                    ),
                    kDefaultVerticalSpace,
                    Row(
                      children: const [
                        DashboardItem(Icons.task, Colors.green, "Today's Appointments", '21'),
                        DashboardItem(Icons.person, Colors.red, 'Total Patients', '2001'),
                        DashboardItem(Icons.group_rounded, Colors.orange, 'Total Staff', '1201'),
                        DashboardItem(Icons.bedroom_parent, null, 'Total Rooms', '124'),
                      ],
                    ),
                    kLargeVerticalSpace,
                    DefaultLabelField(
                      'Next Patients',
                      capitalize: true,
                    ),
                    kDefaultVerticalSpace,
                    getPatientList(context),
                  ],
                ),
              ),
              // kLargeHorizontalSpace,
              SizedBox(
                width: UiUtils.getScreenWidth(context) * 0.30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultLabelField(
                      'Reports',
                      capitalize: true,
                    ),
                    kDefaultVerticalSpace,
                    const DashboardItem(
                        Icons.fastfood, Colors.blue, '2nd Floor Bathroom Door Broken', null),
                    kDefaultVerticalSpace,
                    const DashboardItem(
                        Icons.fastfood, Colors.blue, '2nd Floor Bathroom Door Broken', null),
                    kDefaultVerticalSpace,
                    const DashboardItem(
                        Icons.fastfood, Colors.blue, '2nd Floor Bathroom Door Broken', null)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getPatientList(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: UiUtils.getScreenWidth(context) * 0.58,
        child: DataTable(
          sortAscending: true,
          sortColumnIndex: 2,
          showCheckboxColumn: false,
          headingTextStyle: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(fontWeight: FontWeight.bold, fontSize: 13),
          dividerThickness: 0.5,
          showBottomBorder: true,
          headingRowColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
            return Theme.of(context).primaryColor.withOpacity(0.6); // Use the default value.
          }),
          dataRowColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
            return Theme.of(context).primaryColor.withOpacity(0.9); // Use the default value.
          }),
          columns: [
            DataColumn(label: Text('Id'), tooltip: 'Patient Id'),
            DataColumn(
                label: Text('Date'), tooltip: 'Appointment Date', ),
            DataColumn(label: Text('Name'), tooltip: 'Patient Name', onSort: (columnIndex, _) {}),
            DataColumn(label: Text('Age'), tooltip: 'Patient Age', numeric: true, onSort: (columnIndex, _) {}),
            DataColumn(label: Text('Gender'), tooltip: 'Patient Gender'),
          ],
          rows: [
            getPatientDataRow(Patient('PHD-1234', 'Salil Godbole', 33, 'Male'), context),
            getPatientDataRow(Patient('PHD-1234', 'Salil Godbole', 33, 'Male'), context),
            getPatientDataRow(Patient('PHD-1234', 'Salil Godbole', 33, 'Male'), context),
            getPatientDataRow(Patient('PHD-1234', 'Salil Godbole', 33, 'Male'), context),
            getPatientDataRow(Patient('PHD-1234', 'Salil Godbole', 33, 'Male'), context),
            getPatientDataRow(Patient('PHD-1234', 'Salil Godbole', 33, 'Male'), context),
            getPatientDataRow(Patient('PHD-1234', 'Salil Godbole', 33, 'Male'), context),
            getPatientDataRow(Patient('PHD-1234', 'Salil Godbole', 33, 'Male'), context),
            getPatientDataRow(Patient('PHD-1234', 'Salil Godbole', 33, 'Male'), context),
          ],
        ),
      ),
    );
  }

  DataRow getPatientDataRow(Patient patient, BuildContext context) {
    return DataRow(
      onSelectChanged: (selected) {
        UiUtils.navigateToScreen(context, PatientDetailsScreen(patient));
      },
        cells: [
      DataCell(Text(
        patient.id,
        style: Theme.of(context)
            .textTheme
            .caption!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
      )),
      DataCell(Text(AppUtils.formatDate(DateTime.now().toString(), format: 'dd/MMM/yyyy'),
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(fontWeight: FontWeight.bold, fontSize: 12))),
      DataCell(Text(
        patient.name,
        style: Theme.of(context)
            .textTheme
            .caption!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
      )),
      DataCell(Text(
        '${patient.age}',
        style: Theme.of(context)
            .textTheme
            .caption!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
      )),
      DataCell(Text(
        patient.gender,
        style: Theme.of(context)
            .textTheme
            .caption!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 12),
      )),
    ]);
  }
}
