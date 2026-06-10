import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forum_app/features/forum/bloc/forum_event.dart';
import 'package:forum_app/features/forum/bloc/forum_state.dart';
import 'package:forum_app/features/forum/repository/forum_repository.dart';

class ForumBloc extends Bloc<ForumEvent, ForumState> {
  final ForumRepository repository;

  ForumBloc(this.repository) : super(ForumInitial()) {
    on<AddTopic>((event, emit) async {
      emit((TopicAdded()));

      try {
        await repository.createTopic(event.title);

        emit(TopicAdded());
      } catch (e) {
        emit(ForumError(e.toString()));
      }
    });
  }
}
