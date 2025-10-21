with Pack;

procedure Main is
   procedure Pol(B: Pack.Base'Class) is
   begin
      B.Foo;
   end Pol;

   V1: Pack.Base := (X => 2);
   V2: Pack.Derived := (X => 3);

begin

   Pol(V1);
   Pol(V2);

end Main;