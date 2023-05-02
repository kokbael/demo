import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget renderTextFormField({
  @required String? label,
  @required FormFieldSetter? onSaved,
  @required FormFieldValidator? validator,
  @required TextEditingController? controller,
  @required int? minLines,
  @required FocusNode? focusNode,
  @required TextInputAction? textInputAction,
  @required bool? enabled,
  @required hintText,
  @required int? maxLines,
  @required onEditingComplete,
  @required keyboardType,
  @required bool? obscureText,
  @required bool? readOnly,
  @required onTap,
}) {
  // assert(onSaved != null);
  // assert(validator != null);
  assert(minLines != 0);
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              label!,
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 10),

      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 55,
              // margin: EdgeInsets.all(4.0),
              // padding: EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                // color: Colors.grey[200],
                border: Border.all(
                  color: Colors.grey,
                ),

                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Positioned(
            // left: 10,
            child: Container(
              child: TextFormField(
                readOnly: readOnly ?? false,
                enableInteractiveSelection: true,
                onTap: onTap,
                onEditingComplete: onEditingComplete,
                enabled: enabled,
                focusNode: focusNode,
                controller: controller,
                onSaved: onSaved,
                validator: validator,
                minLines: minLines,
                textInputAction: textInputAction,
                // maxLines: maxLines,
                autofocus: false,
                keyboardType: keyboardType,
                obscureText: obscureText ?? false,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(35, 18, 0, 20),
                    hintStyle: TextStyle(fontSize: 14),
                    floatingLabelAlignment: FloatingLabelAlignment.center
                    // alignLabelWithHint: true,
                    ),
              ),
            ),
          ),
        ],
      ),
      Container(height: 16.0),

      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
      //   child: Container(
      //     decoration: BoxDecoration(
      //       // color: Colors.grey[200],
      //       border: Border.all(color: Colors.grey),
      //       borderRadius: BorderRadius.circular(12),
      //     ),
      //     child: TextFormField(
      //       onEditingComplete: onEditingComplete,
      //       enabled: enabled,
      //       focusNode: focusNode,
      //       controller: controller,
      //       onSaved: onSaved,
      //       validator: validator,
      //       minLines: minLines,
      //       textInputAction: textInputAction,
      //       // maxLines: maxLines,
      //       autofocus: false,
      //       keyboardType: keyboardType,
      //       obscureText: obscureText ?? false,
      //       decoration: InputDecoration(
      //         // helperText: ' ',
      //         border: InputBorder.none,
      //         hintText: hintText,
      //         isDense: true,
      //         contentPadding: EdgeInsets.all(20),
      //         // hintStyle: TextStyle(fontSize: 12),
      //         // alignLabelWithHint: true,
      //       ),
      //     ),
      //   ),
      // ),
    ],
  );
}
