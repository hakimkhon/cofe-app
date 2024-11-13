// class FilialsModel {
//   final String map;
//   final String sityName;
//   final String workingTime;

//   FilialsModel({
//     required this.map,
//     required this.sityName,
//     required this.workingTime,
//   });
// }


class FilialsModelNew {
    List<Branch>? branches;
    int? count;

    FilialsModelNew({
        this.branches,
        this.count,
    });

    factory FilialsModelNew.fromJson(Map<String, dynamic> json) => FilialsModelNew(
        branches: List<Branch>.from(json["branches"].map((x) => Branch.fromJson(x))),
        count: json["count"],
    );

}

class Branch {
    String? id;
    String? name;
    String? phoneNumber;
    String? openingHours;
    Location? location;

    Branch({
        this.id,
        this.name,
        this.phoneNumber,
        this.openingHours,
        this.location,
    });

    factory Branch.fromJson(Map<String, dynamic> json) => Branch(
        id: json["id"],
        name: json["name"],
        phoneNumber: json["phone_number"],
        openingHours: json["opening_hours"],
        location: Location.fromJson(json["location"]),
    );

}

class Location {
    double? latitude;
    double? longitude;
    String? address;

    Location({
        this.latitude,
        this.longitude,
        this.address,
    });

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        address: json["address"],
    );
}
