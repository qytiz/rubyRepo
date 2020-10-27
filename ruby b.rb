def an(result,total)
print("Введите название товара: ")
productName = gets.chomp().to_s

if productName!="стоп"
  print("Введите цену товара: ")
  productCost= gets.chomp().to_f
  print("Введите количество товара: ")
  productCounter= gets.chomp().to_f
  result[productName]={productCost=>productCounter}
  total+=productCost*productCounter
  an(result,total)
else
  puts result
  result.each {|key, value|  print "итоговая сумма за #{key} равна "
  value.each{|key2, value2|  puts key2*value2}}
  puts "Общая цена за все товары в корзине равна #{total}"
end
end
result={}
total=0
an(result,total)