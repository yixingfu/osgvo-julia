# install.jl
# install required packages in a system wide location

DEPOT_PATH

deleteat!(DEPOT_PATH, 1:2)

using Pkg

pkgs = [
        "FileIO",
        "JLD2",
        "DSP",
        "StatsBase",
        "Statistics",
        "LinearAlgebra",
        "LightGraphs",
        "OnlineStats",
        "DependentBootstrap",
        "StaticArrays"
        ]
for pkg in pkgs
    Pkg.add(pkg)
end

