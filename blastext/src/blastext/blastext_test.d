blastext_test.o blastext_test.d : $(wildcard blastext_test.cpp) $(wildcard /usr/include/stdc-predef.h) \
 $(wildcard $(includedir)/ncbi_pch.hpp) \
 $(wildcard ../../include/blastext/blastext.hpp) \
 $(wildcard $(includedir)/corelib/ncbiapp.hpp) \
 $(wildcard $(includedir)/corelib/ncbiargs.hpp) \
 $(wildcard $(includedir)/corelib/ncbiobj.hpp) \
 $(wildcard $(includedir)/corelib/ncbicntr.hpp) \
 $(wildcard $(includedir)/corelib/ncbistd.hpp) \
 $(wildcard $(includedir)/corelib/ncbistr.hpp) \
 $(wildcard $(includedir)/corelib/ncbi_limits.hpp) \
 $(wildcard $(includedir)/corelib/ncbi_limits.h) \
 $(wildcard $(includedir)/corelib/ncbitype.h) \
 $(wildcard $(includedir)/ncbiconf.h) \
 $(wildcard $(incdir)/ncbiconf_unix.h) \
 $(wildcard $(includedir)/common/ncbiconf_impl.h) \
 $(wildcard $(includedir)/common/ncbi_build_info.h) \
 $(wildcard $(incdir)/common/ncbi_build_ver.h) \
 $(wildcard $(includedir)/common/ncbi_skew_guard.h) \
 $(wildcard /usr/include/inttypes.h) $(wildcard /usr/include/features.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/sys/cdefs.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/wordsize.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/long-double.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/gnu/stubs.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/gnu/stubs-64.h) \
 $(wildcard /usr/lib/gcc/x86_64-linux-gnu/7/include/stdint.h) $(wildcard /usr/include/stdint.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/libc-header-start.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/typesizes.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/wchar.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/stdint-intn.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/stdint-uintn.h) \
 $(wildcard /usr/lib/gcc/x86_64-linux-gnu/7/include-fixed/limits.h) \
 $(wildcard /usr/lib/gcc/x86_64-linux-gnu/7/include-fixed/syslimits.h) \
 $(wildcard /usr/include/limits.h) $(wildcard /usr/include/x86_64-linux-gnu/bits/posix1_lim.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/local_lim.h) \
 $(wildcard /usr/include/linux/limits.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/posix2_lim.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/xopen_lim.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/uio_lim.h) \
 $(wildcard /usr/lib/gcc/x86_64-linux-gnu/7/include/float.h) $(wildcard /usr/include/wchar.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/floatn.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/floatn-common.h) \
 $(wildcard /usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h) \
 $(wildcard /usr/lib/gcc/x86_64-linux-gnu/7/include/stdarg.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/wint_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/__FILE.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/FILE.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/locale_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/__locale_t.h) \
 $(wildcard $(includedir)/corelib/ncbistl.hpp) \
 $(wildcard $(includedir)/common/ncbi_export.h) \
 $(wildcard /usr/include/c++/7/string) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/os_defines.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/cpu_defines.h) \
 $(wildcard /usr/include/c++/7/bits/stringfwd.h) $(wildcard /usr/include/c++/7/bits/memoryfwd.h) \
 $(wildcard /usr/include/c++/7/bits/char_traits.h) \
 $(wildcard /usr/include/c++/7/bits/stl_algobase.h) \
 $(wildcard /usr/include/c++/7/bits/functexcept.h) \
 $(wildcard /usr/include/c++/7/bits/exception_defines.h) \
 $(wildcard /usr/include/c++/7/bits/cpp_type_traits.h) \
 $(wildcard /usr/include/c++/7/ext/type_traits.h) \
 $(wildcard /usr/include/c++/7/ext/numeric_traits.h) \
 $(wildcard /usr/include/c++/7/bits/stl_pair.h) $(wildcard /usr/include/c++/7/bits/move.h) \
 $(wildcard /usr/include/c++/7/bits/concept_check.h) $(wildcard /usr/include/c++/7/type_traits) \
 $(wildcard /usr/include/c++/7/bits/stl_iterator_base_types.h) \
 $(wildcard /usr/include/c++/7/bits/stl_iterator_base_funcs.h) \
 $(wildcard /usr/include/c++/7/debug/assertions.h) \
 $(wildcard /usr/include/c++/7/bits/stl_iterator.h) \
 $(wildcard /usr/include/c++/7/bits/ptr_traits.h) $(wildcard /usr/include/c++/7/debug/debug.h) \
 $(wildcard /usr/include/c++/7/bits/predefined_ops.h) \
 $(wildcard /usr/include/c++/7/bits/postypes.h) $(wildcard /usr/include/c++/7/cwchar) \
 $(wildcard /usr/include/c++/7/cstdint) $(wildcard /usr/include/c++/7/bits/allocator.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/c++allocator.h) \
 $(wildcard /usr/include/c++/7/ext/new_allocator.h) $(wildcard /usr/include/c++/7/new) \
 $(wildcard /usr/include/c++/7/exception) $(wildcard /usr/include/c++/7/bits/exception.h) \
 $(wildcard /usr/include/c++/7/bits/exception_ptr.h) \
 $(wildcard /usr/include/c++/7/bits/cxxabi_init_exception.h) \
 $(wildcard /usr/include/c++/7/typeinfo) $(wildcard /usr/include/c++/7/bits/hash_bytes.h) \
 $(wildcard /usr/include/c++/7/bits/nested_exception.h) \
 $(wildcard /usr/include/c++/7/bits/localefwd.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/c++locale.h) \
 $(wildcard /usr/include/c++/7/clocale) $(wildcard /usr/include/locale.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/locale.h) $(wildcard /usr/include/c++/7/iosfwd) \
 $(wildcard /usr/include/c++/7/cctype) $(wildcard /usr/include/ctype.h) $(wildcard /usr/include/endian.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/endian.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/byteswap.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/byteswap-16.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/uintn-identity.h) \
 $(wildcard /usr/include/c++/7/bits/ostream_insert.h) \
 $(wildcard /usr/include/c++/7/bits/cxxabi_forced.h) \
 $(wildcard /usr/include/c++/7/bits/stl_function.h) \
 $(wildcard /usr/include/c++/7/backward/binders.h) \
 $(wildcard /usr/include/c++/7/bits/range_access.h) \
 $(wildcard /usr/include/c++/7/initializer_list) \
 $(wildcard /usr/include/c++/7/bits/basic_string.h) \
 $(wildcard /usr/include/c++/7/ext/atomicity.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/gthr.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/gthr-default.h) \
 $(wildcard /usr/include/pthread.h) $(wildcard /usr/include/sched.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/time_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/sched.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/cpu-set.h) $(wildcard /usr/include/time.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/time.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/timex.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/clock_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/struct_tm.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/timer_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/struct_itimerspec.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/setjmp.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/atomic_word.h) \
 $(wildcard /usr/include/c++/7/ext/alloc_traits.h) \
 $(wildcard /usr/include/c++/7/bits/alloc_traits.h) \
 $(wildcard /usr/include/c++/7/ext/string_conversions.h) $(wildcard /usr/include/c++/7/cstdlib) \
 $(wildcard /usr/include/stdlib.h) $(wildcard /usr/include/x86_64-linux-gnu/bits/waitflags.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/waitstatus.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/sys/types.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/sys/select.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/select.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/sys/sysmacros.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/sysmacros.h) $(wildcard /usr/include/alloca.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/stdlib-float.h) \
 $(wildcard /usr/include/c++/7/bits/std_abs.h) $(wildcard /usr/include/c++/7/cstdio) \
 $(wildcard /usr/include/stdio.h) $(wildcard /usr/include/x86_64-linux-gnu/bits/libio.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/_G_config.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/stdio_lim.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/sys_errlist.h) \
 $(wildcard /usr/include/c++/7/cerrno) $(wildcard /usr/include/errno.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/errno.h) $(wildcard /usr/include/linux/errno.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/asm/errno.h) \
 $(wildcard /usr/include/asm-generic/errno.h) $(wildcard /usr/include/asm-generic/errno-base.h) \
 $(wildcard /usr/include/c++/7/bits/functional_hash.h) \
 $(wildcard /usr/include/c++/7/bits/basic_string.tcc) $(wildcard /usr/include/c++/7/algorithm) \
 $(wildcard /usr/include/c++/7/utility) $(wildcard /usr/include/c++/7/bits/stl_relops.h) \
 $(wildcard /usr/include/c++/7/bits/stl_algo.h) \
 $(wildcard /usr/include/c++/7/bits/algorithmfwd.h) \
 $(wildcard /usr/include/c++/7/bits/stl_heap.h) $(wildcard /usr/include/c++/7/bits/stl_tempbuf.h) \
 $(wildcard /usr/include/c++/7/bits/stl_construct.h) \
 $(wildcard /usr/include/c++/7/bits/uniform_int_dist.h) $(wildcard /usr/include/c++/7/limits) \
 $(wildcard /usr/include/c++/7/ext/concurrence.h) \
 $(wildcard /usr/include/c++/7/bits/unique_ptr.h) $(wildcard /usr/include/c++/7/tuple) \
 $(wildcard /usr/include/c++/7/array) $(wildcard /usr/include/c++/7/stdexcept) \
 $(wildcard /usr/include/c++/7/bits/uses_allocator.h) \
 $(wildcard /usr/include/c++/7/bits/invoke.h) $(wildcard /usr/include/c++/7/bits/shared_ptr.h) \
 $(wildcard /usr/include/c++/7/bits/shared_ptr_base.h) \
 $(wildcard /usr/include/c++/7/bits/allocated_ptr.h) \
 $(wildcard /usr/include/c++/7/bits/refwrap.h) \
 $(wildcard /usr/include/c++/7/ext/aligned_buffer.h) \
 $(wildcard /usr/include/c++/7/backward/auto_ptr.h) \
 $(wildcard $(includedir)/corelib/tempstr.hpp) \
 $(wildcard $(includedir)/corelib/ncbiexpt.hpp) \
 $(wildcard $(includedir)/corelib/ncbimisc.hpp) \
 $(wildcard $(includedir)/corelib/ncbidbg.hpp) \
 $(wildcard $(includedir)/corelib/ncbidiag.hpp) \
 $(wildcard $(includedir)/corelib/ncbi_stack.hpp) \
 $(wildcard $(includedir)/corelib/ncbistre.hpp) \
 $(wildcard $(includedir)/corelib/ncbictype.hpp) \
 $(wildcard /usr/include/c++/7/iostream) $(wildcard /usr/include/c++/7/ostream) \
 $(wildcard /usr/include/c++/7/ios) $(wildcard /usr/include/c++/7/bits/ios_base.h) \
 $(wildcard /usr/include/c++/7/bits/locale_classes.h) \
 $(wildcard /usr/include/c++/7/bits/locale_classes.tcc) \
 $(wildcard /usr/include/c++/7/system_error) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/error_constants.h) \
 $(wildcard /usr/include/c++/7/streambuf) $(wildcard /usr/include/c++/7/bits/streambuf.tcc) \
 $(wildcard /usr/include/c++/7/bits/basic_ios.h) \
 $(wildcard /usr/include/c++/7/bits/locale_facets.h) $(wildcard /usr/include/c++/7/cwctype) \
 $(wildcard /usr/include/wctype.h) $(wildcard /usr/include/x86_64-linux-gnu/bits/wctype-wchar.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/ctype_base.h) \
 $(wildcard /usr/include/c++/7/bits/streambuf_iterator.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/ctype_inline.h) \
 $(wildcard /usr/include/c++/7/bits/locale_facets.tcc) \
 $(wildcard /usr/include/c++/7/bits/basic_ios.tcc) \
 $(wildcard /usr/include/c++/7/bits/ostream.tcc) $(wildcard /usr/include/c++/7/istream) \
 $(wildcard /usr/include/c++/7/bits/istream.tcc) $(wildcard /usr/include/c++/7/fstream) \
 $(wildcard /usr/include/c++/7/bits/codecvt.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/basic_file.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/c++io.h) \
 $(wildcard /usr/include/c++/7/bits/fstream.tcc) \
 $(wildcard /usr/include/c++/7/backward/strstream) \
 $(wildcard /usr/include/c++/7/backward/backward_warning.h) \
 $(wildcard /usr/include/c++/7/iomanip) $(wildcard /usr/include/c++/7/locale) \
 $(wildcard /usr/include/c++/7/bits/locale_facets_nonio.h) $(wildcard /usr/include/c++/7/ctime) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/time_members.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/c++/7/bits/messages_members.h) \
 $(wildcard /usr/include/libintl.h) $(wildcard /usr/include/c++/7/bits/locale_facets_nonio.tcc) \
 $(wildcard /usr/include/c++/7/bits/locale_conv.h) \
 $(wildcard /usr/include/c++/7/bits/stringfwd.h) $(wildcard /usr/include/c++/7/bits/allocator.h) \
 $(wildcard /usr/include/c++/7/bits/codecvt.h) $(wildcard /usr/include/c++/7/bits/unique_ptr.h) \
 $(wildcard $(includedir)/corelib/ncbi_base64.h) \
 $(wildcard /usr/include/c++/7/list) $(wildcard /usr/include/c++/7/bits/stl_list.h) \
 $(wildcard /usr/include/c++/7/bits/list.tcc) $(wildcard /usr/include/c++/7/memory) \
 $(wildcard /usr/include/c++/7/bits/stl_uninitialized.h) \
 $(wildcard /usr/include/c++/7/bits/stl_raw_storage_iter.h) \
 $(wildcard /usr/include/c++/7/bits/shared_ptr_atomic.h) \
 $(wildcard /usr/include/c++/7/bits/atomic_base.h) \
 $(wildcard /usr/include/c++/7/bits/atomic_lockfree_defines.h) \
 $(wildcard /usr/include/c++/7/deque) $(wildcard /usr/include/c++/7/bits/stl_deque.h) \
 $(wildcard /usr/include/c++/7/bits/deque.tcc) $(wildcard /usr/include/c++/7/vector) \
 $(wildcard /usr/include/c++/7/bits/stl_vector.h) \
 $(wildcard /usr/include/c++/7/bits/stl_bvector.h) $(wildcard /usr/include/c++/7/bits/vector.tcc) \
 $(wildcard /usr/include/c++/7/map) $(wildcard /usr/include/c++/7/bits/stl_tree.h) \
 $(wildcard /usr/include/c++/7/bits/stl_map.h) $(wildcard /usr/include/c++/7/bits/stl_multimap.h) \
 $(wildcard $(includedir)/corelib/ncbidiag.inl) \
 $(wildcard /usr/include/c++/7/stdlib.h) $(wildcard /usr/include/string.h) $(wildcard /usr/include/strings.h) \
 $(wildcard $(includedir)/corelib/ncbierror.hpp) \
 $(wildcard $(includedir)/corelib/impl/ncbierror_impl.hpp) \
 $(wildcard /usr/include/c++/7/set) $(wildcard /usr/include/c++/7/bits/stl_set.h) \
 $(wildcard /usr/include/c++/7/bits/stl_multiset.h) $(wildcard /usr/include/c++/7/functional) \
 $(wildcard /usr/include/c++/7/bits/std_function.h) \
 $(wildcard $(includedir)/corelib/impl/stringutf8_deprecated.hpp) \
 $(wildcard $(includedir)/corelib/impl/stringutf8_deprecated.inl) \
 $(wildcard $(includedir)/corelib/impl/ncbi_atomic_defs.h) \
 $(wildcard /usr/include/c++/7/atomic) \
 $(wildcard $(includedir)/corelib/ncbiatomic.hpp) \
 $(wildcard $(includedir)/corelib/ncbiatomic.h) \
 $(wildcard $(includedir)/corelib/ddumpable.hpp) \
 $(wildcard $(includedir)/corelib/ncbitime.hpp) \
 $(wildcard $(includedir)/corelib/ncbienv.hpp) \
 $(wildcard $(includedir)/corelib/ncbimtx.hpp) \
 $(wildcard $(includedir)/corelib/ncbithr_conf.hpp) \
 $(wildcard /usr/include/x86_64-linux-gnu/sys/errno.h) \
 $(wildcard $(includedir)/corelib/guard.hpp) \
 $(wildcard $(includedir)/corelib/ncbimtx.inl) \
 $(wildcard /usr/include/c++/7/iterator) $(wildcard /usr/include/c++/7/bits/stream_iterator.h) \
 $(wildcard $(includedir)/corelib/metareg.hpp) \
 $(wildcard $(includedir)/corelib/ncbireg.hpp) \
 $(wildcard $(includedir)/corelib/version.hpp) \
 $(wildcard $(includedir)/corelib/ncbifile.hpp) \
 $(wildcard $(includedir)/corelib/ncbi_system.hpp) \
 $(wildcard $(includedir)/corelib/ncbi_mask.hpp) \
 $(wildcard $(includedir)/corelib/ncbi_param.hpp) \
 $(wildcard $(includedir)/corelib/ncbithr.hpp) \
 $(wildcard $(includedir)/corelib/ncbi_process.hpp) \
 $(wildcard $(includedir)/corelib/interprocess_lock.hpp) \
 $(wildcard $(includedir)/corelib/ncbi_safe_static.hpp) \
 $(wildcard $(includedir)/corelib/impl/ncbi_param_impl.hpp) \
 $(wildcard $(includedir)/corelib/reader_writer.hpp) \
 $(wildcard /usr/include/x86_64-linux-gnu/sys/stat.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/stat.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/sys/param.h) $(wildcard /usr/include/signal.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/signum.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/signum-generic.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/siginfo-arch.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/siginfo-consts.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/siginfo-consts-arch.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/sigval_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/sigevent_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/sigevent-consts.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/sigaction.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/sigcontext.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/stack_t.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/sys/ucontext.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/sigstack.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/ss_flags.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/types/struct_sigstack.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/sigthread.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/bits/param.h) $(wildcard /usr/include/linux/param.h) \
 $(wildcard /usr/include/x86_64-linux-gnu/asm/param.h) \
 $(wildcard /usr/include/asm-generic/param.h)
