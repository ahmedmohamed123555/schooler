import 'package:flutter/material.dart';
import 'package:schooler/custom_widgets/custom_bus_card.dart';
import 'create_bus_station_bottom_sheet.dart';

class AdminBus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          showModalBottomSheet<dynamic>(
              isScrollControlled: true,
              context: context,
              builder: (context) => CreateBusStationBottomSheet());
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: Text('Bus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomBusCard(
              cityName: 'Dokki',
              cost: '500',
            ),
            CustomBusCard(
              cityName: 'Giza',
              cost: '600',
            ),
            CustomBusCard(
              cityName: 'Maadi',
              cost: '700',
            ),
            CustomBusCard(
              cityName: 'Ain Shams',
              cost: '900',
            ),
            CustomBusCard(
              cityName: 'Shobra',
              cost: '300',
            ),
          ],
        ),
      ),
    );
  }
}
