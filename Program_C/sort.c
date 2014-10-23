/* Tomasz Smogór ,215568, 5F - login : tsmogor , Data: 17.03.2013  

11.1 Zdefiniuj stałą N o wartości 100. Zadeklaruj tablicę liczb całkowitych o N elementach. Wczytaj od użytkownika
liczbę naturalną n<N, a następnie wczytaj n-elementów tablicy. Wypisz na ekranie:
a) element najmniejszy tablicy,
b) element największy tablicy,
c) medianę wczytanych liczb,
d) średnią arytmetyczną wczytanych liczb.

*/

#include<stdio.h>
#define N 100

main() 
{
	int n,i,a,b,temp;
	int tab[N];
	double med,suma;
	suma=0;

	do {
		printf("\n Podaj n - od 1 do 100 : ");	
		scanf("%d",&n);
	} while(n>100 || n<=0);

	printf("\n Podaj elementy tablicy : ");
	for(i=0;i<n;i++){
		scanf("%d",&tab[i]);
	}	

	for(a=0;a<n-1;a++){
		for(b=0;b<n-1;b++){
			if(tab[b]>tab[b+1]){
				temp=tab[b];
				tab[b]=tab[b+1];
				tab[b+1]=temp;	
			}
		}
	}

	printf("\n Najmniejsza element == %d",tab[0]);
	printf("\n Najwiekszy element == %d",tab[n-1]);
	
	//printf("\n\na==%d ; n==%d ; b==%d\n\n",a,n,b);	
	
	if(n%2==1){
		printf("\n Mediana == %d",tab[(n/2)]);
	}
	else{
		med=(tab[n/2]+tab[(n/2)-1])/2.0;
		printf("\n Mediana == %.3lf",med);	
	}	
	
	
	for(a=0;a<n;a++){
		suma=suma+tab[a];
	}
	suma=suma/n;
	printf("\n Srednia arytmetyczna == %.3lf",suma);

	printf("\n\n");
	
}
