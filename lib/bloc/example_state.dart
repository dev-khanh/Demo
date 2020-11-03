part of 'example_bloc.dart';
class ExampleState extends Equatable{
  final Profile profile;
  final DateTime lastUpdated;

  ExampleState({@required this.profile}) : lastUpdated = DateTime.now();

  ExampleState.init() : this(profile: Profile(name: null, age: null));

  ExampleState copyWith({Profile profile}){
    return ExampleState(profile: profile ?? this.profile);
  }

  @override
  List<Object> get props => [profile, lastUpdated];
}