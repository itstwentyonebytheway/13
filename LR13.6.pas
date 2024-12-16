var
  f1, f2: file of real;
  max,min,a:real;
  fmin,fmax,f,i:integer;
begin
  Assign(f1, 'num.txt');
  Assign(f2, 'num1.txt');
  rewrite(f1);
  for i := 1 to 10 do
  begin
    a := random(1, 20);
    write(a, ' ');
    write(f1, a);
  end;
  max:=0;
  min:=100;
  reset(f1);
  while not eof(f1) do
  begin
    f:=f+1;
    read(f1,a);
    if a>max then
      begin
      max:=a;
      fmax:=f;
      end;
    if a<min then
      begin
      min:=a;
      fmin:=f;
      end;
  end;
  f:=0;
  reset(f1);
  rewrite(f2);
  while not eof(f1) do
  begin
    f:=f+1;
    read(f1,a);
    if f=fmax then
    begin
      write(f2,min);
      continue;
    end;
    if f=fmin then
    begin
      write(f2,max);
      continue;
    end;
    write(f2,a);
  end;
  writeln;
  reset(f2);
  while not eof(f2) do
  begin
    read(f2,a);
    write(a,' ');
  end;
  close(f1);
  close(f2);
end.