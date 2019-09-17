import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';
import 'package:groovin_widgets/groovin_widgets.dart';

class FAB extends StatefulWidget {
  @override
  _FABState createState() => _FABState();
}

class _FABState extends State<FAB> {
  String dropdownValue = 'This Month';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.5),
          ),
          ModalDrawerHandle(
            handleColor: Colors.pink,
            handleWidth: 35,
            handleHeight: 8,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(GroovinMaterialIcons.upload),
            title: Text('Posted By You'),
            subtitle: DropdownButton(
              items: ['This Month', 'This Year'].map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: dropdownValue,
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              underline: SizedBox(
                width: 1,
              ),
            ),
            onTap: () => Navigator.of(context).pushNamed('/a'),
          ),
          ListTile(
            leading: Icon(GroovinMaterialIcons.heart),
            title: Text('Your Favourites'),
            onTap: () => Navigator.of(context).pushNamed('/a'),
          ),
          ListTile(
            leading: Icon(GroovinMaterialIcons.twitter),
            title: Text('Trending on Twitter'),
            onTap: () => Navigator.of(context).pushNamed('/a'),
          ),
          ListTile(
            leading: Icon(GroovinMaterialIcons.reddit),
            title: Text('Trending on Reddit'),
            onTap: () => Navigator.of(context).pushNamed('/a'),
          ),
        ],
      ),
    );
  }
}
