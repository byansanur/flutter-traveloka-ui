import 'package:flutter/material.dart';

class Awal extends StatefulWidget {
  @override
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Traveloka'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_horiz,
            ),
            onPressed: (){}, // onpressed dibuat kosong
          ),
        ],
      ),
      body: ListView( // untuk content
        children: <Widget>[
          Akun(), // stateles widget untuk profile information
          Divider(), // for view like android xml
          MenuUtama(), // stateles widget menu utama
          MenuTambahan(), // stateles
        ]
      ),
    );
  }
}

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile( // content didalam padding 
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                "https://images.unsplash.com/photo-1558507652-2d9626c4e67a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
              )
            )
          )
        ),
        title: Text(
          'Alexa', 
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
        subtitle: Row(
          children: <Widget>[
            // button raised for android and ios
            RaisedButton.icon(
              icon: Icon(Icons.album),
              label: Text('338 Poin'),
              onPressed: (){},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            ),
            Padding(padding: EdgeInsets.all(5.0),),
            RaisedButton(
              child: Text('Traveloka pay'),
              onPressed: (){},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            )
          ]
        ),
      ),
    );
  }
}

class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count( // use grid view
      shrinkWrap: true,
      crossAxisCount: 5,
      padding: EdgeInsets.symmetric(vertical: 10.0),
      children: menuUtamaItem, // list menu
    );
  }
}
List<MenuUtamaItem> menuUtamaItem = [
  MenuUtamaItem(
    title: 'Flights',
    icon: Icons.flight,
    colorBox: Colors.blue,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Hotels',
    icon: Icons.hotel,
    colorBox: Colors.blue[800],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Trains',
    icon: Icons.train,
    colorBox: Colors.purple,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Attraction',
    icon: Icons.local_play,
    colorBox: Colors.green[200],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Eats',
    icon: Icons.local_dining,
    colorBox: Colors.orange[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Bus & Travel',
    icon: Icons.directions_bus,
    colorBox: Colors.green,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Airport Taxi',
    icon: Icons.local_taxi,
    colorBox: Colors.blue[200],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Rent Car',
    icon: Icons.directions_car,
    colorBox: Colors.green[700],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Guide',
    icon: Icons.card_travel,
    colorBox: Colors.purple[100],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'More',
    icon: Icons.blur_on,
    colorBox: Colors.grey,
    iconColor: Colors.white,
  ),
];

class MenuUtamaItem extends StatelessWidget {
  MenuUtamaItem({this.title, this.icon, this.colorBox, this.iconColor});
  final String title;
  final IconData icon;
  final Color colorBox, iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            color: colorBox,
            shape: BoxShape.circle
          ),
          child: Icon(icon, color: iconColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
          child: Text(title, style: TextStyle(fontSize: 12.0), textAlign: TextAlign.center,),
        )
      ],
    );
  }
}

class MenuTambahan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0, // tentukan tingginya layout
      padding: EdgeInsets.symmetric(vertical: 10.0), // kasih padding
      child: ListView(
        scrollDirection: Axis.horizontal, // scrollHorizontal in child
        children: menuTambahan, // buat list for item in children
      ),
    );
  }
}

List<MenuTambahanItem> menuTambahan = [
  // tampung data item
  MenuTambahanItem(title: 'Bills & Top-up', icon: Icons.receipt),
  MenuTambahanItem(title: 'International Data Plans', icon: Icons.data_usage),
  MenuTambahanItem(title: 'Movies', icon: Icons.movie),
  MenuTambahanItem(title: 'PayLatter', icon: Icons.payment),
  MenuTambahanItem(title: 'Online Check-in', icon: Icons.check)
];

class MenuTambahanItem extends StatelessWidget {
  // stateles for tampungan data
  MenuTambahanItem({this.title, this.icon}); // initialize for list item
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.0,
      child: Column(
        children: <Widget>[
          Icon(icon),
          Text(
            title,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}