with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure lit is

   --------------------------------------------------------------------
   -- 1. ЧИСЛОВЫЕ КОНСТАНТЫ
   --------------------------------------------------------------------
   Decimal_Number : Integer := 123;
   Binary_Number  : Integer := 2#1010#;     -- = 10
   Octal_Number   : Integer := 8#77#;       -- = 63
   Hex_Number     : Integer := 16#FF#;      -- = 255
   Big_Number     : Integer := 1_000_000;

   --------------------------------------------------------------------
   -- 2. СИМВОЛЬНЫЕ КОНСТАНТЫ
   --------------------------------------------------------------------
   Letter_A : Character := 'A';
   Digit_5  : Character := '5';
   Symbol   : Character := '#';

   --------------------------------------------------------------------
   -- 3. СТРОКОВЫЕ КОНСТАНТЫ
   --------------------------------------------------------------------
   Hello : String := "Hello";
   World : String(1 .. 5) := "World";
   Empty : String := "";

begin
   Put_Line("=== ЧИСЛОВЫЕ КОНСТАНТЫ ===");
   Put_Line("Decimal_Number = " & Integer'Image(Decimal_Number));
   Put_Line("Binary_Number  = " & Integer'Image(Binary_Number));
   Put_Line("Octal_Number   = " & Integer'Image(Octal_Number));
   Put_Line("Hex_Number     = " & Integer'Image(Hex_Number));
   Put_Line("Big_Number     = " & Integer'Image(Big_Number));
   New_Line;

   Put_Line("=== СИМВОЛЬНЫЕ КОНСТАНТЫ ===");
   Put_Line("Letter_A = '" & Letter_A & "'");
   Put_Line("Digit_5  = '" & Digit_5 & "'");
   Put_Line("Symbol   = '" & Symbol & "'");
   New_Line;

   Put_Line("=== СТРОКОВЫЕ КОНСТАНТЫ ===");
   Put_Line("Hello = " & Hello);
   Put_Line("World = " & World);
   Put_Line("Empty (длина = " & Integer'Image(Empty'Length) & ")");
   New_Line;

   -- Демонстрация двойных кавычек внутри строки
   Put_Line("Строка с кавычками: " & """quoted""");

end lit;
