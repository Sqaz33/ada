with Animals; use Animals;
with Ada.Text_IO; use Ada.Text_IO;

package body Dog is 
   overriding procedure Speak(D : in Dog) is
   begin
      Put_Line("Wof");
   end Speak;
end Dog;

