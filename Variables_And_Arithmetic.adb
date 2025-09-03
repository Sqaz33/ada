--  Локальные переменные, арифметические операции, присваивание.
--  Содержание:
--    1. Объявление и инициализация переменных
--    2. Арифметические операции (+,-,*,/)
--    3. Операции сравнения (=, /=,  <, >, <=, >=)
--    4. Операция присваивания (:=)

with Ada.Text_IO; use Ada.Text_IO; -- Пакет для ввода/вывода

procedure Variables_And_Arithmetic is

   -- 1. ОБЪЯВЛЕНИЕ ПЕРЕМЕННЫХ РАЗНЫХ ТИПОВ
   -- В названии переменной допустимы буквы (a-z, A-Z), цифры (0-9) и нижнее подчеркивнаие (_)
   -- !!! Но первый символ, в названии перменной, доджен быть буквой (a-z, A-Z) 

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

begin

   Put_Line("=== НАЧАЛО ПРОГРАММЫ ===");
   New_Line;

   -- Вывод начальных значений переменных
   Put_Line("Исходные значения:");
   Put_Line("Integer_Number: " & Integer'Image(Integer_Number));
   Put_Line("Character_Symbol: " & Character_Symbol);
   Put_Line("String_Text: " & String_Text);
   New_Line;

   -- 3. АРИФМЕТИЧЕСКИЕ ОПЕРАЦИИ
   Put_Line("=== АРИФМЕТИЧЕСКИЕ ОПЕРАЦИИ ===");

   A := 20;
   B := 5;

   -- Сложение 
   Result_Add := A + B;
   Put_Line(Integer'Image(A) & " + " & Integer'Image(B) & " = " & Integer'Image(Result_Add));

   -- Вычитание
   Result_Sub := A - B;
   Put_Line(Integer'Image(A) & " - " & Integer'Image(B) & " = " & Integer'Image(Result_Sub));
   
   -- Умножение
   Result_Mul := A * B;
   Put_Line(Integer'Image(A) & " * " & Integer'Image(B) & " = " & Integer'Image(Result_Mul));
   
   -- Деление (ЦЕЛОЧИСЛЕННОЕ!)
   Result_Div := A / B; -- 20 / 5 = 4
   Put_Line(Integer'Image(A) & " / " & Integer'Image(B) & " = " & Integer'Image(Result_Div));
   New_Line;

   -- 4. ОПЕРАЦИИ СРАВНЕНИЯ
   Put_Line("=== ОПЕРАЦИИ СРАВНЕНИЯ ===");
   
   Is_Equal := (A = B); -- False
   Put_Line(Integer'Image(A) & " = " & Integer'Image(B) & " ? " & Boolean'Image(Is_Equal));
   
   Is_Equal := (A /= B); -- True
   Put_Line(Integer'Image(A) & " /= " & Integer'Image(B) & " ? " & Boolean'Image(Is_Equal));
   
   Is_Greater := (A > B); -- True
   Put_Line(Integer'Image(A) & " > " & Integer'Image(B) & " ? " & Boolean'Image(Is_Greater));
   
   Is_Greater := (A < B); -- False
   Put_Line(Integer'Image(A) & " < " & Integer'Image(B) & " ? " & Boolean'Image(Is_Greater));
   New_Line;

   -- 5. ОПЕРАЦИЯ ПРИСВАИВАНИЯ
   Put_Line("=== ОПЕРАЦИЯ ПРИСВАИВАНИЯ ===");
   
   Put_Line("Integer_Number До присваивания: " & Integer'Image(Integer_Number));
   Integer_Number := 42; -- Присваивание нового значения
   Put_Line("Integer_Number После присваивания: " & Integer'Image(Integer_Number));
   
   -- Множественное присваивание (через промежуточные операции)
   Integer_Number := A + B * 2; -- Сначала вычисляется выражение, потом присваивание
   Put_Line("Результат выражения A + B * 2: " & Integer'Image(Integer_Number));
   New_Line;

end Variables_And_Arithmetic;