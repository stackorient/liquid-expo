import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid/liquid.dart';

import 'bloc/docs_bloc.dart';
import 'docs_pages/env.dart';

class DocSideMenu extends StatelessWidget {
  final _menu = docsMenus;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: <Widget>[
          for (final menu in _menu.entries) buildMenu(menu.key, menu.value)
        ],
      ),
    );
  }

  Widget buildMenu(String menuName, Map<String, String> menuMap) {
    return BlocBuilder<DocsBloc, DocsState>(
      builder: (context, state) {
        if (state is DocsLoaded) {
          return ExpansionTile(
            initiallyExpanded: menuName == state.docMenu,
            title: Text(menuName),
            children: <Widget>[
              LListGroup(
                flush: true,
                dense: true,
                radius: 0.0,
                children: [
                  for (final menu in menuMap.entries)
                    LListItem(
                      title: Text(menu.key),
                      selected: state.docCode == menu.value,
                      onTap: () => _openSection(context, menu.value, menuName),
                    ),
                ],
              ),
            ],
          );
        }

        return Center(child: LSpinner());
      },
    );
  }

  _openSection(BuildContext context, String docCode, String docMenu) {
    BlocProvider.of<DocsBloc>(context).add(LoadDocFor(docCode, docMenu));
    if (Scaffold.of(context).isDrawerOpen) Navigator.pop(context);
  }
}
