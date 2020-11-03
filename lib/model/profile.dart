import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Profile extends Equatable{
  final String name;
  final int age;

  const Profile({@required this.name,@required this.age});

  Profile copyWith({String name, int age}) {
    return Profile(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  @override
  List<Object> get props => [name, age];

  @override
  bool get stringify => true;
}