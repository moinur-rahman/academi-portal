import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 40,
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(width: 3, color: Color(0xffDBDBDB)),
                ),
                labelText: 'Top Questions',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: 40,
          //   child: ElevatedButton(
          //     onPressed: () => {},
          //     child: Icon(Icons.search),
          //     style:
          //         ElevatedButton.styleFrom(backgroundColor: Color(0xFF349053)),
          //   ),
          // )
        ],
      ),
    );
  }
}
