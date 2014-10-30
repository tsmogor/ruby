
def mnoz(a,b,c,d,tab,tab2)
		
		tab3 = [a*d]
		o=1
		i=0
		y=1
		z=1
		j=1
		while j<=a*d
			licznik=1
			x=1+i
			kol=d
			tab3[j]=0
			while licznik<=b
				#puts "#{tab3[j]}=#{tab3[j]}+#{tab[x]}*#{tab2[y]}"
				tab3[j]=tab3[j]+tab[x]*tab2[y]
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
	tab3[1..-1]
end