import 'package:flutter/material.dart';

class DataSearch implements SearchDelegate {
  @override
  String query;

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith(
      primaryColor: Colors.white,
      primaryIconTheme: theme.primaryIconTheme.copyWith(color: Colors.grey),
      primaryColorBrightness: Brightness.light,
      primaryTextTheme: theme.textTheme,
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    // Acciones de nuestro Appbar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          print('CLICK!!!');
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icono a la izquierda del AppBar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        print('Leading Icon Press');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Crea los resultados que vamos a mostrar
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // son las sugerencias que aparecen que la persona escribe
    return Container();
  }

  @override
  void close(BuildContext context, result) {
    // TODO: implement close
  }

  @override
  //
  TextInputType get keyboardType => TextInputType.numberWithOptions();

  @override
  //
  String get searchFieldLabel => 'Nombre pelicula';

  @override
  void showResults(BuildContext context) {
    // TODO: implement showResults
  }

  @override
  void showSuggestions(BuildContext context) {
    // TODO: implement showSuggestions
  }

  @override
  //
  TextInputAction get textInputAction => TextInputAction.done;

  @override
  // TODO: implement transitionAnimation
  Animation<double> get transitionAnimation => null;
}
