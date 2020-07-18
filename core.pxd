

cdef extern from "algo/blast/api/sseqloc.hpp":
    cdef cppclass SSeqLoc:
        SSeqLoc() except +
