
var 
  f:file of integer;
  r,s,i:integer;
  begin
  assign(f,'C:\oaip\text110.txt');
  rewrite(f);
  for i:=1 to 10 do 
    begin 
    r:=i;
    write(f,r);
    end;
    close(f);
  reset(f);
  write('сумма четных чисел:');
  s:=0;
  while not eof(f) do 
    begin
  read(f,r);
  if r mod 2 = 0 then s+=r;
    end;
  write(s);
end.
