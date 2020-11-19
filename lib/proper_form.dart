import 'package:flutter/material.dart';

enum SearchType {web, image, news, shopping}

class ProperForm extends StatefulWidget {
  @override
  _ProperFormState createState() => _ProperFormState();
}

class _ProperFormState extends State<ProperForm> {

  final Map<String, dynamic> _searchForm = <String, dynamic>{
  'searchTerm': '',
  'searchType': SearchType.web,
  'safeSearchOn': true,
  };

  final GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Container(
        child: ListView(
          children: <Widget>[
            TextFormField(

            ),
            Checkbox(
              value: true,
              onChanged: (val) {
                if (val) {
                  !val;
                } else val;
              },

            ),
            DropdownButton(
              items: [
                DropdownMenuItem(
                  child: Text('Hello'),
                  value: 'val',
                )

              ],
            ),
            RaisedButton(
              child: Text('Send'),
            )
          ],
        ),
      ),
    );
  }
}
