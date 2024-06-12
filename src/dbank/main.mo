import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Time "mo:base/Time";
import Float "mo:base/Float";


actor DBank{
  stable var curr_value = 300;
  Debug.print("curr_value:");
  Debug.print(debug_show(curr_value));
  
  stable var startTime = Time.now();



  public func topUp(amount: Nat){
    curr_value += amount;
    Debug.print(debug_show(curr_value));
  };
  public func withdraw(amount: Nat){
    if((curr_value - amount): Int >= 0){
      curr_value -= amount;
      Debug.print(debug_show(curr_value));
    } else {
      Debug.print("Not enough amount");
    }
  };
  public query func checkBalance(): async Nat{
    return curr_value;
  };
  public query func checkAmount(): async Float{
    var currentTime = Time.now();
    var time_in_seconds = (currentTime - startTime)/500_000_000_000;
    var amount: Float = Float.fromInt(curr_value)*Float.pow(1.01, Float.fromInt(time_in_seconds));
    return amount;
  };
}