program three;
var
  f1, f2: textfile;
  number: real;
  sum: real;
  count: integer;

begin
  assignfile(f1, 'c:\oaip\text9.txt');
  rewrite(f1);
  
  randomize;
  for count := 1 to 10 do
  begin
    number := random;
    writeln(f1, number:0:2);
  end;
  
  closefile(f1);
  assignfile(f1, 'c:\oaip\text9.txt');
  reset(f1);
  
  sum := 0;
  count := 0;
  
  while not eof(f1) do
  begin
    readln(f1, number);
    if count mod 2 <> 0 then
      sum := sum + number;
    count := count + 1;
  end;
  
  closefile(f1);
  assignfile(f2, 'c:\oaip\text9.1.txt');
  rewrite(f2);
  
  writeln(f2, 'сумма элементов с четными индексами: ', sum:0:2);
  closefile(f2);
end.
