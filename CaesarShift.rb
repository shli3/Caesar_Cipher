def caesar_shift(phrase, diff)
    chopped = Array.new()
    chopped = phrase.split(//)
    # puts diff
    for i in 0..chopped.length
        if chopped[i].ord > 64 && chopped[i].ord < 91
            caps = chopped[i].ord - 65
            chopped[i] = ((caps % 26 + diff) + 65).chr
        elsif chopped[i].ord > 96 && chopped[i].ord < 123
            chopped[i] = (((chopped[i].ord - 97) % 26 + diff) + 97).chr
        end
    end
    puts chopped
end

if ARGV.length < 2
    puts "Not enough arguments!"
elsif ARGV.length > 2
    puts "Too many arguments!"
else
    to_enc = ARGV[0]
    enc_by = ARGV[1]
    #puts to_enc + " " + enc_by
    caesar_shift(to_enc, enc_by)
end

unless ARGV[1].is_a? Integer
    puts "Your second argument needs to be a number!"
end
