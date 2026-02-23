import 'package:blabla/Term2/BlaBlaBus/lib/dummy_data/dummy_data.dart';
import 'package:blabla/Term2/BlaBlaBus/lib/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///This Customized FormField has varience that each of them take different input type.
///
class RideFormField extends StatelessWidget {
  final String hint;
  final Icon? icon;
  final TextInputType keyboardType;
  final bool readOnly;
  final VoidCallback? onTap;
  final Function(String)? onChanged;

  const RideFormField._({
    required this.hint,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.icon,
    this.onTap,
    this.readOnly = false,
  });

  factory RideFormField.location({
    required String hint,
  }) {
    return RideFormField._(
      hint: hint,
      icon: const Icon(Icons.location_on),
    );
  }

  factory RideFormField.seat({required String hint}) {
    return RideFormField._(
      hint: hint,
      keyboardType: TextInputType.name,
      icon: const Icon(Icons.event_seat),
    );
  }

  factory RideFormField.date({required String hint, required VoidCallback onTap}) {
    return RideFormField._(
      hint: hint,
      icon: Icon(Icons.calendar_month),
      readOnly: true,
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      onTap: onTap,
      onChanged: onChanged,
      readOnly: readOnly,
      keyboardType: keyboardType,
      decoration: InputDecoration(hintText: hint, prefixIcon: icon),
    );
  }
}
