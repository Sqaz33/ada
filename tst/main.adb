with Ada.Text_IO; --Подключаем пакет Text_IO. Он нужен для работы с текстом
use Ada.Text_IO;
with T;

procedure Main is
   x : Integer := 0;                          
   y : Integer := 0;                          
   res : Integer := 0;                          
begin                                      
   x := 1;
   y := 2;
   res := T.Test(x, y);
   Put_Line("1 + 2 =" & Integer'Image(X));   
end Main;                                  
