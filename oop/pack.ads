package Pack is
   
   type Base is tagged record 
      X: Integer := 1;
   end record;

   procedure Foo(B: Base);

   type Derived is new Base with null record; 

   overriding procedure Foo(D: Derived);

end Pack;