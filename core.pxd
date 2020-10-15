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
        void Reset(T*)
        T* GetPointer()
        T& GetObject()
        T& operator*()
        bool Empty()


cdef extern from "algo/blast/blastinput/blast_scope_src.hpp" namespace "ncbi::blast::SDataLoaderConfig":
    cdef enum EConfigOpts:
        eUseBlastDbDataLoader "ncbi::blast::SDataLoaderConfig::EConfigOpts::eUseBlastDbDataLoader" # Use the local BLAST database loader first, if this fails, use the remote BLAST database data loader.
        eUseGenbankDataLoader "ncbi::blast::SDataLoaderConfig::EConfigOpts::eUseGenbankDataLoader" # Use the Genbank data loader.
        eUseNoDataLoaders "ncbi::blast::SDataLoaderConfig::EConfigOpts::eUseNoDataLoaders" # Do not add any data loaders.
        eDefault "ncbi::blast::SDataLoaderConfig::EConfigOpts::eDefault"

cdef extern from "algo/blast/blastinput/blast_scope_src.hpp" namespace "ncbi::blast":
    cdef cppclass SDataLoaderConfig:
        SDataLoaderConfig(bool load_proteins: bool, EConfigOpts options)

cdef extern from "algo/blast/blastinput/blast_input.hpp" namespace "ncbi::blast":
    cdef cppclass CBlastInputSourceConfig:
        CBlastInputSourceConfig(const SDataLoaderConfig &dlconfig)

cdef extern from "algo/blast/blastinput/blast_fasta_input.hpp" namespace "ncbi::blast":
    cdef cppclass CBlastFastaInputSource:
        CBlastFastaInputSource(const string &user_input, const CBlastInputSourceConfig &iconfig)

cdef extern from "algo/blast/api/query_data.hpp" namespace "ncbi::blast":
    cdef cppclass IQueryFactory:
        pass

cdef extern from "algo/blast/api/blast_options.hpp" namespace "ncbi::blast::CBlastOptions":
    cdef enum EAPILocality:
        eLocal "ncbi::blast::CBlastOptions::EAPILocality::eLocal",
        eRemote "ncbi::blast::CBlastOptions::EAPILocality::eRemote",
        eBoth "ncbi::blast::CBlastOptions::EAPILocality::eBoth"

cdef extern from "algo/blast/api/blast_options.hpp" namespace "ncbi::blast":
    cdef cppclass CBlastOptions:
        pass

cdef extern from "algo/blast/api/blast_options_handle.hpp" namespace "ncbi::blast":
    cdef cppclass CBlastOptionsHandle:
        CBlastOptionsHandle(EAPILocality)
        bool Validate() const

    cdef cppclass CBlastOptionsFactory:
        @staticmethod
        CBlastOptionsHandle* Create(EProgram program, EAPILocality locality)

cdef extern from "algo/blast/api/uniform_search.hpp" namespace "ncbi::blast::CSearchDatabase":
    cdef enum EMoleculeType:
        eBlastDbIsProtein "ncbi::blast::CSearchDatabase::EMoleculeType::eBlastDbIsProtein",
        eBlastDbIsNucleotide "ncbi::blast::CSearchDatabase::EMoleculeType::eBlastDbIsNucleotide"

cdef extern from "algo/blast/api/uniform_search.hpp" namespace "ncbi::blast":
    cdef cppclass CSearchDatabase:
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
    cdef enum EProgram:
        eBlastNotSet "ncbi::blast::EProgram::eBlastNotSet", # Not yet set.
        eBlastn "ncbi::blast::EProgram::eBlastn", # Nucl-Nucl (traditional blastn)
        eBlastp "ncbi::blast::EProgram::eBlastp", # Protein-Protein.
        eBlastx "ncbi::blast::EProgram::eBlastx", # Translated nucl-Protein.
        eTblastn "ncbi::blast::EProgram::eTblastn", # Protein-Translated nucl.
        eTblastx "ncbi::blast::EProgram::eTblastx", # Translated nucl-Translated nucl.
        eRPSBlast "ncbi::blast::EProgram::eRPSBlast", # protein-pssm (reverse-position-specific BLAST)
        eRPSTblastn "ncbi::blast::EProgram::eRPSTblastn", # nucleotide-pssm (RPS blast with translated query)
        eMegablast "ncbi::blast::EProgram::eMegablast", # Nucl-Nucl (traditional megablast)
        eDiscMegablast "ncbi::blast::EProgram::eDiscMegablast", # Nucl-Nucl using discontiguous megablast.
        ePSIBlast "ncbi::blast::EProgram::ePSIBlast", # PSI Blast.
        ePSITblastn "ncbi::blast::EProgram::ePSITblastn", # PSI Tblastn.
        ePHIBlastp "ncbi::blast::EProgram::ePHIBlastp", # Protein PHI BLAST.
        ePHIBlastn "ncbi::blast::EProgram::ePHIBlastn", # Nucleotide PHI BLAST.
        eDeltaBlast "ncbi::blast::EProgram::eDeltaBlast", # Delta Blast.
        eVecScreen "ncbi::blast::EProgram::eVecScreen", # Vector screening.
        eMapper "ncbi::blast::EProgram::eMapper", # Jumper alignment for mapping.
        eKBlastp "ncbi::blast::EProgram::eKBlastp", # KMER screening and BLASTP.
        eBlastProgramMax "ncbi::blast::EProgram::eBlastProgramMax" # Undefined program.

    ctypedef vector[CRef[CSeq_align_set]] TSeqAlignVector

cdef extern from "objmgr/object_manager.hpp" namespace "ncbi::objects":

    cdef cppclass CObjectManager:
        @staticmethod
        CRef[CObjectManager] GetInstance()

cdef extern from "objmgr/scope.hpp" namespace "ncbi::objects":

    cdef cppclass CScope:
        CScope(CObjectManager&) except +

cdef extern from "algo/blast/api/bl2seq.hpp" namespace "ncbi::blast":

    cdef cppclass CBl2Seq:
        CBl2Seq(const SSeqLoc&, const SSeqLoc&, EProgram) except +
        TSeqAlignVector Run()

