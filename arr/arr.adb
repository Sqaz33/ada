with Ada.Text_IO;
use Ada;


procedure Arr is 


   Arr1 : array(0 .. 9) of Integer;
   X : Integer;

   Arr2 : array (0 .. 9, 0 .. 9) of Integer;

   type Vector  is array (Integer range<>) of Integer;
   V : Vector(1 .. 10);
   subtype Vector_10 is Vector(0 .. 9);
   V10 : Vector_10;


begin 

   V(10) := 1;
   
   Arr1(2) := 2;
   
   Arr2(0, 0) := 1;

   X := Arr1(2);

end Arr;