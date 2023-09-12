// To parse this JSON data, do
//
//     final douar = douarFromJson(jsonString);

import 'dart:convert';

Douar douarFromJson(String str) => Douar.fromJson(json.decode(str));

String douarToJson(Douar data) => json.encode(data.toJson());

class Douar {
  int? currentPage;
  List<Datum>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Link>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  Douar({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  factory Douar.fromJson(Map<String, dynamic> json) => Douar(
    currentPage: json["current_page"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    firstPageUrl: json["first_page_url"],
    from: json["from"],
    lastPage: json["last_page"],
    lastPageUrl: json["last_page_url"],
    links: json["links"] == null ? [] : List<Link>.from(json["links"]!.map((x) => Link.fromJson(x))),
    nextPageUrl: json["next_page_url"],
    path: json["path"],
    perPage: json["per_page"],
    prevPageUrl: json["prev_page_url"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "first_page_url": firstPageUrl,
    "from": from,
    "last_page": lastPage,
    "last_page_url": lastPageUrl,
    "links": links == null ? [] : List<dynamic>.from(links!.map((x) => x.toJson())),
    "next_page_url": nextPageUrl,
    "path": path,
    "per_page": perPage,
    "prev_page_url": prevPageUrl,
    "to": to,
    "total": total,
  };
}

class Datum {
  int? id;
  String? x;
  String? y;
  String? name;
  dynamic alive;
  dynamic injured;
  dynamic deceased;
  dynamic inhabitant;
  dynamic nameAr;
  dynamic communeId;
  dynamic regionId;
  dynamic region;
  dynamic commune;

  Datum({
    this.id,
    this.x,
    this.y,
    this.name,
    this.alive,
    this.injured,
    this.deceased,
    this.inhabitant,
    this.nameAr,
    this.communeId,
    this.regionId,
    this.region,
    this.commune,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    x: json["x"],
    y: json["y"],
    name: json["name"],
    alive: json["alive"],
    injured: json["injured"],
    deceased: json["deceased"],
    inhabitant: json["inhabitant"],
    nameAr: json["name_ar"],
    communeId: json["commune_id"],
    regionId: json["region_id"],
    region: json["region"],
    commune: json["commune"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "x": x,
    "y": y,
    "name": name,
    "alive": alive,
    "injured": injured,
    "deceased": deceased,
    "inhabitant": inhabitant,
    "name_ar": nameAr,
    "commune_id": communeId,
    "region_id": regionId,
    "region": region,
    "commune": commune,
  };
}

class Link {
  String? url;
  String? label;
  bool? active;

  Link({
    this.url,
    this.label,
    this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"],
    label: json["label"],
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "label": label,
    "active": active,
  };
}
