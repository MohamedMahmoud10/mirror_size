import 'package:flutter/material.dart';
import 'package:mirror_size/app/feat/body_measurement/get_body_measurement/domain/entity/get_body_measurement_response_entity.dart';

class ExpansionUserMeasurement extends StatelessWidget {
  final List<GetBodyMeasurementResponseEntity> responses;

  const ExpansionUserMeasurement({
    Key? key,
    required this.responses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allValues = responses
        .map((response) => response.values ?? [])
        .expand((values) => values)
        .toList();
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: responses.length,
      itemBuilder: (context, index) {
        final measurements = responses[index].values!;
        return SizedBox(
          height: 500,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: measurements.length,
            itemBuilder: (context, subIndex) {
              final botaA7a = measurements[subIndex].title;

              final measurementItem = measurements[subIndex];
              final title = measurementItem.title!.join(", "); //
              // return Container(
              //   height: 500,
              //   child: ListView.builder(
              //     itemCount: title.length,
              //     itemBuilder: (context, index) {
              //       debugPrint('The List of Titel Is ${title}');
              //
              //       return Text(title[index]);
              //     },
              //   ),
              // );
              return ExpansionTile(
                title: Text(title),
                children: <Widget>[
                  // You can add more Widgets here based on your need
                  ListTile(
                    title: Text(
                        'Kandora Length: ${measurementItem.kandoraLength!.join(", ")}',),
                  ),
                  ListTile(
                    title: Text('Chest: ${measurementItem.chest!.join(", ")}'),
                  ),
                  ListTile(
                    title: Text('Low Hip: ${measurementItem.lowHip!.join(", ")}'),
                  ),
                  ListTile(
                    title: Text('Wrist: ${measurementItem.wrist!.join(", ")}'),
                  ),
                  ListTile(
                    title:
                        Text('Shoulder: ${measurementItem.shoulder!.join(", ")}'),
                  ),
                  ListTile(
                    title: Text('Waist: ${measurementItem.waist!.join(", ")}'),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
