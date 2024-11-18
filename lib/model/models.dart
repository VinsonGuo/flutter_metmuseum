import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class MuseumObjects {
  final int total;
  final List<int> objectIDs;

  MuseumObjects({required this.total, required this.objectIDs});


  factory MuseumObjects.fromJson(Map<String, dynamic> json) => _$MuseumObjectsFromJson(json);

  Map<String, dynamic> toJson() => _$MuseumObjectsToJson(this);
}

@JsonSerializable()
class MuseumObjectDetail {
  final int objectID;
  final String accessionNumber;
  final String accessionYear;
  final bool isPublicDomain;
  final String primaryImage;
  final String primaryImageSmall;
  final List<String> additionalImages;
  final String department;
  final String objectName;
  final String title;
  final String culture;
  final String period;
  final String dynasty;
  final String reign;
  final String portfolio;
  final String repository;
  final String objectURL;
  final String artistRole;
  final String artistDisplayName;
  final String artistDisplayBio;
  final String artistNationality;
  final String artistBeginDate;
  final String artistEndDate;
  final String artistGender;


  factory MuseumObjectDetail.fromJson(Map<String, dynamic> json) => _$MuseumObjectDetailFromJson(json);

  MuseumObjectDetail({required this.objectID, required this.accessionNumber, required this.accessionYear, required this.isPublicDomain, required this.primaryImage, required this.primaryImageSmall, required this.additionalImages, required this.department, required this.objectName, required this.title, required this.culture, required this.period, required this.dynasty, required this.reign, required this.portfolio, required this.repository, required this.objectURL, required this.artistRole, required this.artistDisplayName, required this.artistDisplayBio, required this.artistNationality, required this.artistBeginDate, required this.artistEndDate, required this.artistGender});

  Map<String, dynamic> toJson() => _$MuseumObjectDetailToJson(this);
}