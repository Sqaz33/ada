with Ada.Text_IO;
use Ada.Text_IO;

with Animals;
With Dog;

procedure Main is 
   procedure Foo(A: in Animals.Animal'Class ) is  -- полиморфизм 
   -- `Class - атрибут для полиморфной работы с иерархией классов
   begin
      Animals.Speak(A);
   end Foo;

   A: Animals.Animal;
   D: Dog.Dog;


begin
   
   Foo(A); 
   Foo(D);

end Main;