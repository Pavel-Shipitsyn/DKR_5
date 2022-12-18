uses crt;
const
  n = 10; 
var
  a:array[1..n] of integer;
  i,j,buf:integer;
begin
 write('Массив: ');
  for i:=1 to n do
      readln(a[i]);
 
  for i:=1 to n-1 do
    for j:=i+1 to n do
      if a[i]>a[j] then
        begin
          buf:=a[i];
          a[i]:=a[j];
          a[j]:=buf;
        end;
  writeln;
  writeln('Отсортированный массив: ');
  for i:=1 to n do
    write(a[i],' ');
end.