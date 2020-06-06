import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_ui/liquid_ui.dart';

import '../../base.dart';
import '../../nav/navbar.dart';
import 'bloc/docs_bloc.dart';
import 'side_menu.dart';

class DocsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: NavBar(),
      ),
      drawer: mq.isXS || mq.isSM
          ? HomeDrawer(
              docsMenu: DocSideMenu(),
            )
          : null,
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
              child: DocSideMenu(),
            ),
          ),
          LColumn.child(
            child: BlocBuilder<DocsBloc, DocsState>(
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
            ),
          ),
        ],
      ),
    );
  }
}
