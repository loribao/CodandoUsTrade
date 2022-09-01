
module MovingAverage

∑ᵢᵏ = sum
len
SMA(V, P) = [ K>=P && 0<P<=length(V) ? ∑ᵢᵏ(V[K-P+1:K])/P : missing for K ∈ 1:length(V)]

export SMA
end