# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common issue in Dart: improperly handled exceptions in asynchronous operations.  The example focuses on fetching data from an API, highlighting how to effectively handle potential errors using `try-catch` blocks and the `Future` API.

## Bug Description

The initial code lacks comprehensive error handling. Network errors, JSON decoding failures, or other unexpected exceptions could lead to app crashes or unpredictable behavior.  The improved code demonstrates proper exception handling practices.

## Solution

The `bugSolution.dart` file provides a corrected version of the code, implementing robust error handling.  It checks the HTTP response status code and handles exceptions during JSON decoding, gracefully handling errors and providing informative error messages.