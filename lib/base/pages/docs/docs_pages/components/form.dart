import 'package:flutter/material.dart';
import 'package:liquid/liquid.dart';
import 'package:liquid_website/base/base.dart';
import '../../code_highlight.dart';

class Forms extends StatelessWidget {
  final _manager =
      LFormManager(); // An effecient replacement of GlobalKey<LFormState>

  @override
  Widget build(BuildContext context) {
    return LForm(
      manager: _manager,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          LTextFormField(
            name: "email", // for serialization
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            initialValue: 'xyz@xyz.com',
            validators: [
              LRequiredValidator(),
              LEmailValidator(
                  invalidMessage: "Please enter correct email address")
            ],
          ),
          LRaisedButton.text(
            text: "Submit",
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            onPressed: () {
              // Validate will return true if the form is valid, or false if
              // the form is invalid.

              print(_manager.formState.isDirty); // print if form is dirty

              if (_manager.formState.validate()) {
                // Get Serialized Data
                final data = _manager.formState.serialize();
                print(data); // {'email': 'xyz@xyz.com'}

              }
            },
          ),
        ],
      ),
    );
  }
}

class FormPage extends StatelessWidget {
  final _title = "LForm";
  final _subtitle =
      "Create LForm with help of custom components, LTextFormField, validators and layout options.";

  final _linearcode = """

 final _manager = FormManager(); // An effecient replacement of GlobalKey<LFormState>

...


 LForm(
     manager: _manager,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         LTextFormField(
           name: "email", // for serialization
           decoration: const InputDecoration(
             hintText: 'Enter your email',
           ),
           initialValue: 'xyz@xyz.com',
           validators: [
             LRequiredValidator(),
             LEmailValidator(
                 invalidMessage: "Please enter correct email address")
           ],
         ),
         LRaisedButton.text(
           text: "Submit",
           margin: const EdgeInsets.symmetric(vertical: 16.0),
           onPressed: () {
             // Validate will return true if the form is valid, or false if
             // the form is invalid.

             print(_manager.formState.isDirty); // print if form is dirty

             if (_manager.formState.validate()) {
               // Get Serialized Data
               final data = _manager.formState.serialize();
               print(data); // {'email': 'xyz@xyz.com'}

             }
           },
         ),
       ],
     ),
   );


  """;

  final _regexCode = r"""

//Warning Validators expect the candidate is Already sanatized

//Find Purple Cow in string

final hasPurpleCow = LRegexValidator(
   regex: RegExp(r'purple[ |}{":>?<!@#$%^\&*(\*+]+cow'),
   invalidMessage: "Purple cow not found",
 );

 print(hasPurpleCow.valid("Big fat purple cow is near you")) // true
 print(hasPurpleCow.valid("humm! no cow")) // false

 // To use this validator in LFormFields extend this class

  """;

  final _combinedCode = r"""

// Implementation of LEmailValidator

// validates all common email addresses
class LCommonEmailValidator extends LRegexValidator {
  LCommonEmailValidator({
    String invalidMessage = "Invalid Email",
  }) : super(
          regex: RegExp(r"^([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6})*$"),
          invalidMessage: invalidMessage,
        );
}

// validates all uncommon email address
class LUnCommonEmailValidator extends LRegexValidator {
  LUnCommonEmailValidator({
    String invalidMessage = "Invalid Email",
  }) : super(
          regex: RegExp(r"^([a-z0-9_\.\+-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$"),
          invalidMessage: invalidMessage,
        );
}

// A combined validator that combines LUnCommonEmailValidator
// and LCommonEmailValidator and will result in true if 
// atleast one of validator result in true.
class LEmailValidator extends LCombinedValidator<String> {
  LEmailValidator({String invalidMessage = "Invalid Email"})
      : super(
          validators: [LCommonEmailValidator(), LUnCommonEmailValidator()],
          invalidMessage: invalidMessage,
          validateType: LCombinedValidateType.atLeastOneTrue, // need atleast one of the validator to be true
        );
}

  """;

  final _fieldCode = """

Padding(
   padding: const EdgeInsets.only(bottom: 8.0),
   child: LTextFormField(
     enabled: true,
     onTap: () {},
     name: "email", // for serialization
     decoration: InputDecoration(
       enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(20.0),
           borderSide: BorderSide(
             color: _theme.colors.info,
           )),
       border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(20.0),
           borderSide: BorderSide(
             color: _theme.colors.info,
           )),
       labelText: 'Email-id',
     ),

     initialValue: 'xyz@xyz.com',
     validators: [
       LRequiredValidator(),
       LEmailValidator(
           invalidMessage:
               "Please enter correct email address")
     ],
   ),
 ),
 
 Padding(
   padding: const EdgeInsets.only(bottom: 8.0),
   child: LTextFormField(
     enabled: true,
     onTap: () {},

     name: "password", // for serialization
     decoration: InputDecoration(
         enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20.0),
             borderSide: BorderSide(
               color: _theme.colors.danger.lighten(0.1),
             )),
         border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20.0),
             borderSide: BorderSide(
               color: _theme.colors.danger.lighten(0.1),
             )),
         labelText: 'Password'),

     initialValue: '******',
     validators: [
       LRequiredValidator(
           invalidMessage:
               'Password must be between 5-8 characters.'),
     ],
   ),
 ),

  """;

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
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            _title,
            style: mq.isSM || mq.isXS
                ? _theme.typographyTheme.h2
                : _theme.typographyTheme.display4,
          ),
        ),
        Text(
          _subtitle,
          style: mq.isSM || mq.isXS
              ? _theme.typographyTheme.p
              : _theme.typographyTheme.lead,
        ),
        SizedBox(height: 35.0),
        LText("\l.h4.bold{Features}\n"),
        LText("\l.bullet1.h5.bold{States}\n"
            "   \l.bullet1.bold{isEnabled} - True if field is enabled.\n"
            "   \l.bullet1.bold{isPristine} - True if the field has not been modified.\n"
            "   \l.bullet1.bold{isDirty} - True if the field has been modified.\n"
            "   \l.bullet1.bold{isValid} - True if the current value is valid.change when [validate] method is called\n"
            "   \l.bullet1.bold{isInvalid} - True if the current value is invalid, change when [validate] method is called\n"
            "   \l.bullet1.bold{isTouched} - True if the field is touched.\n"
            "   \l.bullet1.bold{isUntouched} - True if the field is touched.\n"
            "   \l.bullet1.bold{errorText} - The current validation error returned by the [LFormField.validator]\n\n"),
        LText("\l.bullet1.h5.bold{Serializer}\n"
            "   \l.bullet1.bold{serialize()} - return a serialized map of the form fields"
            " you need to provide [name] parameter to field constructor for serializing that particular field.\n"),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: LText(
            " \l.h4.bold{Form Manager}\n"
            "With \l.bold{LFormManager} we don't need to build controllers for every textFormField.",
          ),
        ),
        LBox(
          height: LBoxDimension.all(450.0),
          child: LRow(
            gutter: 10.0,
            crossAxisAlignment: CrossAxisAlignment.center,
            columns: [
              LColumn(
                lg: 6,
                xl: 6,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LForm(
                    manager: LFormManager(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        LRow(
                          gutter: 8.0,
                          useMediaQuery: false,
                          columns: [
                            LColumn.child(
                              child: LTextFormField(
                                name: "First Name", // for serialization
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'First Name'),

                                initialValue: 'First',
                                validators: [
                                  LRequiredValidator(
                                      invalidMessage: 'Fill first name field.'),
                                ],
                              ),
                            ),
                            LColumn.child(
                              child: LTextFormField(
                                name: "Last Name", // for serialization
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Last Name'),

                                initialValue: 'Last',
                                validators: [
                                  LRequiredValidator(
                                      invalidMessage: 'Fill last name field.'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: LTextFormField(
                            name: "email", // for serialization
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email-id',
                            ),

                            initialValue: 'xyz@xyz.com',
                            validators: [
                              LRequiredValidator(),
                              LEmailValidator(
                                  invalidMessage:
                                      "Please enter correct email address")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: LTextFormField(
                            name: "password", // for serialization
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password'),

                            initialValue: '******',
                            validators: [
                              LRequiredValidator(
                                  invalidMessage:
                                      'Password must be between 5-8 characters.'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LRaisedButton.text(
                            text: "Submit",
                            margin: const EdgeInsets.symmetric(vertical: 16.0),
                            onPressed: () {
                              // Validate will return true if the form is valid, or false if
                              // the form is invalid.

                              print(LFormManager()
                                  .formState
                                  .isDirty); // print if form is dirty

                              if (LFormManager().formState.validate()) {
                                // Get Serialized Data
                                final data =
                                    LFormManager().formState.serialize();
                                print(data); // {'email': 'xyz@xyz.com'}

                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              LColumn.child(
                child: codeText(context, _linearcode),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: LText(
            " \l.h4.bold{Validators}\n"
            " Most commonly used validators from email to ip packet validators and credit and debit card validators"
            "  are already included in \l.bold{LForm} validators. ",
          ),
        ),
        LText(
            "\l.bullet1.h6.bold{LAlphaNumericValidator} - It only validates the strings holding only alpha-numeric values.\n\n"
            "\l.bullet1.h6.bold{LCreditCardValidator} - It validates the credit card numbers for different credit cards.\n"
            "   \l.bullet1.bold{LVisaCardValidator}\n"
            "   \l.bullet1.bold{LMasterCardValidator}\n"
            "   \l.bullet1.bold{LAmericanCardValidator}\n"
            "   \l.bullet1.bold{LDinersCardValidator}\n"
            "   \l.bullet1.bold{LDiscoverCardValidator}\n"
            "   \l.bullet1.bold{LJCBCardValidator}\n\n"
            "\l.bullet1.h6.bold{LEmailValidator} - An \l.bold{LCombinedValidator} that validates by combining \l.bold{LCommonEmailValidator} and \l.bold{LUnCommonEmailValidator}.\n\n"
            "\l.bullet1.h6.bold{IP Address validators} - It validates ip addresses over \l.bold{LIPv4Validator} and \l.bold{LIPv6Validator}\n\n"
            "\l.bullet1.h6.bold{Pattern Validators} - There are two different type of  pattern validators.\n"
            "   \l.bullet1.bold{LSlugValidator} - checks whether the string is a slug.\n"
            "   \l.bullet1.bold{LDuplicateStringValidator} validates for whether any duplicate strings are there or not. \n\n"
            "\l.bullet1.h6.bold{LRequiredValidator} - Field is required and cannot be empty.\n\n"
            "\l.bullet1.h6.bold{LURLValidator} - Validates unified resource locator(URL) links.\n\n"),
        LText("\l.h4.bold{Regex Validators}\n"
            "\l.bullet1.h6.bold{LRegexValidator} extends \l.bold{LValidator<T>}\n"
            "It validates the data based on regex pattern.\n\n"),
        codeText(context, _regexCode),
        LText("\n\l.h4.bold{Combined Validator}\n"
            "\l.bullet1.h6.bold{LCombinedValidator} extends \l.bold{LValidator<T>}\n"
            "combine multiple validators in a single validator. \l.bold{LEmailValidator} is"
            "one the default combined validator. Below is its original implementation.\n\n"),
        codeText(context, _combinedCode),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: LText("\l.h5.bold{Validation Type}\n"
              "LCombinedValidator has the following validation types\n\n"
              "   \l.bullet1.bold{allTrue} - all validators should validate to \l.bold{true}.\n"
              "   \l.bullet1.bold{allFalse} - all validators should validate to \l.bold{false}.\n"
              "   \l.bullet1.bold{atLeastOneTrue} - atleast one validator should validate to \l.bold{true}.\n"
              "   \l.bullet1.bold{atLeastOneFalse} - atleast one validator should validate to \l.bold{false}.\n"
              "   \l.bullet1.bold{atMostOneTrue} - atmost one validator should validate to \l.bold{true}\n"
              "   \l.bullet1.bold{atMostOneFalse} - atmost one validator should validate to \l.bold{false}\n"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: LText("\l.h5.bold{LTextFormField}\n"
              "The current state of a [LFormField]. Passed to the [LFormFieldBuilder] method"
              "for use in constructing the form field's widget.\n\n"
              "   \l.bullet1.bold{isEnabled} - True if field is enabled.\n"
              "   \l.bullet1.bold{isPristine} - True if the field has not been modified.\n"
              "   \l.bullet1.bold{isDirty} - True if the field has been modified.\n"
              "   \l.bullet1.bold{isValid} - True if the current value is valid.change when [validate] method is called\n"
              "   \l.bullet1.bold{isInvalid} - True if the current value is invalid, change when [validate] method is called\n"
              "   \l.bullet1.bold{isTouched} - True if the field is touched.\n"
              "   \l.bullet1.bold{isUntouched} - True if the field is touched.\n"
              "   \l.bullet1.bold{errorText} - The current validation error returned by the [LFormField.validator]\n"),
        ),
        LBox(
          height: LBoxDimension.all(450.0),
          child: LRow(
            gutter: 10.0,
            crossAxisAlignment: CrossAxisAlignment.center,
            columns: [
              LColumn(
                  lg: 6,
                  xl: 6,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: LTextFormField(
                        enabled: true,
                        onTap: () {},
                        name: "email", // for serialization
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(
                                color: _theme.colors.info,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(
                                color: _theme.colors.info,
                              )),
                          labelText: 'Email-id',
                        ),

                        initialValue: 'xyz@xyz.com',
                        validators: [
                          LRequiredValidator(),
                          LEmailValidator(
                              invalidMessage:
                                  "Please enter correct email address")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: LTextFormField(
                        enabled: true,
                        onTap: () {},

                        name: "password", // for serialization
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: _theme.colors.danger.lighten(0.1),
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: _theme.colors.danger.lighten(0.1),
                                )),
                            labelText: 'Password'),

                        initialValue: '******',
                        validators: [
                          LRequiredValidator(
                              invalidMessage:
                                  'Password must be between 5-8 characters.'),
                        ],
                      ),
                    ),
                  ]),
              LColumn.child(
                child: codeText(context, _fieldCode),
              )
            ],
          ),
        ),
      ],
    );
  }
}
