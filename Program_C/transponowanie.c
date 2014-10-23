/* Tomasz Smogór ,215568, 5F - login : tsmogor , Data: 11.05.2013 

Transponowanie macierzy na tablicy jednowymiarowej */

#include<stdio.h>
main()
{
	int c,n,k,i,j,kol,wier,licznik;
	
	

	printf("\n\nPodaj wymiary macierzy\n");
	printf("Podaj ilość wierszy macierzy : ");
	scanf("%d",&n);
	printf("Podaj ilość kolumn macierzy : ");
	scanf("%d",&k);

	double a[n*k];
	double b[n*k];

	
	printf("\nPodaj liczby macierzy\n");
	for(i=0;i<n*k;i++){
		scanf("%3lf",&a[i]);
	}
	
	printf("\n\n");
	kol=k;
	printf("\nMacierz przed transponowaniem\n");
	for(i=0;i<n*k;i++){
		printf("%3lf ",a[i]);
		kol--;
		if(kol==0){
			printf("\n");
			kol=k;
		}
	}
	printf("\n\n");

	
	printf("\n\n");
	wier=n;
	printf("\nMacierz po transponowaniu\n");
	i=0;
	c=0;
	licznik=0;
	while(licznik!=n*k){	
		licznik++;
		b[licznik]=a[i];
		printf("%3lf ",b[licznik]);
		i=i+kol;						
		wier--;
		if(wier==0){
			printf("\n");
			wier=n;
		}
		if(i>=n*k){
			c++;
			i=c;
		}
	}
	printf("\n\n");
	
}

	
	
	
