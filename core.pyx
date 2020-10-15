# cython: language_level=3
from core cimport (
    CLocalBlast, CRef, CBlastOptionsHandle, IQueryFactory,
    CObjMgr_QueryFactory, CSearchDatabase, EProgram, CObjectManager,
    SDataLoaderConfig, CBlastInputSourceConfig, CBlastFastaInputSource,
    CScope, CBlastOptionsFactory, eLocal, eDefault, EMoleculeType, eBlastp
)
from libcpp.vector cimport vector
from libcpp.string cimport string
from cython.operator import dereference


# see ./src/sample/app/blast/blast_demo.cpp
def main():
    cdef EProgram program = eBlastp

    cdef CRef[CBlastOptionsHandle] opts
    cdef CBlastOptionsHandle* handle = CBlastOptionsFactory.Create(program, eLocal)
    opts.Reset(handle)
    dereference(opts).Validate()

    cdef CRef[CObjectManager] objmgr = CObjectManager.GetInstance()
    if objmgr.Empty():
        print("failed to initialize object manager")

    cdef SDataLoaderConfig* dlconfig = new SDataLoaderConfig(False, eDefault)
    cdef CBlastInputSourceConfig* iconfig = new CBlastInputSourceConfig(dereference(dlconfig))
    fasta_path = b"in.fasta"
    cdef CBlastFastaInputSource* fasta_input = new CBlastFastaInputSource(fasta_path, dereference(iconfig))
    cdef CScope* scope = new CScope(dereference(objmgr))

    cdef string name = b"test"
    cdef CSearchDatabase* db = new CSearchDatabase(name, EMoleculeType.eBlastDbIsProtein)

    cdef vector[SSeqLoc] v
    cdef CRef[IQueryFactory] q
    q.Reset(new CObjMgr_QueryFactory(v))
    cdef CLocalBlast* blast = new CLocalBlast(q, opts, dereference(db))
    blast.Run()


