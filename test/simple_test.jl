using KaHyPar
using SparseArrays

I = [1,3,1,2,4,5,4,5,7,3,6,7]
J = [1,1,2,2,2,2,3,3,3,4,4,4]
V = Int.(ones(length(I)))

A = sparse(I,J,V)

h = KaHyPar.hypergraph(A)

KaHyPar.partition(h,2,configuration = :edge_cut)

KaHyPar.partition(h,2,configuration = :connectivity)

KaHyPar.partition(h,2,configuration = joinpath(@__DIR__,"../src/config/km1_direct_kway_sea18.ini"))

true
