using Pseudea
using Base.Test

# write your own tests here
@test 1 == 1 

for i in 1:10
    println(randCZTS()) # 
end

show(randCZTSlattice(10))
