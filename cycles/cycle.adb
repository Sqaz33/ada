with Ada.Text_IO; 
use Ada.Text_IO;


procedure cycle is 
   I: Integer := 0;
begin 

   for I in 1..10 loop
      Put_Line(Integer'Image(I));
   end loop;

   Put_Line(Integer'Image(I)); -- 0

   while I < 10 loop
      I := I + 1;
      Put_Line(Integer'Image(I));
   end loop;

end cycle;