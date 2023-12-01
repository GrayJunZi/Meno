import 'package:flutter/material.dart';

class RangeSelectPage extends StatefulWidget {
  const RangeSelectPage({super.key});

  @override
  State<RangeSelectPage> createState() => _RangeSelectPageState();
}

class _RangeSelectPageState extends State<RangeSelectPage> {
  int _min = 0;
  int _max = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Range'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RangeSelectorTextFormField(
                labelText: 'Minimum',
                intValueSetter: (value) => _min = value,
              ),
              SizedBox(height: 12),
              RangeSelectorTextFormField(
                labelText: 'Maximum',
                intValueSetter: (value) => _max = value,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {},
      ),
    );
  }
}

class RangeSelectorTextFormField extends StatelessWidget {
  const RangeSelectorTextFormField({
    super.key,
    required this.labelText,
    required this.intValueSetter,
  });

  final String labelText;
  final void Function(int value) intValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
      keyboardType: TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
      onSaved: (newValue) => intValueSetter(int.parse(newValue ?? '')),
    );
  }
}
