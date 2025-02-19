```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      print('Data fetched successfully: $jsonData');
    } else {
      // Handle error cases
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the request or JSON decoding
    print('Error: $e');
    // Additional error handling logic as needed
  }
}

void main() async {
  await fetchData();
}
```