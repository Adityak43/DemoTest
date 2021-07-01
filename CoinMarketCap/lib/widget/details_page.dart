import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/model/response_model.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as DataModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(

          '${args.name} Details',

        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                'Platform- ' + args.platform.toString(),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'First Historical Data- ' + args.first_historical_data,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Last Historical Data- ' + args.last_historical_data,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
