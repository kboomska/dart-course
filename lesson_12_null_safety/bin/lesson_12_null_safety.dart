/// *******************************************************************************************
/// Null safety principles

// Null safety principles:
// 1. Non-nullable by default
// 2. Incrementally adoptable
// 3. Fully sound

void main() {
  int? age; // Nullable
  String name = 'Mark'; // Non-nullable
  var name1;

  print(name); // Mark
  print(age); // null
  print(name1); // null
}
