using Pseudea
using Base.Test

# write your own tests here
@test 1 == 1 

println("Ten random atomic samples from CZTS...")
for i in 1:10
    println(randCZTS()) # 
end

println("A 5x5x5 CZTS random lattice...")
show(randCZTSlattice(5))

println("A 4x4x4 CZTS modulo lattice...")
show(moduloCZTSlattice(4))
