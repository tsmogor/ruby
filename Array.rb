=begin
Learn X in Y minutes, where X=Array 


Poradnik opisujący klasę Array w języku ruby

WAŻNE ! TABLICE INDEKSOWANE SĄ OD 0 ! Element 1, oznacza tak naprawdę 2 :)
Chyba, że brane są pod uwagę elementy od końca, wtedy 1 oznacza 1 .

=end

#Tworzenie pustej tablicy jednowymiarowej z nieznaną liczbą elementów
nazwa_tablicy = []
nazwa_tablicy = Array.new 

#Tworzenie tablicy jednowymiarowej z uzupełnieniem
nazwa_tablicy = [9, 8, 7]
nazwa_tablicy = [ “dziewiec” , “osiem” , “siedem”]

#Odwoływanie się do elementów tablicy (proste przykłady dla nazwa_tablicy = [9, 8, 7, 6])
nazwa_tablicy[1] #-> 8
nazwa_tablicy[0] #-> 9
nazwa_tablicy[5] #-> nil
nazwa_tablicy[-1] #-> 6 (wypisuje 1 element od końca)
nazwa_tablicy[-3] #-> 8 (wypisuje 3 element od końca)
nazwa_tablicy[1, 2] #-> [8, 7] (wypisuje od 1 miejsca, 2 elementy)
nazwa_tablicy[1..3] #-> [8, 7, 6] (zakres od 1 do 3 elementu ,włącznie z 3)
nazwa_tablicy[1...3] #-> [8, 7] (zakres od 1 do 3 elementu, wyłączając 3 element)
nazwa_tablicy[1..-1] #-> [8, 7, 6] (zakres od 1 do ostatniego elementu ,włącznie z ostatnim)
nazwa_tablicy[1...-1] #-> [8, 7, 6] (zakres od 1 do ostatniego elementu ,wyłączając ostatni)

#Istnieje operator %w , który umożliwia pominięcie wielokrotnego używania cudzysłowów między wartościami 
nazwa_tablicy = %w{dziewiec osiem siedem} 
#-> znaczy to samo co nazwa_tablicy = [ “dziewiec” , “osiem” , “siedem”]

#Przykład tablicy asocjacyjnej (dla każdego rekordu dwa wpisy, pierwszy dla klucza, drugi dla wartości)
nazwa_tablicy = {"215568" => "Smogor", "215567" => "Nowak"}
nazwa_tablicy[“215568”]   #-> zwróci “Smogor”


#Klasa Array posiada dużo dodatkowych metod
#Operatorowe
[9 ,8 ,7] + [1, 2]  #-> [9, 8, 7, 1, 2] - suma tablic
[9 ,8 ,7] - [7]   #-> [9, 8] - różnica tablic
nazwa_tablicy = [9, 8 ,7]
nazwa_tablicy << 6  #-> [9, 8, 7, 6] - dodawanie elementu na końcu tablicy
[9, 8, 7] & [5, 6, 7] #-> [7] - elementy wspólne obu tablic

#Pozostałe ( dla przykładu -> nazwa_tablicy[9 ,8 ,7] )
nazwa_tablicy.first #-> 9 (zwraca pierwszą wartość w tablicy)
nazwa_tablicy.last #-> 7 (zwraca ostatnią wartość w tablicy)
nazwa_tablicy.take(2) #-> [9, 8] (zwraca pierwsze n elementów, gdzie n=2)
nazwa_tablicy.drop(1) #-> [8, 7] (zwraca wszystkie elementy występujące po n, gdzie n=1)
nazwa_tablicy.push(6) #-> [9, 8, 7, 6] (oznacza to samo co nazwa_tablicy << 6)
nazwa_tablicy.unshift(6) #-> [6, 9, 8, 7] (dodaje element na początku tablicy)
nazwa_tablicy.insert(1, 8.5) #-> [9, 8.5, 8, 7] (dodaje wartość na wybranej pozycji)
nazwa_tablicy.pop #-> 7 (usuwa ostatni element tablicy i zwraca go, nazwa_tablicy => [9 ,8]) 
nazwa_tablicy.shift #-> 9 (usuwa pierwszy element tablicy i zwraca go, nazwa_tablicy => [8, 7])

# (dla przykładu -> nazwa_tablicy[9, 8, 7, 8] )
nazwa_tablicy.delete(8) #-> [9, 7] (usuwa wszystkie wartości 8, w każdym miejscu tablicy)
nazwa_tablicy.uniq #-> [9, 8, 7] (zwraca wartości występujące w tablicy ignorując powtarzające się)
nazwa_tablicy = [9, 8, 7, 8].sort #-> [7, 8, 8, 9] (sortuje elementy tablicy)
nazwa_tablicy.reverse #-> [8, 7, 8, 9] (zwraca tablice w odwrotnej kolejności)
#( include? zwraca wartość true lub false, w zależności czy dana wartość znajduje się w tabeli )
nazwa_tablicy = [9, 8, 7].include?(9) #-> true
nazwa_tablicy = [9, 8, 7].include?(3) #-> false

#Tworzenie pustej tablicy dwuwymiarowej o danej wielkości
nazwa_tablicy = Array.new(3) { Array.new(3) } #-> [ [ , , ] , [ , , ] , [ , , ] ]  (Tablica 3x3)

#Tworzenie uzupełnionej tablicy dwuwymiarowej
nazwa_tablicy = [ [9, 8, 7] , [6, 5, 4] , [3, 2, 1] ] 
nazwa_tablicy[1] #-> [6, 5, 4]
nazwa_tablicy[2][0] #-> [3]
