v = v.map{|i| i.delete("$").to_f}
cp = Hash[k.zip(v.map)]
kcoin = 0
moins6k = {}
for i in (0..k.length)
 if (/coin/.match("#{k[i]}"))
  kcoin += 1
 end
end
for i in (0..k.length)
 if (v[i] < 6000)
  moins6k << cp[i]
 end
end
puts "cryptos les plus couteuses #{Hash[cp.sort_by{|k, i| -i}[0..3]]}"
puts "cryptos les moins couteuses #{Hash[cp.sort_by{|k, i| i}[0..3]]}"
puts "nombre de cryptos avec coin dans leur nom #{kcoin}"
puts "les cryptos avec coup inferieur à 6k #{moins6k}"