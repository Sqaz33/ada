with Pack;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   procedure Bar(B: Pack.Base) is
   begin
      Put_Line("Base");
   end Bar;

   procedure Bar(B: Pack.Derived) is
   begin
      Put_Line("Derived");
   end Bar;

   procedure Pol(B: Pack.Base'Class) is
      M: Pack.My_Class;
   begin
      Pack.Foo(1, B, B, M);
      --  Bar(B); --  Cannot call Bar(B): not a dispatching operation of Base.
   end Pol;
   V1: Pack.Base := (X => 2);
   V2: Pack.Derived := (X => 3);
   V3: Pack.DerivedDerived := (X => 4);



begin

   Pol(V1);
   Pol(V2);
   Pol(V3);

end Main;