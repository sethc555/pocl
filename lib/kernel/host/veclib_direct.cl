/* Copyright (c) 2026 PoCL developers. MIT license, see COPYING.

   Swapped transcendental builtins for the CPU device when a vector math
   library with the libmvec ABI is selected: explicit vector types call the
   library directly (see DEFINE_VECLIB_V_V in templates.h), the scalar
   overload keeps the Clang builtin, and half stays on the Clang builtin
   where one exists (CORE-Math provides the rest). One block per function,
   enabled by the -DPOCL_VECMATH_SWAP_<f> flags CMake derives from the
   library table minus the deny list. */

#include "../templates.h"

#ifdef POCL_VECMATH_SWAP_sin
#if __has_builtin(__builtin_sinf16)
DEFINE_BUILTIN_V_V_F16ONLY(sin)
#endif
DEFINE_VECLIB_V_V(sin)
#endif

#ifdef POCL_VECMATH_SWAP_cos
#if __has_builtin(__builtin_cosf16)
DEFINE_BUILTIN_V_V_F16ONLY(cos)
#endif
DEFINE_VECLIB_V_V(cos)
#endif

#ifdef POCL_VECMATH_SWAP_tan
#if __has_builtin(__builtin_tanf16)
DEFINE_BUILTIN_V_V_F16ONLY(tan)
#endif
DEFINE_VECLIB_V_V(tan)
#endif

#ifdef POCL_VECMATH_SWAP_exp
#if __has_builtin(__builtin_expf16)
DEFINE_BUILTIN_V_V_F16ONLY(exp)
#endif
DEFINE_VECLIB_V_V(exp)
#endif

#ifdef POCL_VECMATH_SWAP_log
#if __has_builtin(__builtin_logf16)
DEFINE_BUILTIN_V_V_F16ONLY(log)
#endif
DEFINE_VECLIB_V_V(log)
#endif

#ifdef POCL_VECMATH_SWAP_acos
#if __has_builtin(__builtin_acosf16)
DEFINE_BUILTIN_V_V_F16ONLY(acos)
#endif
DEFINE_VECLIB_V_V(acos)
#endif

#ifdef POCL_VECMATH_SWAP_acosh
#if __has_builtin(__builtin_acoshf16)
DEFINE_BUILTIN_V_V_F16ONLY(acosh)
#endif
DEFINE_VECLIB_V_V(acosh)
#endif

#ifdef POCL_VECMATH_SWAP_asin
#if __has_builtin(__builtin_asinf16)
DEFINE_BUILTIN_V_V_F16ONLY(asin)
#endif
DEFINE_VECLIB_V_V(asin)
#endif

#ifdef POCL_VECMATH_SWAP_asinh
#if __has_builtin(__builtin_asinhf16)
DEFINE_BUILTIN_V_V_F16ONLY(asinh)
#endif
DEFINE_VECLIB_V_V(asinh)
#endif

#ifdef POCL_VECMATH_SWAP_atan
#if __has_builtin(__builtin_atanf16)
DEFINE_BUILTIN_V_V_F16ONLY(atan)
#endif
DEFINE_VECLIB_V_V(atan)
#endif

#ifdef POCL_VECMATH_SWAP_atanh
#if __has_builtin(__builtin_atanhf16)
DEFINE_BUILTIN_V_V_F16ONLY(atanh)
#endif
DEFINE_VECLIB_V_V(atanh)
#endif

#ifdef POCL_VECMATH_SWAP_cbrt
#if __has_builtin(__builtin_cbrtf16)
DEFINE_BUILTIN_V_V_F16ONLY(cbrt)
#endif
DEFINE_VECLIB_V_V(cbrt)
#endif

#ifdef POCL_VECMATH_SWAP_cosh
#if __has_builtin(__builtin_coshf16)
DEFINE_BUILTIN_V_V_F16ONLY(cosh)
#endif
DEFINE_VECLIB_V_V(cosh)
#endif

#ifdef POCL_VECMATH_SWAP_erf
#if __has_builtin(__builtin_erff16)
DEFINE_BUILTIN_V_V_F16ONLY(erf)
#endif
DEFINE_VECLIB_V_V(erf)
#endif

#ifdef POCL_VECMATH_SWAP_erfc
#if __has_builtin(__builtin_erfcf16)
DEFINE_BUILTIN_V_V_F16ONLY(erfc)
#endif
DEFINE_VECLIB_V_V(erfc)
#endif

#ifdef POCL_VECMATH_SWAP_exp10
#if __has_builtin(__builtin_exp10f16)
DEFINE_BUILTIN_V_V_F16ONLY(exp10)
#endif
DEFINE_VECLIB_V_V(exp10)
#endif

#ifdef POCL_VECMATH_SWAP_exp2
#if __has_builtin(__builtin_exp2f16)
DEFINE_BUILTIN_V_V_F16ONLY(exp2)
#endif
DEFINE_VECLIB_V_V(exp2)
#endif

#ifdef POCL_VECMATH_SWAP_expm1
#if __has_builtin(__builtin_expm1f16)
DEFINE_BUILTIN_V_V_F16ONLY(expm1)
#endif
DEFINE_VECLIB_V_V(expm1)
#endif

#ifdef POCL_VECMATH_SWAP_log10
#if __has_builtin(__builtin_log10f16)
DEFINE_BUILTIN_V_V_F16ONLY(log10)
#endif
DEFINE_VECLIB_V_V(log10)
#endif

#ifdef POCL_VECMATH_SWAP_log1p
#if __has_builtin(__builtin_log1pf16)
DEFINE_BUILTIN_V_V_F16ONLY(log1p)
#endif
DEFINE_VECLIB_V_V(log1p)
#endif

#ifdef POCL_VECMATH_SWAP_log2
#if __has_builtin(__builtin_log2f16)
DEFINE_BUILTIN_V_V_F16ONLY(log2)
#endif
DEFINE_VECLIB_V_V(log2)
#endif

#ifdef POCL_VECMATH_SWAP_sinh
#if __has_builtin(__builtin_sinhf16)
DEFINE_BUILTIN_V_V_F16ONLY(sinh)
#endif
DEFINE_VECLIB_V_V(sinh)
#endif

#ifdef POCL_VECMATH_SWAP_tanh
#if __has_builtin(__builtin_tanhf16)
DEFINE_BUILTIN_V_V_F16ONLY(tanh)
#endif
DEFINE_VECLIB_V_V(tanh)
#endif

#ifdef POCL_VECMATH_SWAP_pow
#if __has_builtin(__builtin_powf16)
DEFINE_BUILTIN_V_VV_F16ONLY(pow)
#endif
DEFINE_VECLIB_V_VV(pow)
#endif

#ifdef POCL_VECMATH_SWAP_atan2
#if __has_builtin(__builtin_atan2f16)
DEFINE_BUILTIN_V_VV_F16ONLY(atan2)
#endif
DEFINE_VECLIB_V_VV(atan2)
#endif

#ifdef POCL_VECMATH_SWAP_hypot
#if __has_builtin(__builtin_hypotf16)
DEFINE_BUILTIN_V_VV_F16ONLY(hypot)
#endif
DEFINE_VECLIB_V_VV(hypot)
#endif
