part of 'theme_bloc.dart';

/*
@override just points out that the function is also defined in an ancestor class, but is being redefined to do something else in the current class. It's also used to annotate the implementation of an abstract method. It is optional to use but recommended as it improves readability.
 */
sealed class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
} //class ThemeEvent

class ChangeThemeEvent extends ThemeEvent {
  final int randInt;
  ChangeThemeEvent({required this.randInt});

  // @override
  // String toString() => 'ChangeThemeEvent{randInt=$randInt}';

  // @override
  // List<Object> get props => [randInt]; //checks for state change randInt object

} //class ThemeEvent

