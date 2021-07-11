import 'package:schooler/parent/trip.dart';

class TripData {
  int tripNumber = 1;
  List<Trip> tripData = [
    Trip(
        title: 'October War Panaroma',
        date: '6 Oct 2020, 11:00 AM',
        adress: '15 Ahmed Zwil St, Dokki, Giza',
        maxNumber: '150 Students'),
    Trip(
        title: 'The Egyption Museum',
        date: '19 Oct 2020, 09:00 AM',
        adress: '15 Ahmed Zwil St, Dokki, Giza',
        maxNumber: '150 Students'),
    Trip(
        title: 'Giza Zoological Garden',
        date: '29 Oct 2020, 11:00 AM',
        adress: '15 Ahmed Zwil St, Dokki, Giza',
        maxNumber: '150 Students'),
    Trip(
        title: 'Pyramids of Giza',
        date: '05 Nov Oct 2020, 09:00 AM',
        adress: '15 Ahmed Zwil St, Dokki, Giza',
        maxNumber: '150 Students')
  ];
  String getTitle() {
    return tripData[tripNumber].title;
  }

  String getDate() {
    return tripData[tripNumber].date;
  }

  String getAdress() {
    return tripData[tripNumber].adress;
  }

  String getMaxNumber() {
    return tripData[tripNumber].maxNumber;
  }

  int getTripLength() {
    return tripData.length;
  }

  void nextQuestion() {
    if (tripNumber < tripData.length - 1) {
      tripNumber++;
    }
  }
}
