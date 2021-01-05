function [v] = backward(m)
  v=[];
  B = transpose(m(:,end));
  #inisialisasi array v[] dengan nol
  for i =1:rows(m)
    v(i) = 0;
  endfor
  for i = rows(m) : -1:1
    v(i) =B(i);
    for j =1:rows(m)
      if j == i
        continue;
      else
        v(i) -= (m(i,j)*v(j));
      endif
    endfor
  endfor
endfunction
