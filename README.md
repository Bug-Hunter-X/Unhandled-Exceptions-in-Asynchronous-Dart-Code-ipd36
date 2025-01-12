# Unhandled Exceptions in Asynchronous Dart Code
This example demonstrates a common error in Dart: insufficient error handling within asynchronous operations. The `fetchData` function fetches data from an API, but its error handling is too generic.  It catches any exception but doesn't differentiate between network errors and JSON decoding errors, hindering proper debugging and recovery.

## Problem
The current `fetchData` function uses a single `catch` block, making it difficult to identify the root cause of failures.  A network issue (e.g., a timeout) will be treated the same as a JSON decoding error (e.g., malformed JSON), preventing specific handling for each scenario.

## Solution
The improved version introduces more specific error handling to catch and distinguish between `FormatException` (for JSON decoding issues) and other potential exceptions, facilitating better debugging and user feedback.