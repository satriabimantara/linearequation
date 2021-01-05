


function menu()
  m = []; #as matriks koefisien
  konstanta=[]; #as matriks konstanta
  variabel =['a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o']; #as matriks variabel
  printf("Penyelesaian Gauss Jordan\n");
  printf(" AX = B\n");
  printf("A --> Matriks Koefisien\n");
  printf("X --> Matriks Variabel\n");
  printf("B --> Matriks Konstanta\n");
  printf("\n\n\t\tINPUT MATRIKS KOEFISIEN\n\n");
  printf("Masukan ordo matriks n x n\n");;
  #1. INPUT ORDO MATRIKS
  n = input("Input nilai n >> ");
  #2. INPUT ELEMEN MATRIKS KOEFISIEN
  printf("\nMasukan ELEMEN TIAP MATRIKS\n");
  for i = 1 : n
    for j = 1 : n
      printf("Masukan elemen m[%d,%d] \t >> ",i,j);
      m(i,j) = input("");
    endfor
    #3. INPUT ELEMEN MATRIKS KONSTANTA
    printf("Masukan matriks konstanta baris %d \t >> ",i);
    konstanta(i) = input("");
    printf("\n");
  endfor
  #4. MERGE MATRIKS KONSTANTA KE MATRIKS KOEFISIEN
  m(:,end+1) = konstanta;
  #5. OUTPUT SEBELUM PROSES
  printf("\nSEBELUM PROSES\n");
  disp(m);
  #6. LAKUKAN PROSES
  printf("\nPROSES\n");
  [m] = proses(m,variabel,n);
  #Backward Substitution
  [v] = backward(m);
  #7. SESUDAH PROSES
  printf("\n\SESUDAH PROSES\n");
  printf("\n");
  disp(m);
  printf("\nNilai Matriks Variabel \n");
  printf("   ");
  for i = 1:n
    printf("%c   ",variabel(i));
  endfor
  printf("\n");
  disp(v);
endfunction
