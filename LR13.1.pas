var
  f1: file of char;
  s : string;
  i,k : integer;
  p: char;
  begin
    assign(f1,'C:\oaip\text7.txt');
    reset(f1);
   while not eof(f1) do
   begin
     read(f1,p);
     s += p;
     end;
    for i := 1 to (length(s)) do
    begin
      if s[i] = ' ' then
        k := i;
    end;
    delete(s, k, (length(s)-k+1));
    rewrite(f1);
    reset(f1);
    for i := 1 to (length(s)) do
    begin
      p := s[i];
      write(f1,p);
    end;
    close(f1);
  end.