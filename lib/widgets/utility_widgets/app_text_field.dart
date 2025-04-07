import 'dart:io';
import 'package:credpal_assessment/domain/constants/app_colors.dart';
import 'package:credpal_assessment/domain/constants/app_constants.dart';
import 'package:credpal_assessment/utils/textfeild_formatter/amount_formatter.dart';
import 'package:credpal_assessment/widgets/utility_widgets/keyboard_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextfield extends StatefulWidget {
  const AppTextfield({
    super.key,
    this.focusNode,
    this.outerTitle,
    this.hintText,
    this.initialValue,
    this.controller,
    this.obscureText = false,
    this.suffixOuterTitle,
    this.onTapSuffixOuterTitle,
    this.validator,
    this.onChanged,
    this.onEditingComplete,
    this.inputType,
    this.textInputAction,
    this.suffixIcon,
    this.prefixIcon,
    this.errorText,
    this.enabled,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.hasInputFormat = false,
    this.backgroundColor,
    this.borderRadius,
    this.borderColor,
    this.showOuterTile = false,
    this.horizontalPadding,
    this.verticalPadding,
    this.expand = false,
    this.readOnly = false,
    this.height,
    this.width,
    this.contentPadding,
    this.inputFormatter,
    this.keyboardUpArrowAction,
    this.keyboardDownArrowAction,
    this.keyboardDoneAction,
    this.onTap,
    this.hintStyle,
    this.style,
    this.textFieldIsRequired = false,
  });

  final FocusNode? focusNode;
  final String? outerTitle;
  final String? suffixOuterTitle;
  final void Function()? onTapSuffixOuterTitle;
  final String? hintText;
  final String? initialValue;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final VoidCallback? onEditingComplete;
  final TextInputType? inputType;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final String? errorText;
  final bool? enabled;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final Color? backgroundColor;
  final bool hasInputFormat;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? borderRadius;
  final double? height;
  final double? width;
  final EdgeInsets? contentPadding;
  final Color? borderColor;
  final bool showOuterTile;
  final bool expand;
  final bool readOnly;
  final List<TextInputFormatter>? inputFormatter;
  final bool textFieldIsRequired;
  final VoidCallback? keyboardDownArrowAction;
  final VoidCallback? keyboardUpArrowAction;
  final VoidCallback? keyboardDoneAction;
  final VoidCallback? onTap;

  @override
  State<AppTextfield> createState() => _AppTextfieldState();
}

class _AppTextfieldState extends State<AppTextfield> {
  late OutlineInputBorder inputBorder = const OutlineInputBorder();
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    if (widget.focusNode != null) {
      focusNode = widget.focusNode!;
    } else {
      focusNode = FocusNode();
    }

    focusNode.addListener(
      () {
        if (focusNode.hasFocus) {
          if (Platform.isIOS) {
            KeyboardOverlay.showOverlay(
              context,
              upButtonPressed: widget.keyboardUpArrowAction,
              downButtonPressed: widget.keyboardDownArrowAction,
              onDonePress: widget.keyboardDoneAction,
            );
          }
        } else {
          if (Platform.isIOS) {
            KeyboardOverlay.removeOverlay();
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius ?? 20.ar),
      borderSide: BorderSide(
        color: widget.borderColor ?? AppColors.textFieldGrey,
      ),
    );
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: widget.verticalPadding ?? 8.ah,
        horizontal: widget.horizontalPadding ?? 16.aw,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.showOuterTile &&
              widget.outerTitle != null &&
              widget.outerTitle!.isNotEmpty) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    widget.outerTitle!,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                ),
                widget.onTapSuffixOuterTitle != null
                    ? TextButton(
                        onPressed: widget.onTapSuffixOuterTitle,
                        child: Text(widget.suffixOuterTitle ?? ''),
                      )
                    : Container()
              ],
            ),
            SizedBox(height: 12.ah),
          ],
          SizedBox(
            height: widget.height,
            width: widget.width,
            child: TextFormField(
              onTap: widget.onTap,
              focusNode: focusNode,
              scrollPadding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              controller: widget.controller,
              validator: widget.validator,
              onChanged: widget.onChanged,
              onEditingComplete: widget.onEditingComplete,
              initialValue: widget.initialValue,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: widget.inputType,
              obscureText: widget.obscureText,
              enabled: widget.enabled,
              maxLength: widget.maxLength,
              maxLines: widget.maxLines,
              minLines: widget.minLines,
              expands: widget.expand,
              readOnly: widget.readOnly,
              style: widget.style,
              textAlign: TextAlign.left,
              textInputAction: widget.textInputAction,
              textAlignVertical: TextAlignVertical.top,
              inputFormatters: widget.inputFormatter ??
                  [
                    LengthLimitingTextInputFormatter(widget.maxLength),
                    widget.inputType == TextInputType.number &&
                            widget.hasInputFormat
                        ? FilteringTextInputFormatter.digitsOnly
                        : LengthLimitingTextInputFormatter(widget.maxLength),
                    (widget.inputType == TextInputType.number ||
                                widget.inputType ==
                                    const TextInputType.numberWithOptions(
                                        decimal: true)) &&
                            widget.hasInputFormat
                        ? AmountTextInputFormatter()
                        : LengthLimitingTextInputFormatter(widget.maxLength),
                  ],
              decoration: InputDecoration(
                contentPadding: widget.contentPadding,
                prefixIcon: widget.prefixIcon,
                suffixIcon: widget.suffixIcon,
                fillColor: widget.backgroundColor ?? AppColors.textFieldGrey,
                filled: true,
                hintText: widget.hintText,
                hintStyle: widget.hintStyle,
                errorText: widget.errorText,
                errorStyle: const TextStyle(color: AppColors.failRed),
                focusedBorder: inputBorder,
                enabledBorder: inputBorder,
                border: inputBorder,
                counterText: '',
              ),
            ),
          )
        ],
      ),
    );
  }
}
