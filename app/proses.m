function [m] = proses(m,variabel)
  #j as index column
  #i as index row
  for i = 1 : rows(m)
    j=i;#jadikan indeks j = i untuk mengenolkan kolom ke-j
    # m(1,1) , m(2,2), m(3,3) sbg indeks satu utama
    if m(i,i) != 0 
      if m(i,i) != 1
        #1. Menjadikan satu utama pada indeks, (i,i)
        printf("\nProses >> (1/%d)B%d\n\n",m(i,j),i);
        m(i,:) = m(i,:) ./m(i,i);
      endif
      disp(m);
      #2. Mengenolkan kolom yg memuat satu utama
      for k = j+1 : rows(m)
        #{
        3. Jika indeks k==j, misal 1,1 atau 2,2 atau 3,3 dst
        atau m(k,j) == 0, maka skip dan lanjut iterasi;
        #}
        if k == j || m(k,j) == 0
          continue;
        else
          #m(k,:) matriks pada baris ke k kolom kesemuanya
          printf("\nProses >> -(%d)B%d + B%d\n\n",m(k,j),j,k);
          m(k,:) = (-m(k,j)*m(j,:)).+ m(k,:);
        endif
        disp(m);
      endfor
    endif
  endfor
endfunction
