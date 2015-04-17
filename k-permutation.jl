using BinDeps,Compat
run(`make`)
const lib = "lib.so"
Libdl.dlopen_e(lib)
perm(a::Array,k) = ccall((:AInext_k_permutation, lib), Int32,
    (Ptr{Void}, Uint, Uint), pointer(a), length(a), k)
a = Uint32[0,0,1,2];
k = 2

while true
    println(a[1:k])
    if perm(a,k)==0
        break
    end
end
