print("Введите a: ")
a = gets.chomp().to_f
print("Введите b: ")
b= gets.chomp().to_f
print("Введите c: ")
c= gets.chomp().to_f
d=b*b-4*a*c
if d>0
  x1=( -1*b + Math.sqrt(d) ) / (2 * a)
  x2=( -1*b - Math.sqrt(d) ) / (2 * a)
  print "Первый корень: "
  puts x1
  print "Второй корень: "
  puts x2
else if d==0
    x1=( -1*b + Math.sqrt(d) ) / (2 * a)
    print "Корень: "
    puts x1
    else
      puts "Корней нет"
    end
end
print "Дискриминант: " 
puts d