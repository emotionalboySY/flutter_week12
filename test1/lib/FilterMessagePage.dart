import 'package:flutter/material.dart';
import 'package:test1/FilterResultPage.dart';


class FilterMessagePage extends StatelessWidget {
  const FilterMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter Messages'),
      ),
      body: const FilterUserName(),
    );
  }
}

class FilterUserName extends StatefulWidget {
  const FilterUserName({Key? key}) : super(key: key);

  @override
  State<FilterUserName> createState() => _FilterUserNameState();
}

class _FilterUserNameState extends State<FilterUserName> {
  String searchName = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 32.0, right: 32.0),
                child: Text('Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Expanded(
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Input username to search',
                    ),
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return 'Please input username to search';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      searchName = value!;
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text('Enter'),
            onPressed: () {
              setState(() {
                if(_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.push(context, MaterialPageRoute(builder: (builder) => FilterResultPage(username: searchName,)));
                }
              });
            },
          )
        ],
      ),
    );
  }
}
