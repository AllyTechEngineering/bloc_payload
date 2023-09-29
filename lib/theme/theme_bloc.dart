import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_event.dart';
part 'theme_state.dart';

/*
Bloc = Takes a Stream of Events as input and transforms them into a Stream of States as output.
ThemeEvent = sealed class ThemeEvent extends Equatable
ThemeBloc = package:bloc_payload/theme/theme_bloc.dart ThemeBloc ThemeBloc()
Super = Takes a Stream of Events as input and transforms them into a Stream of States as output.
ThemeState = (new) ThemeState ThemeState.initial()
on = Register event handler for an event of type E. There should only ever be one event handler per event type E. ChangeThemeEvent = E not sure?
emit = Use emit when you want a new state for your bloc. Use add when you want your bloc to handle a new event.
event handlers are in the anyname_bloc.dart
 */
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    /// start of event handler
    on<ChangeThemeEvent>((event, emit) {
      /// start of if else
      if (event.randInt % 2 == 0) {
        emit(state.copyWith(appTheme: AppTheme.light));
      } else {
        emit(state.copyWith(appTheme: AppTheme.dark));
      }
      /// end of if else
    }); /// end of event handler
  }
} //class ThemeBloc
