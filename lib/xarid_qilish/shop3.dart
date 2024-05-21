import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Back action
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // More options action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Cappuccino',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    // Clear action
                  },
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text('Cappuccino, Without Milk'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Suggestion tap action
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text('Cappuccino, With Chocolate'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Suggestion tap action
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text('Cappuccino, With Almond milk'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Suggestion tap action
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text('Search suggestions', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      Chip(label: Text('coffee')),
                      Chip(label: Text('Almond coffee')),
                      Chip(label: Text('chocolate coffee')),
                      Chip(label: Text('coffee milk')),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
