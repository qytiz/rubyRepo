require 'matrix' 
def begining(a,secondempty,i)
print "Введите строку "
x=gets.chomp
if secondempty
if x==""
logic(a)
else
secondempty=false
end 
end
if x==""
secondempty=true
begining(a,secondempty,i)
end
a[i]=x.split(",").map(&:to_i)
secondempty=false
i+=1
begining(a,secondempty,i)
end

def logic(a)
ocn=0
while ocn<a.size do
if a[ocn].size!=a.size
print  'Матрица не квадратная!'
abort 
end
ocn +=1
end
print "Детерминант матрицы равен: "
print Matrix.rows(a).det
abort
end


i=0
a=[]
secondempty = false
begining(a,secondempty,i)
p Matrix.rows(a).det
