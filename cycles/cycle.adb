--  Управляющие структуры: примеры циклов
--  Содержание:
--    1. Простейший цикл for
--    2. Цикл for с переменными границами
--    3. Бесконечный цикл loop с exit
--    4. Прерывание цикла через exit и exit when
--    5. Цикл while

with Ada.Text_IO; use Ada.Text_IO;

procedure cycle is 

   Low  : Integer := 2;
   High : Integer := 6;
   I    : Integer;
   J    : Integer := 0;

begin
   Put_Line("=== НАЧАЛО ПРОГРАММЫ ===");
   New_Line;

   --------------------------------------------------------------------
   -- 1. ПРОСТОЙ ЦИКЛ FOR
   --------------------------------------------------------------------
   Put_Line("Пример простого цикла for (1..5):");
   for I in 1 .. 5 loop
      Put_Line("I = " & Integer'Image(I));
   end loop;
   New_Line;

   --------------------------------------------------------------------
   -- 2. ЦИКЛ FOR С ПЕРЕМЕННЫМИ ГРАНИЦАМИ
   --------------------------------------------------------------------
   Put_Line("Цикл for с переменными границами (Low..High):");
   for I in Low .. High loop
      Put_Line("I = " & Integer'Image(I));
   end loop;
   New_Line;

   --------------------------------------------------------------------
   -- 3. БЕСКОНЕЧНЫЙ ЦИКЛ LOOP С EXIT
   --------------------------------------------------------------------
   Put_Line("Бесконечный цикл loop с exit:");
   J := 0;
   loop
      J := J + 1;
      Put_Line("J = " & Integer'Image(J));
      exit when J = 5;  -- выход при J = 5
   end loop;
   New_Line;

   --------------------------------------------------------------------
   -- 4. ПРЕРЫВАНИЕ ЦИКЛА FOR ЧЕРЕЗ EXIT И EXIT WHEN
   --------------------------------------------------------------------
   Put_Line("Цикл for с принудительным выходом (exit и exit when):");
   for I in 1 .. 10 loop
      if I = 7 then
         exit; -- выход из цикла
      end if;
      Put_Line("I = " & Integer'Image(I));
   end loop;
   New_Line;

   Put_Line("То же самое через exit when:");
   for I in 1 .. 10 loop
      exit when I = 7;
      Put_Line("I = " & Integer'Image(I));
   end loop;
   New_Line;

   --------------------------------------------------------------------
   -- 5. ЦИКЛ WHILE
   --------------------------------------------------------------------
   Put_Line("Цикл while (J < 5):");
   J := 0;
   while J < 5 loop
      J := J + 1;
      Put_Line("J = " & Integer'Image(J));
   end loop;
   New_Line;

   Put_Line("=== КОНЕЦ ПРОГРАММЫ ===");
end cycle;