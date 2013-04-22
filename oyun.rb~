class Oyun
  attr_accessor :uzunluk, :sayac, :sayac1, :k, :kisi, :basamak, :sira, :indis, :araci, :tahmin_sayisi
  def initialize
    tahmin = []
    rand = []
    $global = true
  end
  def kiyasla(tahmin,rand)
    sayac = 0
    sayac1 = 0
    uzunluk = tahmin.length()
    uzunluk = k
    while uzunluk >= 0
    
      while k >= 0
        if tahmin[uzunluk] == rand[k] and uzunluk == k
	  sayac += 1  
	end
        if rand[uzunluk] == tahmin[k] and tahmin[uzunluk] != tahmin[k] and rand[uzunluk] != rand[k]  
	  sayac1 += 1  
	end
        if sayac == 0 and sayac1 == 0 then puts "hic bir sayiyi bilemediniz !" end
	if sayac == tahmin.length() then puts "tebrikler kazandiniz" 
	$global = false 
	elsif sayac != 0 then puts"#{sayac} kadar sayinin yerini dogru bildiniz" end
	if sayac1 != 0 then puts "#{sayac1} kadar sayinin yerini yanlis bildiniz" end
      k -= 1
      end
    
    uzunluk -= 1
    end
  end

  def main 
    o = Oyun.new
    puts "kac oyuncu oynayacak :"
    kisi = gets.to_i
    while true
      puts "basamak sayisini giriniz :"
      basamak = gets.to_i
      if basamak <= 0 then puts "basamak sayisi 3 ten az olamaz"
      else break
      end
    end
    random_sayi = rand()/basamak
    random_sayi = random_sayi.to_i
    indis = 0
    while random_sayi > 0
      mod = random_sayi%10
      rand[indis] = mod
      mod = random_sayi/10
      indis += 1
    end
 
    sira += 1
    while($global)
      puts "#{sira}. oyuncu tahmininizi giriniz :"
      tahmin_sayisi = gets.to_i
      araci = tahmin_sayisi.to_s
      if araci.length() != basamak 
        while(true)
	  puts "#{sira}.oyuncu girdiginiz tahmin istenen basamak sayisinda degil tekrar giriniz :"
	  tahmin_sayisi = gets.to_i
          araci = tahmin_sayisi.to_s
          if araci.length() == basamak then break end
	end
      end 
      indis = 0
      while tahmin_sayisi > 0 
	  mod1 = tahmin_sayisi % 10
	  tahmin[indis] = mod1
	  tahmin_sayisi = tahmin_sayisi / 10
	  indis += 1
      end
      o.kiyasla(tahmin,rand,basamak)
      sira++
      if(sira>kisi) then sira = 1 end
    end
  end
end	     


if __FILE__ == $0
  main
end

  
