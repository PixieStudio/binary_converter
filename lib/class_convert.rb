class String

  def title(h = 'h2')
    i = 48 #Total length

    value = self.to_s #Init title
    lt = value.length #Title length

    if lt < i
      tags1 = (i - lt) / 2 #Tag length 
      lt.odd? ? tags2 = tags1 + 1 : tags2 = tags1
      h == 'h2' ? tag = '-' : tag = '=' #Tag type
    else
      tags1 = 0
      tags2 = 0
    end

    print "\n"
    tags1.times { print tag }
    print value
    tags2.times { print tag }
    if h == "h2"
      print "\n"
      48.times { print '-' }
    end
    print "\n"

    return 
  end

  def center
    i = 48
    value = self.to_s
    lt = value.length
    if lt < i
      tags1 = (i - lt) / 2
      lt.odd? ? tags2 = tags1 + 1 : tags2 = tags1
    end

    result = ""
    tags1.times {result << ' '}
    result << value
    tags2.times {result << ' '}

    return result
  end

  def separator
    result = self.to_s
    48.times { result << '-' }
    return "#{result}\n"
  end

  def bin_to_hex
    self.to_i(2).to_s(10)
  end

  def bin_to_dec
    self.to_i(2).to_s(16)
  end

  def hex_to_dec
    self.to_i(16).to_s(10)
  end

  def hex_to_bin
    self.to_i(16).to_s(2)
  end

  def dec_to_bin
    # self.to_i.to_s(2) #generic binary
    # dec > hexa > bin
    self.to_i(10).to_s(2)
  end

  def dec_to_hex(type = 'hexa')
    nums = self.to_s
    nums.include?(" ") ? nums = nums.gsub(" ", "") : nums
    nums = nums.split(",")
    num_hex = ""

    nums.each do |num|
      num = num.to_i
      # Maximum 255 pour conversion RGB
      if type == 'rgb' || type == 'rgbsafe'
        if num > 255
          puts "--------------- Erreur ---------------"
          puts "255 maximum" 
          return
        end
      end
      # Safe Web Colors
      if type == 'rgbsafe'
        case num
        when 0..25 then num = 0
        when 26..75 then num = 51
        when 76..125 then num = 102
        when 126..175 then num = 153
        when 176..225 then num = 204
        when 226..255 then num = 255
        end
      end
      # Fill string
      num_hex << num.to_hex
    end
    
    # Format hexa
    type != "hexa" ? (return "##{num_hex}") : (return num_hex)
  end #dec_to_hex

  def hex_to_rgb
    nums = self.to_s
    nums.include?("#") ? nums = nums.gsub("#", "") : nums
    nums.strip
    #Init Array for result dec
    result = []
    #Init Array for numbers hexa
    num_a = []
    
    #Sep 2 chars
    while nums != ""
      ln = nums.length < 2 ? nums.length : 2
      #Stock les deux derniers chars
      tpl = nums[-ln,2]
      #Supprime les deux derniers chars de l'array
      nums[-ln,2] = ""
      #Increment array
      num_a << tpl
    end

    #Convert each entries
    num_a.each do |num|
      value = num.to_i(16)
      result << value.to_s
    end
    
    #On replace les valeurs dans l'ordre
    result.reverse!
    result = result.join(", ")
    
    return "rgb(#{result})"
  end #dec_to_rgb

  def bcd
    @bcd_hash = {"0": "0000", "1": "0001", "2": "0010", "3": "0011", "4": "0100", "5": "0101", "6": "0110", "7": "0111", "8": "1000", "9": "1001"}

    nums = self.to_s
    nums = nums.split("")
    result = ""

    nums.each do |num|
      @bcd_hash.each do |dec, bin|
        if num == dec.to_s
          result << "#{bin} "
        end
      end #hash
    end #num

    return result
  end #bcd
end #String


class Numeric
  def to_hex
    to_s(16).rjust(2, '0')
  end
end
