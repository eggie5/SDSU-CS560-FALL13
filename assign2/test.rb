require './binary'
require './ternary'

n_list = [500, 1000, 2000, 4000, 8000]

n_list.each do |n|
  a=[]
  (0...n).each do |i|
    a[i]=2*i
  end

  rand = Random.rand(2*n)
  (rand%2)==0? rand : rand+=1; #force even

  p "n=#{n}"
  binarySearch( a, rand, 0, a.length, 0)
  ternarySearch(a, rand, 0, a.length, 0)
  p ""
end