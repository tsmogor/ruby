n=0
temp=0


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

require_relative 'def_sort'
sort(array,n)