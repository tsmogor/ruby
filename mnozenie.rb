x=0
a=0
b=0
c=1
d=0

while b != c  do
   		print "\n\nPodaj wymiary pierwszej macierzy\n"
		print "Podaj ilosc wierszy pierwszej macierzy : "
		a=gets.to_i
		print "Podaj ilosc kolumn pierwszej macierzy : "
		b=gets.to_i

		print "\n\nPodaj wymiary drugiej macierzy\n"
		print "Podaj ilosc wierszy drugiej macierzy : "
		c=gets.to_i
		print "Podaj ilosc kolumn drugiej macierzy : "
		d=gets.to_i

		tab = [a*b]
		tab2 = [c*d]
		tab3 = [a*d]
if b==c
		print "\nPodaj liczby pierwszej macierzy\n"
		for i in 1..a*b
			tab[i]=gets.to_i
			i+=1
		end

		print "\nPodaj liczby drugiej macierzy\n"
		for i in 1..c*d
			tab2[i]=gets.to_i
			i+=1
		end

		print "\n\n"
		kol=b
		print "\nMacierz pierwsza\n"

		for i in 1..a*b
			print "#{tab[i]} "
			kol-=1
			if kol==0
				print "\n"
				kol=b
			end
		i+=1
		end
		print "\n\n"
		kol=d
		print "\nMacierz druga\n"

		for i in 1..c*d
			print "#{tab2[i]} "
			kol-=1
			if kol==0
				print "\n"
				kol=d
			end
		i+=1
		end
		print "\n\n"


		o=1
		i=0
		y=1
		z=1
		j=1
		while j<=a*d
			licznik=1
			x=1+i
			kol=d
			tab3[j*1]=0
			while licznik<=b
				puts "#{j}=#{x}*#{y}"
				tab3[j*1]=tab3[1*j]+tab[1*x]*tab2[y*1]
				x+=1
				y=y+kol
				licznik+=1
				if y>c*d
					z+=1
					y=z
				end
			end
			if j==d*o
				i=i+b
				o+=1
				y=1
				z=1
			end
			j+=1
		end
		
		print "\n\n"

		kol=d
		print "\n Macierz wymnozona\n"
		for i in 1..a*d
			print "#{tab3[i]} "
			kol-=1
			if kol==0
				print "\n"
				kol=d
			end

			i+=1
		end

else
	print "\n Nie mozna wymnozyc"
end
end