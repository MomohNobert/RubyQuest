def my_hamming_dna(dna1, dna2)
    dna1.length == dna2.length ? nil : ( return -1;)

    counter = 0
    (0..dna1.length).each do |i|
        dna1.downcase.split("")[i] == dna2.downcase.split("")[i] ?  counter :  counter += 1
    end
    return counter
end

print my_hamming_dna("GAGCCTACTAACGGGAT", "CATCGTAATGACGGCT")
