def caesar_shift(phrase, diff)
    chopped = ""
    phrase.each_byte{ |c|
    bounds = 0
    if c > 64 && c < 91
        bounds = 65
    elsif c == 32
        chopped += c.chr
        next
    elsif c > 47 && c < 58
        bounds = 48
    else
        bounds = 97
    end
      chopped += ((((c - bounds + diff) % 26) + bounds).chr)
    }
    chopped
end

if ARGV.length < 2
    puts "Not enough arguments!"
elsif ARGV.length > 2
    puts "Too many arguments!"
else
    to_enc = ARGV[0]
    enc_by = ARGV[1]
    enc_by = enc_by.to_i
    #puts to_enc + " " + enc_by
    result = caesar_shift(to_enc, enc_by)
    puts result
end
#puts enc_by.class