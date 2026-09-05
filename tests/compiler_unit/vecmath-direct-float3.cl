/* An explicit-vector kernel does not loop-vectorize. With the direct
   vector-library calls, the float3 overload of a swapped builtin is one
   4-lane library call (padded to 4, .xyz taken) instead of what the SLP
   vectorizer makes of three per-element calls (a scalar plus a 2-lane
   intrinsic, both lowered to scalar libm). */
kernel void direct_float3(global const float* a, global float* b)
{
  size_t i = get_global_id(0);
  vstore3(sin(vload3(i, a)), i, b);
}
