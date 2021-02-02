import 'dart:io';

import 'package:flutter/foundation.dart';

class PlaceLocation {
  final double latitde;
  final double longitude;
  final String address;

  const PlaceLocation({
    @required this.latitde,
    @required this.longitude,
    this.address,
  });
}

class Place {
  final String id;
  final String title;
  final PlaceLocation location;
  final File image;

  Place({
    @required this.id,
    @required this.title,
    @required this.location,
    @required this.image,
  });
}
