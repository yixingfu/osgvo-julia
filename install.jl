# install.jl
# install required packages in a system wide location

DEPOT_PATH

deleteat!(DEPOT_PATH, 1:2)

using Pkg

pkgs = [
        "FFTW", 
        "LinearMaps", 
        "KrylovKit", 
        "Arpack", 
        "HDF5", 
        "FileIO", 
        "JLD2", 
        "UnicodePlots",
        "CUDA"
        ]
for pkg in pkgs
    Pkg.add(pkg)
end

Pkg.add(PackageSpec(path="https://github.com/yixingfu/KPMjulia.jl"))

