with Animals;

package Dog is 
   type Dog is new Animals.Animal with record 
      Breed: String(1..15);
   end record;

   overriding procedure Speak(D : in Dog);
end Dog;
