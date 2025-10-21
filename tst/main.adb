with Ada.Text_IO;       use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is

   -- Определение типа Vector
   type Vector is record
      X, Y : Float;
   end record;

   -- Перегрузка оператора "+"
   function "+" (A, B : Vector) return Vector is
   begin
      return (X => A.X + B.X, Y => A.Y + B.Y);
   end "+";

   -- Вспомогательная процедура для вывода вектора
   procedure Print_Vector(V : Vector) is
   begin
      Put_Line("X = " & Float'Image(V.X) & ", Y = " & Float'Image(V.Y));
   end Print_Vector;

   -- Переменные
   V1, V2, V3 : Vector;

begin
   -- Инициализация векторов
   V1 := (X => 1.5, Y => 2.5);
   V2 := (X => 3.0, Y => 4.0);

   -- Сложение
   V3 := V1 + V2;

   -- Вывод
   Put_Line("V1 = ");
   Print_Vector(V1);

   Put_Line("V2 = ");
   Print_Vector(V2);

   Put_Line("V1 + V2 = ");
   Print_Vector(V3);

end Main;
