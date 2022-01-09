import 'package:flutter/material.dart';

class KTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String labelText;
  final bool isPassword;
  final bool isDisabled;
  final bool isRequired;
  const KTextField({
    Key? key,
    this.controller,
    required this.labelText,
    this.isPassword = false,
    this.isDisabled = false,
    this.isRequired = false,
  }) : super(key: key);

  @override
  State<KTextField> createState() => _KTextFieldState();
}

class _KTextFieldState extends State<KTextField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                widget.labelText,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Colors.grey.shade600,
                ),
              ),
              widget.isRequired
                  ? const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      child: Text(
                        '*',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.red,
                        ),
                      ),
                    )
                  : Container(width: 0),
            ],
          ),
          const SizedBox(height: 8),
          TextField(
            controller: widget.controller,
            textInputAction: TextInputAction.next,
            obscureText: widget.isPassword && isVisible,
            style: TextStyle(
              color: widget.isDisabled == true
                  ? Colors.grey
                  : Colors.grey.shade900,
            ),
            decoration: InputDecoration(
              enabled: widget.isDisabled == true ? false : true,
              fillColor: widget.isDisabled == true
                  ? Colors.grey.shade200
                  : Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              suffixIcon: widget.isPassword
                  ? IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      icon: Icon(
                        isVisible ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey.shade400,
                      ),
                    )
                  : Container(
                      width: 0,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
