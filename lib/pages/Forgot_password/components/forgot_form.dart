import 'package:ecommerce/utils/constants.dart';
import 'package:ecommerce/utils/size_config.dart';
import 'package:ecommerce/widgets/custom_surffixIcon.dart';
import 'package:ecommerce/widgets/default_button_F.dart';
import 'package:ecommerce/widgets/form_error.dart';
import 'package:ecommerce/widgets/no_account_text.dart';
import 'package:flutter/material.dart';

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({ Key? key }) : super(key: key);

  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(  
        children: [
          TextFormField( 
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue)=>email = newValue,
            onChanged: (value){ 
              if (value.isEmpty && errors.contains(kEmailNullError)){
                setState(() {
                  errors.remove(kEmailNullError);

                });
              } else if (emailValidatorRegExp.hasMatch(value) && errors.contains(kEmailNullError)){
                setState(() {
                  errors.remove(kEmailNullError);
                });
              }
              return null;
            },
             validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
              decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
             
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          
          
          ),
           SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          DefaultButtonF(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          NoAccountText(),
        ],
      ),
      
    );
  }
}
