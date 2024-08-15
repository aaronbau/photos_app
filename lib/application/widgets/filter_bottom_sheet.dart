import 'package:flutter/material.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({
    super.key,
    required this.intialPageSize,
    required this.onApply,
  });

  final int intialPageSize;
  final void Function(int) onApply;

  @override
  State<FilterBottomSheet> createState() => FilterBottomSheetState();
}

class FilterBottomSheetState extends State<FilterBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _pageSizeController;

  @override
  void initState() {
    super.initState();
    _pageSizeController = TextEditingController(text: widget.intialPageSize.toString());
  }

  @override
  void dispose() {
    _pageSizeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Wrap(
            alignment: WrapAlignment.end,
            children: [
              TextFormField(
                controller: _pageSizeController,
                decoration: const InputDecoration(label: Text("Page Size")),
                validator: (value) => value != null && int.tryParse(value) == null ? 'Input must be a number' : null,
                autovalidateMode: AutovalidateMode.always,
              ),
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    widget.onApply(int.parse(_pageSizeController.text));
                    Navigator.of(context).pop();
                  }
                },
                child: const Text("Apply"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
