def sort(array,n)

for a in 0..n-2
	for b in 0..n-2
		if array[b] > array[b+1]
			temp=array[b]
			array[b]=array[b+1]
			array[b+1]=temp
		end
	end
end

puts " \n Najmniejszy elementy tablicy == #{array[0]} "
puts " \n Najwiekszy elementy tablicy == #{array[n-1]} "

if n%2==1
        med=array[(n/2)]
	puts "\n Mediana == #{array[(n/2)]}"

else
	med=(array[n/2]+array[(n/2)-1])/2.0
	puts "\n Mediana == #{med}"
end
suma=0
for a in 0..n-1
	suma=suma+array[a]
end

suma=suma.fdiv(n)
puts "\n Srednia arytmetyczna == #{suma} \n\n"
tab=[array[0],array[n-1],med,suma]
end