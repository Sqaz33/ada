with Ada.Text_IO; use Ada.Text_IO;

package body Pack is

   procedure Foo(X: Integer; B: Base; B1: Base; M: My_Class) is
   begin
      Put_Line("Base: " & Integer'Image(B.X));
   end Foo;

   procedure Foo(X: Integer; B: Base; M: My_Class) is
   begin
      Put_Line("Base: " & Integer'Image(B.X));
   end Foo;

   overriding procedure Foo(X: Integer; D: Derived; B1: Derived; M: My_Class) is
   begin
      Put_Line("Derived: " & Integer'Image(D.X));
   end Foo;

   procedure Bar is
   begin
      New_Line;
   end Bar;
   
   procedure Dummy(D: Derived) is 
   begin
      New_Line;
   end Dummy;

end Pack;

