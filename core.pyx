# cython: language_level=3
from core cimport SSeqLoc, CBl2Seq, eBlastp

def main():
    # cdef CRef[CObjectManager] obj_manager = CObjectManager.GetInstance()
    # cdef CScope *scope = new CScope(obj_manager.GetObject())
    #
    # sl1 = new CSeq_loc()
    # sl2 = new CSeq_loc()

    cdef SSeqLoc loc = SSeqLoc()
    cdef CBl2Seq *seq = new CBl2Seq(loc, loc, eBlastp)
    seq.Run()

