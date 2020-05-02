include("Stats.jl")
include("Preprocess.jl")
normal(var) = preprocess.StandardScalar(var)
export normal
export chidist
export binomial_dist
export bernoulli_dist
# <---- Chi Distribution --->
@doc """
      FUNCTION NOT YET WRITTEN\n
      Chi Distribution in another well-known distribution well known for being
      used in statistical tests.\n
      --------------------\n
      array = [5,10,15]\n
      r = Lathe.stats.anova(array)\n
       """ ->
function chidist(x,e)
    #
end
function bernoulli_dist()
    # P(x) = P^x(1-P)^1-x for x=0 eller 1
end
function binomial_dist(positives,size)
    # p = n! / x!(n-x!)*π^x*(1-π)^N-x
    n = size
    x = positives
    factn = factorial(big(n))
    factx = factorial(big(x))
    nx = factn / (factx * (n-x))
    return(nx)
end
