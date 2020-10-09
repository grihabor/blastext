from libcpp.vector cimport vector
from libcpp.string cimport string
from libcpp cimport bool

cdef extern from "corelib/ncbi_safe_static.hpp" namespace "ncbi":
    cdef cppclass CSafeStaticGuard:
        CSafeStaticGuard()

cdef extern from "objects/seqalign/Seq_align_set.hpp":

    cdef cppclass CSeq_align_set:
        CSeq_align_set() except +

cdef extern from "corelib/ncbimisc.hpp":

    ctypedef unsigned int TSeqPos

cdef extern from "corelib/ncbiobj.hpp" namespace "ncbi":

    cdef cppclass CRef[T]:
        CRef()
        CRef(T*)
        Reset(T*)
        T* GetPointer()
        T& GetObject()
        T& operator*()
        bool Empty()


cdef extern from "algo/blast/blastinput/blast_scope_src.hpp" namespace "ncbi::blast":

    cdef cppclass SDataLoaderConfig:
        ctypedef enum EConfigOpts:
            eUseBlastDbDataLoader, # Use the local BLAST database loader first, if this fails, use the remote BLAST database data loader.
            eUseGenbankDataLoader, # Use the Genbank data loader.
            eUseNoDataLoaders, # Do not add any data loaders.
            eDefault

        SDataLoaderConfig(load_proteins: bool, options: EConfigOpts)

cdef extern from "algo/blast/blastinput/blast_input.hpp" namespace "ncbi::blast":
    cdef cppclass CBlastInputSourceConfig:
        CBlastInputSourceConfig(const SDataLoaderConfig &dlconfig)

cdef extern from "algo/blast/blastinput/blast_fasta_input.hpp" namespace "ncbi::blast":
    cdef cppclass CBlastFastaInputSource:
        CBlastFastaInputSource(const string &user_input, const CBlastInputSourceConfig &iconfig)

cdef extern from "algo/blast/api/query_data.hpp" namespace "ncbi::blast":
    cdef cppclass IQueryFactory:
        pass

cdef extern from "algo/blast/api/blast_options.hpp" namespace "ncbi::blast":
    cdef cppclass CBlastOptions:
        ctypedef enum EAPILocality:
            eLocal,
            eRemote,
            eBoth

cdef extern from "algo/blast/api/blast_options_handle.hpp" namespace "ncbi::blast":
    cdef cppclass CBlastOptionsHandle:
        CBlastOptionsHandle(CBlastOptions.EAPILocality)
        bool Validate() const

    cdef cppclass CBlastOptionsFactory:
        @staticmethod
        CBlastOptionsHandle* Create(program: EProgram, CBlastOptions.EAPILocality locality )

cdef extern from "algo/blast/api/uniform_search.hpp" namespace "ncbi::blast":

    cdef cppclass CSearchDatabase:

        ctypedef enum EMoleculeType:
            eBlastDbIsProtein,
            eBlastDbIsNucleotide

        CSearchDatabase(const string& dbname, EMoleculeType mol_type)

cdef extern from "algo/blast/api/blast_results.hpp" namespace "ncbi::blast":
    cdef cppclass CSearchResult:
        pass

cdef extern from "algo/blast/api/sseqloc.hpp" namespace "ncbi::blast":

    cdef cppclass SSeqLoc:
        SSeqLoc() except +
        # SSeqLoc(const CSeq_loc*, CScope*) except +

    ctypedef vector[SSeqLoc] TSeqLocVector

cdef extern from "algo/blast/api/objmgr_query_data.hpp" namespace "ncbi::blast":
    cdef cppclass CObjMgr_QueryFactory(IQueryFactory):
        CObjMgr_QueryFactory(TSeqLocVector&)

cdef extern from "algo/blast/api/local_blast.hpp" namespace "ncbi::blast":
    cdef cppclass CLocalBlast:
        CLocalBlast(CRef[IQueryFactory], CRef[CBlastOptionsHandle], const CSearchDatabase&)
        CRef[CSearchResult] Run()

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

# cdef extern from "objects/seqloc/Seq_loc.hpp" namespace "ncbi::objects":
#
#     cdef cppclass CSeq_loc:
#         ctypedef TSeqPos TPoint
#         CSeq_loc() except +

cdef extern from "algo/blast/api/bl2seq.hpp" namespace "ncbi::blast":

    cdef cppclass CBl2Seq:
        CBl2Seq(const SSeqLoc&, const SSeqLoc&, EProgram) except +
        TSeqAlignVector Run()

