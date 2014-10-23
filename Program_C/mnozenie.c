/* Tomasz Smogór ,215568, 5F - login : tsmogor , Data: 09.05.2013 

Program mnozacy macierze na tablicach jednowymiarowych */

#include<stdio.h>
main()
{

	int i,j,x,y,a,b,c,d,kol,wier,z,licznik,o ;
	x=0;
	a=0;
	b=0;
	c=1;
	d=0;


	while(b!=c){
		printf("\n\nPodaj wymiary pierwszej macierzy\n");
		printf("Podaj ilość wierszy pierwszej macierzy : ");
		scanf("%d",&a);
		printf("Podaj ilość kolumn pierwszej macierzy : ");
		scanf("%d",&b);

		printf("\n\nPodaj wymiary drugiej macierzy\n");
		printf("Podaj ilość wierszy drugiej macierzy : ");
		scanf("%d",&c);
		printf("Podaj ilość kolumn drugiej macierzy : ");
		scanf("%d",&d);
	}

	double tab[a*b];
	double tab2[c*d];
	double tab3[a*d];

	printf("\nPodaj liczby pierwszej macierzy\n");
	for(i=1;i<=a*b;i++){
		scanf("%lf",&tab[i]);
	}

	printf("\n\nPodaj liczby drugiej macierzy\n");
	for(i=1;i<=c*d;i++){
		scanf("%lf",&tab2[i]);
	}

	printf("\n\n");
	kol=b;
	printf("\nMacierz pierwsza\n");
	for(i=1;i<=a*b;i++){
		printf("%8.3lf ",tab[i]);
		kol--;
		if(kol==0){
			printf("\n");
			kol=b;
		}
	}
	printf("\n\n");

	kol=d;
	printf("\nMacierz druga\n");
	for(i=1;i<=c*d;i++){
		printf("%8.3lf ",tab2[i]);
		kol--;
		if(kol==0){
			printf("\n");
			kol=d;
		}
	}
	printf("\n\n");
	
		o=1;
		i=0;
        	y=1;
		z=1;
		j=1;
		while(j<=a*d){
			licznik=1;
			x=1+i;
			//printf("\n\n\nx==%d & y==%d\n",x,y);
			kol=d; //kol=3;
			tab3[1*j]=0;
			while(licznik<=b){
				printf("%d=%d*%d\n",j,x,y);
				tab3[1*j]=tab3[1*j]+tab[1*x]*tab2[y*1];
				x++;
				y=y+kol;
				licznik++;
				if(y>c*d){
					z++;
					y=z;
				}
		
			}
			if(j==d*o){			
				i=i+b;
				o++;
				y=1;
				z=1;
			}
			j++;	
			
	}
		printf("\n\n");

		kol=d;
		printf("\nMacierz wymnozona\n");
		for(i=1;i<=a*d;i++){
			printf("%10.3lf ",tab3[i]);
			kol--;
			if(kol==0){
				printf("\n");
				kol=d;
			}
		}

		printf("\n\n");

}
