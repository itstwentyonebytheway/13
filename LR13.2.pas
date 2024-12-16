var
  fin, fout: text;
  line: string;
  maxl: integer;
  l: array of string;
  i, c: integer;
begin
  Assign(fin, 'c:\oaip\text8.txt');
  Reset(fin);
  maxL := 0;
  c := 0;

  while not Eof(fin) do
  begin
    ReadLn(fin, line);
    if Length(line) > maxl then
    begin
      maxl := Length(line);
      c := 0;
      SetLength(l, 1);
      l[0] := line; 
      c := 1;
    end else 
      if Length(line) = maxl then
    begin
      SetLength(l, c + 1);
      l[c] := line;
      Inc(c);
    end;
  end;
  Close(fin); 
  Assign(fout, 'c:\oaip\text8.1.txt');
  Rewrite(fout);
  for i := c-1 downto 0 do
  begin
    WriteLn(fout, l[i]);
  end;
  Close(fout);
end.
