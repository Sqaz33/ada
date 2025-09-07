-- animals.adb
with Ada.Text_IO; use Ada.Text_IO;

package body Animals is
   procedure Speak(A : in Animal) is
   begin
      Put_Line("Some generic animal sound");
   end Speak;
end Animals;
