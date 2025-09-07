-- animals.ads
package Animals is
   type Animal is tagged record
      Name : String(1..20);
      Age  : Integer;
   end record;
   
   procedure Speak(A : in Animal);
end Animals;