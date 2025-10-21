package Pack is
   type My_Class is null record;

   type Base is tagged record 
      X: Integer := 1;
   end record;

   procedure Foo(X: Integer; B: Base; B1: Base; M: My_Class);

   type Derived is new Base with null record; 

   overriding procedure Foo(X: Integer; D: Derived; B1: Derived; M: My_Class);

   procedure Bar;

      --  procedure Bar(B: Base); err

end Pack;