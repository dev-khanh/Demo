part of 'example_bloc.dart';
abstract class ExampleEvent extends Equatable{
  const ExampleEvent();
  @override
  List<Object> get props => [];
  @override
  bool get stringify => true;
}
class ProfileSubmit extends ExampleEvent{
  final String name;
  const ProfileSubmit(this.name);
  @override
  List<Object> get props => [name];
}