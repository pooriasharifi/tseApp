import 'package:flutter/material.dart';
import 'package:tse/Constans.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class favoritePageMenu extends StatefulWidget {
  const favoritePageMenu({Key? key}) : super(key: key);

  @override
  _favoritePageMenuState createState() => _favoritePageMenuState();
}

class _favoritePageMenuState extends State<favoritePageMenu> {
  List item = [
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
    'rampna',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _buildTabs().length,
      child: Scaffold(
          backgroundColor: bgDark,
          appBar: AppBar(
            bottom: new TabBar(
              tabs: _buildTabs(),
              automaticIndicatorColorAdjustment: true,
              indicatorColor: gry,
              unselectedLabelColor: gry,
            ),
            title: Text(
              'Favorite',
              style: TextStyle(fontSize: 18),
            ),
            centerTitle: false,
            backgroundColor: bgDark,
          ),
          body: new TabBarView(children: [stockItem(), tempelateItem()])),
    );
  }

  List<Widget> _buildTabs() {
    return <Widget>[
      Tab(
        text: 'Stocks',
      ),
      Tab(
        text: 'Template',
      )
    ];
  }

  stockItem() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Expanded(
              child: new ListView.builder(
                  itemCount: item.length,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  itemBuilder: (BuildContext context, int index) {
                    return new Container(
                      child: Material(
                        color: bgDark,
                        child: new ListTile(
                          // onTap: () {},
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.linear_scale,
                                    color: whiteTxt,
                                  ),
                                  new SizedBox(
                                    width: 20,
                                  ),
                                  new Text('${item[index]}',
                                      style: TextStyle(
                                        color: whiteTxt,
                                        fontSize: 18,
                                      )),
                                  new SizedBox(
                                    width: 50,
                                  ),
                                ],
                              ),
                              new InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                          subtitle: new Text(
                            ' فرهنگی و هنری',
                            style: TextStyle(color: greyTxt),
                          ),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }

  tempelateItem() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Column(
        children: [
          new Expanded(
              child: new ListView.builder(
                  itemCount: item.length,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  itemBuilder: (BuildContext context, int index) {
                    return new Container(
                      child: new Material(
                        color: bgDark,
                        child: new ListTile(
                          // onTap: () {},
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.linear_scale,
                                    color: whiteTxt,
                                  ),
                                  new SizedBox(
                                    width: 20,
                                  ),
                                  new Text('${item[index]}',
                                      style: TextStyle(
                                        color: whiteTxt,
                                        fontSize: 18,
                                      )),
                                  new SizedBox(
                                    width: 50,
                                  ),
                                ],
                              ),
                              new InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
