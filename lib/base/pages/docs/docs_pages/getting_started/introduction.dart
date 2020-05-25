import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid/liquid.dart';

import '../../../../../core/core.dart';
import '../../bloc/docs_bloc.dart';
import '../../code_highlight.dart';
import '../env.dart';

class CounterBlock extends StatelessWidget {
  final int number;

  const CounterBlock({Key key, this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(10.0),
      alignment: Alignment.center,
      constraints: BoxConstraints(minWidth: double.infinity, minHeight: 60.0),
      decoration: BoxDecoration(
          color: Color(0xFF0062e7), borderRadius: BorderRadius.circular(6.0)),
      child: Text(
        number.toString(),
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

class Introduction extends StatefulWidget {
  final String _title = "Introduction";
  final String _subtitle =
      "Liquid comes a powerful 12 column grid system, a powerful text processor, "
      " extensive prebuilt components and dozens of utilities.";

  final String _formEg = """
LFormManager manager = LFormManager();

void onFormSubmit() {
  if (manager.formState.validate()) {
    final state = manager.formState;
    final serializedData = state.serialize();
    showAlert(
      context,
      content:
          "\l.bold{Serialized Form Data}\\n \${serializedData.toString()}\\n\\n"
          "\l.bold{Form State}\\n"
          "\l.bullet{is Dirty} : \${state.isDirty}\\n"
          "\l.bullet{is Pristine} : \${state.isPristine}\\n"
          "\l.bullet{is Submitted} : \${state.isSubmitted}\\n"
          "\l.bullet{is Valid} : \${state.isValid}\\n"
          "\l.bullet{is Invalid} : \${state.isInvalid}\\n",
    );
  }
}

//...
LForm(
  manager: manager,
  onSubmit: onFormSubmit,
  child: Column(
    children: [
      LTextFormField(
        name: "fullName",
        validators: [
          LRequiredValidator(),
        ],
      ),
      LTextFormField(
        name: "email",
        validators: [
          LRequiredValidator(),
          LEmailValidator(),
        ],
      ),
      LFlatButton.text(
        text: "Submit",
        onPressed: () => manager.formState.submit(),
      ),
    ],
  ),
);
  """;

  final _richText = """
RichText(
  text: TextSpan(
    text: "The quick",
    children: [
      TextSpan(
        text: " brown fox ",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xFFF2994A),
        ),
      ),
      TextSpan(
        text: "jumps over the lazy dog",
      ),
    ],
    style: TextStyle(color: Colors.black),
  ),
),
""";

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  List<LColumn> cols = [
    for (int i = 0; i < 4; i++)
      LColumn.child(child: CounterBlock(number: i + 1)),
  ];

  LFormManager manager = LFormManager();

  void addColum() {
    final colLen = cols.length;
    setState(() {
      cols.add(
        LColumn.child(
          child: CounterBlock(number: colLen + 1),
        ),
      );
    });
  }

  void removeColumn() {
    setState(() {
      cols.removeLast();
    });
    print(cols.length);
  }

  String getColContent() {
    final number = cols.length;

    final _first = """
LRow(
  columns: [
""";

    final _mid = [
      for (int i = 0; i < number; i++)
        "   LColumn.child(\n"
            "      child: Container(\n"
            "          child: Text(\"${i + 1}\"),\n"
            "      )\n"
            "   ),"
    ];

    final _last = """
  ]
);
  """;

    return _first + _mid.join("\n") + _last;
  }

  @override
  Widget build(BuildContext context) {
    final _theme = LiquidTheme.of(context);
    final mq = MediaQuery.of(context);

    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: mq.isSM || mq.isXS ? 15.0 : 35.0,
        vertical: 16.0,
      ),
      children: <Widget>[
        buildTitle(mq, _theme),
        buildSubtitle(mq, _theme),
        SizedBox(height: 35.0),
        buildInteractiveColumn(context),
        buildForms(context),
        buildButtons(context),
        buildltext(context),
        Divider(),
        LFlatButton.text(
          text: "Continue to Quick Start",
          onPressed: () {
            BlocProvider.of<DocsBloc>(context).add(
              LoadDocFor(getting_started_page, "Getting Started"),
            );
          },
        ),
      ],
    );
  }

  Column buildltext(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        LText(
            "\n\l.h4{Style Text with CSS like } \l.h4.color(hex=#0062e7){Style Classes}\n"
            "\l.lead{Liquid comes with a powerful text processor to easily style your text just like in CSS}"),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          child: LRow(
            axis: LRowAxis.belowLG(Axis.vertical),
            columns: [
              LColumn(
                children: [
                  LText("\l.lead{Styling Text in Flutter}\n\n"),
                  RichText(
                    text: TextSpan(
                      text: "The quick",
                      children: [
                        TextSpan(
                          text: " brown fox ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF2994A),
                          ),
                        ),
                        TextSpan(
                          text: "jumps over the lazy dog.",
                        ),
                      ],
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  codeText(context, widget._richText),
                ],
              ),
              LColumn(
                children: [
                  LText(
                      "\l.lead{Styling Text with Liquid's} \l.lead.bold{LText}\n\n"),
                  LText(
                    "\l.capitalize{The quick brown fox jumps over the lazy dog}.",
                  ),
                  codeText(context, """
LText(
"\\l.capitalize{The quick brown fox jumps over the lazy dog}",
),            
                    """),
                  LText(
                    "The quick \l.italic.underline{brown fox} jumps over the \l.bold{lazy} dog.",
                    textAlign: TextAlign.center,
                  ),
                  codeText(context, """
LText(
"The quick \\l.italic.underline{brown fox} jumps over the \l.bold{lazy} dog.",
),            
                    """),
                  LText(
                    "The quick \l.bold.color(hex=#F2994A){brown fox} jumps over the lazy dog.",
                  ),
                  codeText(context, """
LText(
"The quick \\l.bold.color(hex=#F2994A){brown fox} jumps over the lazy dog.",
),            
                    """),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column buildButtons(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        LText(
          "\n\l.h4{Easy To } \l.h4.color(hex=#0062e7){Learn}\n"
          "\l.lead{Liquid is highly inspired by CSS frameworks like}"
          " \l.lead.color(hex=#7952b3){Bootstrap} \l.lead{and} \l.lead.color(hex=#01d1b2){Bulma}.",
        ),
        Container(
            margin: EdgeInsets.only(top: 15.0),
            child: LRow(
              axis: LRowAxis.belowLG(Axis.vertical),
              columns: [
                LColumn(
                  children: [
                    codeText(
                      context,
                      """
LFlatButton.text(
text: "Button",
onPressed:(){}
)
              """,
                      fontSize: 12.0,
                    ),
                    LFlatButton.text(text: "Button", onPressed: () {}),
                  ],
                ),
                LColumn(
                  children: [
                    codeText(
                      context,
                      """
LFlatButton.text(
text: "Button",
onPressed:(){}
type: LElementType.success,
)
              """,
                      fontSize: 12.0,
                    ),
                    LFlatButton.text(
                      text: "Button",
                      onPressed: () {},
                      type: LElementType.success,
                    ),
                  ],
                ),
                LColumn(
                  children: [
                    codeText(
                      context,
                      """
LFlatButton.text(
text: "Button",
onPressed:(){}
type: LElementType.success,
size: LElementSize.large,
)
              """,
                      fontSize: 12.0,
                      scrollable: false,
                    ),
                    LFlatButton.text(
                      text: "Button",
                      onPressed: () {},
                      type: LElementType.success,
                      size: LElementSize.large,
                    ),
                  ],
                ),
                LColumn(
                  flexible: false,
                  children: [
                    codeText(
                      context,
                      """
LFlatButton(
child: LSpinner(thickness: 1.0),
onPressed: null,
size: LElementSize.large,
),
              """,
                      fontSize: 12.0,
                      scrollable: false,
                    ),
                    LFlatButton(
                      child: LSpinner(thickness: 1.0),
                      onPressed: null,
                      size: LElementSize.large,
                    ),
                  ],
                ),
              ],
            ))
      ],
    );
  }

  Column buildForms(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        LText(
          "\l.h4{Powerful Forms}\n"
          "\l.lead{Liquid Form have all the HTML form features, easy validation, serialization,\n"
          "field access, field states such as isTouched, isDirty, etc.}",
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          constraints: BoxConstraints(maxHeight: 550.0),
          child: LRow(
            axis: LRowAxis.belowLG(Axis.vertical),
            columns: [
              LColumn.child(
                child: codeText(context, widget._formEg),
              ),
              LColumn.child(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: LForm(
                    manager: manager,
                    onSubmit: () {
                      if (manager.formState.validate()) {
                        final state = manager.formState;
                        final serializedData = state.serialize();

                        showAlert(
                          context,
                          content:
                              "\l.bold{Serialized Form Data}\n ${serializedData.toString()}\n\n"
                              "\l.bold{Form State}\n"
                              "\l.bullet{is Dirty} : ${state.isDirty}\n"
                              "\l.bullet{is Pristine} : ${state.isPristine}\n"
                              "\l.bullet{is Submitted} : ${state.isSubmitted}\n"
                              "\l.bullet{is Valid} : ${state.isValid}\n"
                              "\l.bullet{is Invalid} : ${state.isInvalid}\n",
                        );
                      }
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LTextFormField(
                            name: "fullName",
                            decoration: InputDecoration(
                              border: OutlineInputBorder(gapPadding: 0),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.0),
                              labelText: "Full Name",
                            ),
                            validators: [
                              LRequiredValidator(),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LTextFormField(
                            name: "email",
                            decoration: InputDecoration(
                              border: OutlineInputBorder(gapPadding: 0),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.0),
                              labelText: "Email",
                            ),
                            validators: [
                              LRequiredValidator(),
                              LEmailValidator(),
                            ],
                          ),
                        ),
                        LFlatButton.text(
                          text: "Submit",
                          onPressed: () => manager.formState.submit(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column buildInteractiveColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        LText(
          "\l.h4{A} \l.h4.color(hex=#0062e7){Simple Yet Powerful} \l.h4{Grid System}\n\l.lead{Add Column they will resize themeselves}",
        ),
        LBox(
          visibility: LBoxVisibility.all(false).copyWith(xs: true),
          margin: LBoxEdgeInsets.all(EdgeInsets.symmetric(vertical: 10.0)),
          child: LAlert(
            heading: LAlertHeading(
              text: "Looks Better In Desktop",
            ),
            text:
                "Liquid's LRow becomes vertical in XS breakpoint. so come back to it on device"
                " with larger screen.\n"
                "\l.bold{NOTE}: You can change this behaviour using \l.bold{axis} property of \l.bold{LRow}",
          ),
        ),
        LRow(
          columns: cols,
        ),
        LRow(
          axis: LRowAxis.belowLG(Axis.vertical),
          columns: [
            LColumn.child(
              child: LRow(
                columns: [
                  LColumn.child(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    child: LFlatButton.icon(
                      icon: Icon(Icons.add),
                      label: Text("Add Column"),
                      onPressed: cols.length < 12 ? addColum : null,
                    ),
                  ),
                  LColumn.child(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    child: LFlatButton.icon(
                      icon: Icon(Icons.remove),
                      label: Text("Remove Column"),
                      type: LElementType.danger,
                      onPressed: cols.length >= 2 ? removeColumn : null,
                    ),
                  ),
                ],
              ),
            ),
            LColumn.child(
              child: Container(
                constraints: BoxConstraints(maxHeight: 550.0, minHeight: 300.0),
                child: codeText(
                  context,
                  getColContent(),
                  fontSize: 12.0,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Padding buildTitle(MediaQueryData mq, LiquidThemeData _theme) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        widget._title,
        style: mq.isSM || mq.isXS
            ? _theme.typographyTheme.h2
            : _theme.typographyTheme.display4,
      ),
    );
  }

  Text buildSubtitle(MediaQueryData mq, LiquidThemeData _theme) {
    return Text(
      widget._subtitle,
      style: mq.isSM || mq.isXS
          ? _theme.typographyTheme.p
          : _theme.typographyTheme.lead,
    );
  }
}
