# <--- Lathe Pipelines --->
# [deps]
# <--- Lathe Pipelines --->
module pipelines
using Lathe
mutable struct Pipeline
    steps,
    model
end
function predict(pipe)
    fx = []
    for i in steps
        u = i(pipe.model.x)
        append!(fx,u)
    end
    model.x = fx
    pr = Lathe.models.predict(model)
    return(pr)
end
#------------------
end
