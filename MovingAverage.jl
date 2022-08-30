
module MovingAverage

∑ᵢᵏ = sum

SA = (V) -> ∑ᵢᵏ(V) / length(V)
SA = (V, i, k) -> i ≥ 1 && k ≥ i ? ∑ᵢᵏ(V[i:k]) / (1 + (k - i)) : missing

SMA(V, P) = begin

    Vᵣ = reverse(V)
    k(i) = i + P - 1
    n = length(V)
    Rᵥᵣ = [(k(i) <= n && i <= n ? (SA(Vᵣ, i, k(i))) : missing) for i in 1:n]
    reverse(Rᵥᵣ)

end

export SA, SMA
end