

		print "\n\nPodaj wymiary pierwszej macierzy\n"
		print "Podaj ilosc wierszy pierwszej macierzy : "
		n=gets.to_i
		print "Podaj ilosc kolumn pierwszej macierzy : "
		k=gets.to_i

		a = [n*k]
		b = [n*k]

		print "\nPodaj liczby macierzy\n"
		for i in 0..n*k-1
			a[i]=gets.to_i
			i+=1
		end

		print "\n\n"
		kol=k
		print "\nMacierz przed transponowaniem\n"
		for i in 0..n*k-1
			print "#{a[i]} "
			kol-=1
			if kol==0
				print "\n"
				kol=k
			end
			i+=1
		end

		print "\n\n"

		wier=n
		print "Macierz po transponowaniu\n"
		i=0
		c=0
		licznik=0
		while licznik!=n*k
			licznik+=1
			b[licznik]=a[i]
			print "#{b[licznik]} "
			i=i+kol
			wier-=1
			if wier==0
				print "\n"
				wier=n
			end
			if i>=n*k
				c+=1
				i=c
			end
		end
		print "\n\n"