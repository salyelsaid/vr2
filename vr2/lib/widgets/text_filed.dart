import 'package:flutter/material.dart';

Widget customTextField(
    {String hintText,
    // IconData icon,
    int maxlength,
    int maxlines = 1,
    bool readOnly = false,
    IconData suffixicon,
    bool obscure,
    TextEditingController controller,
    Function onSaved,
    Function validator,
    Function show,
    Function hide,
    String labelText,
    TextInputType keyboardType,
    Function onChanged}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      readOnly: readOnly,
      validator: validator,
      maxLines: maxlines,
      maxLength: maxlength,
      onSaved: onSaved,
      onChanged: onChanged,
      controller: controller,
      obscureText: obscure,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        counterText: "",
        fillColor: Colors.white,
        filled: true,
        contentPadding: const EdgeInsets.all(4),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.grey, width: 0.5),
        ),
        labelText: labelText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          // borderSide: BorderSide(
          //   // color: kPrimaryColor,
          //   width: 2,
          // )
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        prefixIcon: GestureDetector(
            onTap: show, onDoubleTap: hide, child: Icon(suffixicon)),
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
        // hintText: hintText,
      ),
    ),
  );
}
