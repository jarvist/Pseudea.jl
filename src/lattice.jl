# Pseudea.jl, daughter of Eris

export Sn,Zn,Cu,S,randCZTS,randCZTSlattice

const Sn=-3
const Zn=-2
const Cu=-1
const S=+2

randCZTS() = [Cu,Sn,Zn,Zn,S,S,S,S][rand(1:8)]
randCZTSlattice(n::Int) =  [randCZTS() for i in 1:n, j in 1:n, k in 1:n]
