with Ada.Text_IO; use Ada.Text_IO;

package body Pack is

   procedure Foo(B: Base) is
   begin
      Put_Line("Base: " & Integer'Image(B.X));
   end Foo;

   overriding procedure Foo(D: Derived) is
   begin
      Put_Line("Derived: " & Integer'Image(D.X));
   end Foo;

end Pack;