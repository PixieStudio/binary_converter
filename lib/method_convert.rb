def converter(choice, num)
  if choice == 1 #RGB to Safe Web Colors
    hexa_safe = num.dec_to_hex("rgbsafe")
    rgb_safe = hexa_safe.hex_to_rgb

    " Hex Safe Colors ".title
    puts hexa_safe.center
    " RGB Safe Colors ".title
    puts rgb_safe.center
  
  elsif choice == 2 #Hexa to Safe Web Colors
    nums = num.hex_to_rgb
    hexa_safe = nums.dec_to_hex("rgbsafe")
    rgb_safe = hexa_safe.hex_to_rgb

    " Hex Safe Colors ".title
    puts hexa_safe.center
    " RGB Safe Colors ".title
    puts rgb_safe.center

  elsif choice == 3 #RGB to Hexa
    " Hex RGB ".title
    puts num.dec_to_hex("rgb").center

  elsif choice == 4 #Hexa to RGB
    " RGB Code ".title
    puts num.hex_to_rgb.center

  elsif choice == 5 #Dec > Hexa > Bin
    " Hexadecimal ".title
    puts num.dec_to_hex.center
    " Binaire ".title
    puts num.dec_to_bin.center

  elsif choice == 6 #Hexa > Dec > Bin
    " Decimal ".title
    puts num.hex_to_dec.center
    " Binary ".title
    puts num.hex_to_bin.center

  elsif choice == 7 #Bin > Hexa > Dec
    " Hexadecimal ".title
    puts num.bin_to_hex.center
    " Decimal ".title
    puts num.bin_to_dec.center

  elsif choice == 8 #BCD
    " BCD ".title
    puts num.bcd.center

  else
    " Convertisseur invalide  ".title
    return
  end #Choice

end #def
