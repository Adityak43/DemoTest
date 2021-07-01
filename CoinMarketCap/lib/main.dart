import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloc/coin_list_bloc.dart';
import 'package:untitled/model/response_model.dart';
import 'package:untitled/network/network_api.dart';
import 'package:untitled/widget/details_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CoinListBloc(DefaultNetworkAPI()),
      child: MaterialApp(
        title: 'Coin Maker Cap',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MyHomePage(
                title: 'Coin Maker Cap List',
              ),
          '/details': (context) => DetailsPage(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CoinListBloc _bloc = BlocProvider.of<CoinListBloc>(context);
    _bloc.getMapData(false);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () {
            _bloc.getMapData(true);
            return Future.value();
          },
          child: StreamBuilder<List<DataModel>>(
            stream: _bloc.responseModelBehaviorSubject,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: (ctx, idx) {
                    print('Platform ' + snapshot.data[idx].platform.toString());
                    return Card(
                      child: ListTile(
                        title: Text(snapshot.data[idx].name),
                        trailing: Text(snapshot.data[idx].symbol),
                        onTap: () {
                          Navigator.pushNamed(context, '/details',
                              arguments: snapshot.data[idx]);
                        },
                      ),
                    );
                  },
                  itemCount: snapshot.data.length,
                  physics: const AlwaysScrollableScrollPhysics(),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
