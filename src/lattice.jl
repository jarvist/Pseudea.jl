# Pseudea.jl, daughter of Eris

export Sn,Zn,Cu,S
export randCZTS,randCZTSlattice,moduloCZTSlattice

const Sn=-3
const Zn=-2
const Cu=-1
const S=+2

randCZTS() = [Cu,Sn,Zn,Zn,S,S,S,S][rand(1:8)]
randCZTSlattice(n::Int) =  [randCZTS() for i in 1:n, j in 1:n, k in 1:n]

function moduloCZTSlattice(n::Int)
    lattice=Array{Int}(n,n,n)

    for i in 1:n
        for j in 1:n
            for k in 1:n
                if ((i+j+k)%2==0) lattice[i,j,k]=+2 end # paint the sulphur in; i+j+k = EVEN
                if ((i+j+k)%4==1) lattice[i,j,k]=-2 end 
                if ((i+j+k)%8==3) lattice[i,j,k]=-3 end 
                if ((i+j+k)%8==7) lattice[i,j,k]=-1 end 
            end
        end
    end
    return(lattice)
end
