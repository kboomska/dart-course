void main() {
  var myVariable = 10;
  // myVariable = 'hello'; // Error!

  dynamic myDynamicVariable = 10;
  myDynamicVariable = 'hello';
  print(myDynamicVariable);

  // We didn't know in advance what type
  var myDynamic; // dynamic
  myDynamic = 10;
  myDynamic = 'hello';

  // We knew exactly in advance that there would be
  // a changeable type.
  Object? myObjVariable;
  myObjVariable = 10;
  myObjVariable = 'hello';
}
