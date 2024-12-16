
var 
  f: file of real;
  max: real;
  r, a, b, c: real;
  i: integer;
  found: boolean;
begin
  assign(f, 'numbers.txt');
  rewrite(f);
  for i := 1 to 10 do
  begin
    r := random(1, 20);
    write(f, r);
  end;
  close(f);
  reset(f);
  writeln('ряд чисел:');
  while not eof(f) do 
  begin
    read(f, r);
    write(r, ' ');
  end;
  reset(f);
  writeLn;
  found := false;
  read(f, a);
  if not eof(f) then read(f, b);
  if not eof(f) then read(f, c);
  while not eof(f) do 
  begin
    if (b > a) and (b > c) then 
    begin
      max := b;
      found := true;
    end;
    a := b;
    b := c;
    read(f, c);
  end;
  if (b > a) then 
  begin
    max := b;
    found := true;
  end;
  if found then
    write('последний локальный максимум: ', max);
  Close(f);
end.

