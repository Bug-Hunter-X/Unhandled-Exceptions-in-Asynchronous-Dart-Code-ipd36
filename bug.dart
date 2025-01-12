```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON
      final jsonData = jsonDecode(response.body);
      // Process jsonData (this might throw an error if jsonData is not a map)
      print(jsonData['key']); 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // This catch block catches errors during API call and JSON decoding
    print('Error: $e');
    // But it doesn't distinguish between specific types of errors.
  } 
}
```