import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid/liquid.dart';

import '../../nav/navbar.dart';
import 'bloc/docs_bloc.dart';
import 'docs_pages/env.dart';

class DocsPage extends StatefulWidget {
  final _menu = docsMenus;
  @override
  _DocsPageState createState() => _DocsPageState();
}

class _DocsPageState extends State<DocsPage> {
  String _code;

  @override
  void initState() {
    super.initState();

    _openSection(intro_page);
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: NavBar(),
      ),
      body: LRow(
        columns: [
          LColumn.child(
            visibility: LBoxVisibility.belowMD(false),
            md: 3,
            lg: 3,
            xl: 2,
            child: LBox(
              height: LBoxDimension.all(mq.size.height),
              decoration: LBoxDecoration.aboveSM(
                BoxDecoration(
                  border: Border(
                    right: BorderSide(color: Colors.black12, width: 1.0),
                  ),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: <Widget>[
                    for (final menu in widget._menu.entries)
                      buildMenu(menu.key, menu.value)
                  ],
                ),
              ),
            ),
          ),
          LColumn.child(
              child: BlocConsumer<DocsBloc, DocsState>(
            listener: (context, state) {
              if (state is DocsLoaded) {
                setState(() {
                  _code = state.docCode;
                });
              }
            },
            builder: (context, state) {
              if (state is DocsInitial || state is DocsLoading) {
                return Center(
                  child: Text("loading"),
                );
              }
              if (state is DocsLoaded) {
                return state.docContent;
              }

              if (state is DocsError) {
                return Center(
                  child: Text(state.errorMessage),
                );
              }

              return Container();
            },
          )),
        ],
      ),
    );
  }

  ExpansionTile buildMenu(String menuName, Map<String, String> menuMap) {
    return ExpansionTile(
      initiallyExpanded: true,
      title: Text(menuName),
      children: <Widget>[
        LListGroup(
          flush: true,
          dense: true,
          children: [
            for (final menu in menuMap.entries)
              LListItem(
                title: Text(menu.key),
                selected: _code == menu.value,
                onTap: () => _openSection(menu.value),
              ),
          ],
        ),
      ],
    );
  }

  _openSection(String docCode) {
    context.bloc<DocsBloc>().add(LoadDocFor(docCode));
  }
}
