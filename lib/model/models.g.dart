// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MuseumObjects _$MuseumObjectsFromJson(Map<String, dynamic> json) =>
    MuseumObjects(
      total: (json['total'] as num).toInt(),
      objectIDs: (json['objectIDs'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$MuseumObjectsToJson(MuseumObjects instance) =>
    <String, dynamic>{
      'total': instance.total,
      'objectIDs': instance.objectIDs,
    };

MuseumObjectDetail _$MuseumObjectDetailFromJson(Map<String, dynamic> json) =>
    MuseumObjectDetail(
      objectID: (json['objectID'] as num).toInt(),
      accessionNumber: json['accessionNumber'] as String,
      accessionYear: json['accessionYear'] as String,
      isPublicDomain: json['isPublicDomain'] as bool,
      primaryImage: json['primaryImage'] as String,
      primaryImageSmall: json['primaryImageSmall'] as String,
      additionalImages: (json['additionalImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      department: json['department'] as String,
      objectName: json['objectName'] as String,
      title: json['title'] as String,
      culture: json['culture'] as String,
      period: json['period'] as String,
      dynasty: json['dynasty'] as String,
      reign: json['reign'] as String,
      portfolio: json['portfolio'] as String,
      repository: json['repository'] as String,
      objectURL: json['objectURL'] as String,
      artistRole: json['artistRole'] as String,
      artistDisplayName: json['artistDisplayName'] as String,
      artistDisplayBio: json['artistDisplayBio'] as String,
      artistNationality: json['artistNationality'] as String,
      artistBeginDate: json['artistBeginDate'] as String,
      artistEndDate: json['artistEndDate'] as String,
      artistGender: json['artistGender'] as String,
    );

Map<String, dynamic> _$MuseumObjectDetailToJson(MuseumObjectDetail instance) =>
    <String, dynamic>{
      'objectID': instance.objectID,
      'accessionNumber': instance.accessionNumber,
      'accessionYear': instance.accessionYear,
      'isPublicDomain': instance.isPublicDomain,
      'primaryImage': instance.primaryImage,
      'primaryImageSmall': instance.primaryImageSmall,
      'additionalImages': instance.additionalImages,
      'department': instance.department,
      'objectName': instance.objectName,
      'title': instance.title,
      'culture': instance.culture,
      'period': instance.period,
      'dynasty': instance.dynasty,
      'reign': instance.reign,
      'portfolio': instance.portfolio,
      'repository': instance.repository,
      'objectURL': instance.objectURL,
      'artistRole': instance.artistRole,
      'artistDisplayName': instance.artistDisplayName,
      'artistDisplayBio': instance.artistDisplayBio,
      'artistNationality': instance.artistNationality,
      'artistBeginDate': instance.artistBeginDate,
      'artistEndDate': instance.artistEndDate,
      'artistGender': instance.artistGender,
    };
