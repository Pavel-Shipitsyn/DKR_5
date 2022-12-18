uses crt;
var a,b,c:array[1..500] of integer;
    n,m,i,j,k:integer;
begin
clrscr;
write('n=');readln(n);
write('m=');readln(m);
writeln('Massiv A:');
for i:=1 to n do
   begin
    a[i]:=2*i+1;
    write(a[i],' ');
   end;
writeln;
writeln('Massiv B:');
for i:=1 to m do
   begin
    b[i]:=2*i;
    write(b[i],' ');
   end;
writeln;
i:=1; j:=1; k:=1; 
while (i<=n) or (j<=m) do 
  begin
   if (i<=n) and (j<=m) then 
     begin
       if a[i]<b[j] then 
        begin
         c[k]:= a[i];
         inc (i); 
         inc (k); 
        end
       else
        begin
         c[k]:= b[j];
         inc (j);
         inc (k);
        end
     end
   else if j>m then 
     begin 
       c[k]:= a[i];
       inc (i);
       inc (k);
     end
   else if i>n then
     begin
       c[k]:= b[j];
       inc (j);
       inc (k);
     end;
  end;
writeln('Massiv C:');
for i:=1 to m+n do
write(c[i],' ');
readln
end.