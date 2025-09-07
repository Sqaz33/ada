package body T is 
   function Test(a, b: Integer) return Integer is
      res : Integer;
   begin
      res := a + b;
      return res;
   end Test;     

   function Test2(a, b: Integer) return Integer is
      res : Integer;
   begin
      res := a + b;
      return res;
   end Test2;                        
end T;