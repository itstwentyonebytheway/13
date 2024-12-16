var 
  f:file of char;
  i:integer;
begin
  Assign(f, 'C:\oaip\seek.txt');
  reset(f);
  for i:=1 to filesize(f) do
  begin
    if i mod 2 = 1 then
    begin
      seek(f, i);
      write(f,'!');
    end;
  end;
end.