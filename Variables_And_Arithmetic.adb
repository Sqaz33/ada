--  Локальные переменные, арифметические операции, присваивание.
--  Содержание:
--    1. Объявление и инициализация переменных
--    2. Арифметические операции (+,-,*,/)
--    3. Операции сравнения (=, <, >, <=, >=)
--    4. Операция присваивания (:=)

with Ada.Text_IO; use Ada.Text_IO; -- Пакет для ввода/вывода

procedure Variables_And_Arithmetic is

   -- 1. ОБЪЯВЛЕНИЕ ПЕРЕМЕННЫХ РАЗНЫХ ТИПОВ

   -- Целое число
   Integer_Number : Integer := 10;

   -- Cимвол
   Character_Symbol : Character := 'A'; -- Символный литерал заключен в одинарные ковычки

   -- Строка (массив символов фиксированной длины)
   String_Text : String(1 .. 11) := "Hello World";

   -- 2. ДОПОЛНИТЕЛЬНЫЕ ПЕРЕМЕННЫЕ ДЛЯ ВЫЧИСЛЕНИЙ
   Result_Add, Result_Sub, Result_Mul, Result_Div : Integer;
   A, B : Integer;
   Is_Equal, Is_Greater : Boolean; 

   Value_Boolean : Boolean := False;
begin


   Put_Line("=== НАЧАЛО ПРОГРАММЫ ===");
   New_Line;

   -- Вывод начальных значений переменных
   Put_Line("Исходные значения:");
   Put_Line("Integer_Number: " & Integer'Image(Integer_Number));
   Put_Line("Character_Symbol: " & Character_Symbol);
   Put_Line("String_Text: " & String_Text);
   Put_Line("Value_Boolean: " & Boolean'Image(Value_Boolean));
   New_Line;

end Variables_And_Arithmetic;