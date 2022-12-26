# When done, submit this entire file to the autograder.

# Part 1

def sum arr #รวมค่าตัวเลขในตัวแปร array ด้วยคำสั่งsum
  arr.sum
end

def max_2_sum arr #ฟังก์ชันใช้พารามิเตอร์ทางเลือกสองตัว 
  result = 0;
  if arr.empty? #ถ้าในarr ไม่มีค่า จะreturn ค่า0
    return 0
    end
    if arr.length == 1 #การนับข้อมูลภายใน arr ที่มีค่า1
      return arr[0]
      end
      a = arr.max();
      t = arr.index(a) #ย้ายค่าtไปตำแหน่งa
      arr.delete_at(t) #ลบค่าในตำแหน่งt
      b = arr.max();
      result = a + b
      return result #คืนค่าให้result
end

def sum_to_n? arr, n
  if arr.empty?#ถ้าในarr ไม่มีค่า จะreturn ค่าfalse
    return false;
    end
    arr.each do |x|#วนอ่านค่าภายในอาเรย์
      tmp = arr
      tar = n - x
      tmp.delete(x)#ลบค่าในตำแหน่งx
      if tmp.include?(tar)#includeนั้นใช้สำหรับตรวจสอบว่าออบเจ็คที่ระบุเป็นสมาชิกของอาเรย์หรือไม่ และreturnค่าtrue
        return true
      end
    end
    return false
end



def hello(name)
  var = "Hello, " + name#ประกาศvar แล้วตามด้วยชื่อ และreturn ค่า var
  return var
end

def starts_with_consonant? s
  if s.length == 0#การนับข้อมูลภายใน arr ที่มีค่า0 และคือค่า false
    return false
    end
    if ('A'..'Z').include?(s[0].upcase)#ใช้ include เพื่อตรวจสอบว่า A-Z เป็นสมาชิกของอาเรย์หรือไม่ และเปลี่ยนเป็นตัวพิมใหญ่ในs
      var = ['A','E','I','O','U'] #ประกาศ var
      if var.include?(s[0].upcase) # ใช้ include เพื่อตรวจสอบว่า ใน var เป็นสมาชิกของอาเรย์หรือไม่ และเปลี่ยนเป็นตัวพิมใหญ่ในs และ return ค่า false
        return false
        end
        return true
    end
    return false
end

def binary_multiple_of_4? s
  n % 4 == 0 ? "True" : "False"#n หารด้วย 4 จะได้ 0 จริงหรือไม่
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price#ตัวแปรอินสแตนซ์สองตัวคือ @isbn และ @price ซึ่งสามารถเข้าถึงได้ผ่านเมธอด isbn และ price 

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0 #ใน isbn ไม่มีค่า  price <= 0 คือเงื่อนไขที่ตรวจสอบในวิธีการเริ่มต้น หากเงื่อนไขเป็นจริง หมายความว่าราคาของหนังสือน้อยกว่าหรือเท่ากับ 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % price
  end
end
