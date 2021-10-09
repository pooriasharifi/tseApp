import 'package:flutter/material.dart';
import 'package:tse/Screens/menuPage/Manage/templateIndicator.dart';
import 'package:tse/module/bloc.dart';
import 'package:tse/widget/Bottun.dart';
import 'package:tse/widget/pro.dart';
import 'package:tse/widget/textField.dart';

import '../../../Constans.dart';

class templatePage extends StatefulWidget {
  const templatePage({Key? key}) : super(key: key);

  @override
  _templatePageState createState() => _templatePageState();
}

class _templatePageState extends State<templatePage> {
  int itemno = 4;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List<String> _dataList = [
    'Impelition1',
    'Impelition2',
    'Impelition3',
    'Impelition4'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Template',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: false,
        backgroundColor: bgDark,
      ),
      backgroundColor: bgDark,
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            new Expanded(
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return entrItem(data[index]);
                    },
                    itemCount: data.length,
                  ),
                )),
            new Container(
              width: MediaQuery.of(context).size.width / 2,
              color: whiteTxt,
              height: 0.5,
            ),
            new SizedBox(
              height: 20,
            ),
            new InkWell(
              child: Icon(
                Icons.add_circle_outline,
                color: whiteTxt,
                size: 40,
              ),
              onTap: () {
                return _openBottomSheet();
              },
            ),
            new SizedBox(
              height: 5,
            ),
            new Text(
              'Create new',
              style: TextStyle(color: whiteTxt),
            ),
            new SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    ));
  }

  _openBottomSheet() async {
    final option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Material(
            color: mat,
            child: new Container(
              // color: Colors.transparent,
              height: double.infinity,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: btm),
              child: new Column(
                // mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  new SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: new Container(
                      color: greyTxt,
                      height: 1,
                      width: 46,
                    ),
                  ),
                  new SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        new Icon(
                          Icons.more_horiz_rounded,
                          color: whiteTxt,
                        ),
                        new SizedBox(
                          width: 10,
                        ),
                        new Text(
                          'Name:',
                          style: TextStyle(color: whiteTxt),
                        ),
                        new SizedBox(
                          width: 10,
                        ),
                        new Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: new txtForm(
                              txtStyle: TextStyle(color: whiteTxt),
                              obsecureTxt: false,
                              lableTxt: '',
                              bgColor: greyTxt.withOpacity(0.1),
                              txtColor: whiteTxt,
                              siffixColor: bgDark,
                              customBr: false,
                              crBorder: BorderSide.none,
                              suffixIcon: null,
                              action: TextInputAction.done,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 25),
                      child: new Column(children: [
                        new Expanded(
                            child: AnimatedList(
                          key: _listKey,
                          initialItemCount: _dataList.length,
                          itemBuilder: (context, index, animation) {
                            return _buildListItem(
                                _dataList[index], animation, index);
                          },
                        )),
                        FloatingActionButton(
                          onPressed: () => _insertSingleItem(),
                          child: Icon(Icons.add),
                          backgroundColor: gr.withOpacity(0.1),
                          foregroundColor: whiteTxt,
                        )
                      ]),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget _buildListItem(String item, Animation<double> animation, int index) {
    intBloc drp = intBloc();
    int _selectedItem = 0;

    return SizeTransition(
      sizeFactor: animation,
      child: new Card(
        elevation: 25,
        color: btm,
        child: ListTile(
          title: new Text(
            item,
            style: TextStyle(color: whiteTxt),
          ),
          trailing: Container(
            child: StreamBuilder<int>(
                stream: drp.Stream$,
                builder: (context, snapshot) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: new BoxDecoration(
                      border: Border.all(color: whiteTxt),
                      borderRadius: BorderRadius.circular(17.5),
                    ),
                    child: new DropdownButton<int>(
                      value: snapshot.data ?? 1,
                      items: [
                        DropdownMenuItem(
                          child: Text('Chose'),
                          value: 0,
                        ),
                        DropdownMenuItem(
                          child: Text('Macd'),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text('Rsi'),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text('bolinger'),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Text('Ema'),
                          value: 4,
                        ),
                      ],
                      dropdownColor: bgDark,
                      iconEnabledColor: whiteTxt,
                      underline: Container(
                        color: greyTxt,
                      ),
                      style: TextStyle(color: whiteTxt),
                      onChanged: (val) {
                        drp.SetValue(val!);
                        _selectedItem = val;
                        switch (val) {
                          case 0:
                            print('object');
                            break;
                          default:
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => templateInd()));
                            print('tap op $val');
                            _showDialog(context, val);
                        }
                      },
                    ),
                  );
                }),
          ),
          // ),
          leading: GestureDetector(
            child: Icon(
              Icons.remove_circle_outline,
              color: Colors.red[900],
            ),
            onTap: () {
              _removeSingleItem(index);
            },
          ),
        ),
      ),
    );
  }

  void _showDialog(context, val) {
    Map<dynamic, dynamic> _data = new Map();
    // flutter defined function
    List<String> nameItem = ['chose', 'Macd', 'Rsi', 'boling', 'Ema'];
    List<String> nameSourse = ['chose', 'Open', 'close', 'Low', 'High'];
    intBloc drp = intBloc();
    int _selectedItem = 0;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return alert dialog object
        return AlertDialog(
          backgroundColor: btm,
          titleTextStyle: TextStyle(
              color: whiteTxt, fontWeight: FontWeight.w900, fontSize: 18),
          contentTextStyle: TextStyle(color: whiteTxt),
          title: Center(child: new Text('${nameItem[val]}')),
          content: Container(
            height: 250,
            width: MediaQuery.of(context).size.width - 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Text('period : ', style: TextStyle(color: whiteTxt)),
                    new Container(
                      height: 50,
                      width: 60,
                      child: new TextFormField(
                        onSaved: (val) {
                          _data['period'] = val;
                        },
                        cursorColor: gr,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: whiteTxt,
                        ),
                        decoration: new InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17.5),
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17.5),
                              borderSide: BorderSide(color: gr)),
                        ),
                      ),
                    )
                  ],
                ),
                new SizedBox(
                  height: 10,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    new Text('History : ', style: TextStyle(color: whiteTxt)),
                    new Container(
                      height: 50,
                      width: 60,
                      child: new TextFormField(
                        onSaved: (val) {
                          var history = val;
                          _data['history'] = history;
                        },
                        onChanged: (val) {
                          print(val);
                        },
                        textInputAction: TextInputAction.done,
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        style: TextStyle(color: whiteTxt),
                        decoration: new InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17.5),
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17.5),
                              borderSide: BorderSide(color: gr)),
                        ),
                      ),
                    )
                  ],
                ),
                new SizedBox(
                  height: 10,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    new Text('sourse : ', style: TextStyle(color: whiteTxt)),
                    new StreamBuilder<int>(
                        stream: drp.Stream$,
                        builder: (context, snapshot) {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: new BoxDecoration(
                              border: Border.all(color: whiteTxt),
                              borderRadius: BorderRadius.circular(17.5),
                            ),
                            child: new DropdownButton<int>(
                                value: snapshot.data ?? 1,
                                items: [
                                  DropdownMenuItem(
                                    child: Text('Chose'),
                                    value: 0,
                                  ),
                                  DropdownMenuItem(
                                    child: Text('open'),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text('Close'),
                                    value: 2,
                                  ),
                                  DropdownMenuItem(
                                    child: Text('Low'),
                                    value: 3,
                                  ),
                                  DropdownMenuItem(
                                    child: Text('High'),
                                    value: 4,
                                  ),
                                ],
                                dropdownColor: bgDark,
                                iconEnabledColor: whiteTxt,
                                underline: Container(
                                  color: greyTxt,
                                ),
                                style: TextStyle(color: whiteTxt),
                                onChanged: (val) {
                                  drp.SetValue(val!);
                                  _selectedItem = val;
                                  _data['sourse'] = nameSourse[val];
                                  print(val);
                                  print(nameSourse[val]);
                                }),
                          );
                        }),
                  ],
                ),
                new SizedBox(
                  height: 20,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    new Container(
                      height: 59,
                      width: 120,
                      decoration: new BoxDecoration(
                          border: Border.all(color: gr),
                          borderRadius: BorderRadius.circular(17.5)),
                      child: new InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                            child: new Text('Cansel',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ),
                    new SizedBox(
                      width: 10,
                    ),
                    new Container(
                      height: 59,
                      width: 120,
                      decoration: new BoxDecoration(
                          color: gr,
                          border: Border.all(color: gr),
                          borderRadius: BorderRadius.circular(17.5)),
                      child: new InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          print(_data);
                        },
                        child: Center(
                            child: new Text('Ok',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void _insertSingleItem() {
    int insertIndex;
    if (_dataList.length > 0) {
      insertIndex = _dataList.length;
    } else {
      insertIndex = 0;
    }
    String item = 'Impelition ${itemno = itemno + 1}';
    _dataList.insert(insertIndex, item);
    _listKey.currentState!.insertItem(insertIndex);
  }

  void _removeSingleItem(int removeAt) {
    int removeIndex = removeAt;
    String removedItem = _dataList.removeAt(removeIndex);
    AnimatedListRemovedItemBuilder builder = (context, animation) {
      return _buildListItem(removedItem, animation, removeAt);
    };
    _listKey.currentState!.removeItem(removeIndex, builder);
  }
}

class Entry {
  const Entry(this.title, [this.childen = const <Entry>[]]);
  final String title;
  final List<Entry> childen;
}

const List<Entry> data = <Entry>[
  Entry('Template1', <Entry>[
    Entry(
      'Macd(19,12,open)',
    ),
    Entry('Rsi(12,open)'),
    Entry('Ema(21,open)')
  ]),
  Entry('Template2', <Entry>[
    Entry(
      'Macd(19,12,open)',
    ),
    Entry('Rsi(12,open)'),
    Entry('Ema(21,open)')
  ]),
  Entry('Template3', <Entry>[
    Entry(
      'Macd(19,12,open)',
    ),
    Entry('Rsi(12,open)'),
    Entry('Ema(21,open)')
  ]),
  Entry('Template4', <Entry>[
    Entry(
      'Macd(19,12,open)',
    ),
    Entry('Rsi(12,open)'),
    Entry('Ema(21,open)')
  ]),
  Entry('Template5', <Entry>[
    Entry(
      'Macd(19,12,open)',
    ),
    Entry('Rsi(12,open)'),
    Entry('Ema(21,open)')
  ])
];

class entrItem extends StatelessWidget {
  const entrItem(this.entry, {Key? key}) : super(key: key);
  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.childen.isEmpty)
      return ListTile(
          title: Text(
        root.title,
        style: TextStyle(color: whiteTxt),
      ));
    return ExpansionTile(
      // backgroundColor: bgDark,
      textColor: gr,
      iconColor: gr,
      collapsedIconColor: whiteTxt,
      collapsedTextColor: whiteTxt,
      title: Text(
        root.title,
      ),
      key: PageStorageKey<Entry>(root),
      children: [
        new Column(
          children: root.childen.map(_buildTiles).toList(),
        ),
        new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new bottonWidget(
                heightContainer: 30,
                widthContainer: 80,
                hasBorder: true,
                title: 'Edit'),
            new SizedBox(
              width: 40,
            ),
            new bottonWidget(
                heightContainer: 30,
                widthContainer: 80,
                hasBorder: false,
                title: 'start')
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
