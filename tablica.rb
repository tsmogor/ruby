n=0
temp=0
suma=0

loop do
	puts "Podaj wielkosc tablicy od 1 do 20: "
	n=gets.chomp.to_i
	break if n<=20 && n>0
end

puts " Podaj elementy tablicy "
array = []

for i in 0..n-1
	s=gets.chomp.to_i
	array.push(s) # => [i]
	i+=1
end

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
	puts "\n Mediana == #{array[(n/2)]}"

else
	med=(array[n/2]+array[(n/2)-1])/2.0
	puts "\n Mediana == #{med}"
end

for a in 0..n-1
	suma=suma+array[a]
end

suma=suma.fdiv(n)
puts "\n Srednia arytmetyczna == #{suma} \n\n"
