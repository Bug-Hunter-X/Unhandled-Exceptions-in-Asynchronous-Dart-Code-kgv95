```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error cases
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the request or JSON decoding
    print('Error: $e');
    // You might want to rethrow the exception or handle it differently depending on your app's requirements
    rethrow;
  }
}
```