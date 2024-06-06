import Debug "mo:base/Debug";

actor DBank{
  var curr_value = 300;
  Debug.print(debug_show(curr_value));
  curr_value := 100;
  Debug.print(debug_show(curr_value));
}
