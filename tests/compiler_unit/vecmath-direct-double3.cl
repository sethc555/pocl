/* double3 overload of a swapped builtin: one 4-lane library call on AVX2
   hosts (two 2-lane calls otherwise), never the 2-lane call plus a scalar
   call the SLP vectorizer produced. sin is swapped with every libmvec-ABI
   library (glibc libmvec and SLEEF gnuabi alike). */
#pragma OPENCL EXTENSION cl_khr_fp64 : enable
kernel void direct_double3(global const double* a, global double* b)
{
  size_t i = get_global_id(0);
  vstore3(sin(vload3(i, a)), i, b);
}
