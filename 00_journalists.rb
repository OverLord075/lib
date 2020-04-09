my_hash = {}
    my_hash = Hash[CRYPTO.zip(PRICES)] #fusionne les deux tableaux
    PRICES.map!{|str| str.to_f}
my_hash.each do |crypto, price|
    price[0]=""
end