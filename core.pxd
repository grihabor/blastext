from libcpp.vector cimport vector

cdef extern from "objects/seqalign/Seq_align_set.hpp":

    cdef cppclass CSeq_align_set:
        CSeq_align_set() except +

cdef extern from "corelib/ncbimisc.hpp":

    ctypedef unsigned int TSeqPos

cdef extern from "corelib/ncbiobj.hpp" namespace "ncbi":

    cdef cppclass CRef[T]:
        CRef()
        T* GetPointer()
        T& GetObject()

cdef extern from "algo/blast/api/blast_types.hpp" namespace "ncbi::blast":

    ctypedef enum EProgram:
        eBlastNotSet, # Not yet set.
        eBlastn, # Nucl-Nucl (traditional blastn)
        eBlastp, # Protein-Protein.
        eBlastx, # Translated nucl-Protein.
        eTblastn, # Protein-Translated nucl.
        eTblastx, # Translated nucl-Translated nucl.
        eRPSBlast, # protein-pssm (reverse-position-specific BLAST)
        eRPSTblastn, # nucleotide-pssm (RPS blast with translated query)
        eMegablast, # Nucl-Nucl (traditional megablast)
        eDiscMegablast, # Nucl-Nucl using discontiguous megablast.
        ePSIBlast, # PSI Blast.
        ePSITblastn, # PSI Tblastn.
        ePHIBlastp, # Protein PHI BLAST.
        ePHIBlastn, # Nucleotide PHI BLAST.
        eDeltaBlast, # Delta Blast.
        eVecScreen, # Vector screening.
        eMapper, # Jumper alignment for mapping.
        eKBlastp, # KMER screening and BLASTP.
        eBlastProgramMax # Undefined program.

    ctypedef vector[CRef[CSeq_align_set]] TSeqAlignVector

cdef extern from "objmgr/object_manager.hpp" namespace "ncbi::objects":

    cdef cppclass CObjectManager:
        @staticmethod
        CRef[CObjectManager] GetInstance()

cdef extern from "objmgr/scope.hpp" namespace "ncbi::objects":

    cdef cppclass CScope:
        CScope(CObjectManager&) except +

cdef extern from "objects/seqloc/Seq_loc.hpp" namespace "ncbi::objects":

    cdef cppclass CSeq_loc:
        ctypedef TSeqPos TPoint
        CSeq_loc() except +

cdef extern from "algo/blast/api/sseqloc.hpp" namespace "ncbi::blast":

    cdef cppclass SSeqLoc:
        SSeqLoc() except +
        SSeqLoc(const CSeq_loc*, CScope*) except +

cdef extern from "algo/blast/api/bl2seq.hpp" namespace "ncbi::blast":

    cdef cppclass CBl2Seq:
        CBl2Seq(const SSeqLoc&, const SSeqLoc&, EProgram) except +
        TSeqAlignVector Run()
