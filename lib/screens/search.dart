import 'package:flutter/material.dart';
import '../article.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _performSearch() {
    String query = _searchController.text;
    // Handle search query (e.g., navigate to search results screen)
    print('Performing search for: $query');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Enter your search query',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: _performSearch,
                    icon: Icon(Icons.search),
                    label: Text('Search'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                NewsBox(
                  imageUrl:
                      'https://images.unsplash.com/photo-1616832880334-b1004d9808da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80',
                  title: 'Breaking News',
                  subtitle: 'Important news update',
                  buttonText1: 'Read More',
                  buttonText2: 'Share',
                  buttonText3: 'Save',
                ),
                NewsBox(
                  imageUrl:
                      'https://images.unsplash.com/photo-1616832880334-b1004d9808da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80',
                  title: 'Latest Update',
                  subtitle: 'Exciting developments',
                  buttonText1: 'Read More',
                  buttonText2: 'Share',
                  buttonText3: 'Save',
                ),
                // Add more NewsBox widgets here as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}

  
