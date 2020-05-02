# install.jl
# install required packages in a system wide location

DEPOT_PATH

deleteat!(DEPOT_PATH, 1:2)

using Pkg

pkgs = [
        "FFTW", 
        "MPI", 
        "LinearMaps", 
        "KrylovKit", 
        "Arpack", 
        "HDF5", 
        "CuArrays", 
        "PyPlot", 
        "FileIO", 
        "JLD2", 
        "UnicodePlots"
        ]
for pkg in pkgs
    Pkg.add(pkg)
end

Pkg.add(PackageSpec(path="https://github.com/yixingfu/KPMjulia.jl"))

