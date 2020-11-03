import 'package:bloc_example_demo/model/profile.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'example_event.dart';
part 'example_state.dart';
class ExamoleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExamoleBloc() : super(ExampleState.init());
  @override
  Stream<ExampleState> mapEventToState(ExampleEvent event) async* {
    if(event is ProfileSubmit){
      yield state.copyWith(profile: state.profile.copyWith(name: event.name));
    }
  }
}