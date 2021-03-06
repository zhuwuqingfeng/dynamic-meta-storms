OMPFLG=-fopenmp
HASHFLG=-Wno-deprecated
BUILDFLG=-w -ffunction-sections -fdata-sections -fmodulo-sched -msse
EXE_TAL=bin/MS-single-to-table
EXE_T2S=bin/MS-table-to-single
EXE_CMP=bin/MS-comp-taxa
EXE_CPD=bin/MS-comp-taxa-dynamic
EXE_MMR=bin/MS-make-ref

tax:
	$(CXX) -o $(EXE_TAL) src/taxa_sel.cpp $(HASHFLG) $(BUILDFLG) $(OMPFLG) $(CXXFLAGS)
	$(CXX) -o $(EXE_T2S) src/table2single.cpp $(HASHFLG) $(BUILDFLG) $(OMPFLG) $(CXXFLAGS)
	$(CXX) -o $(EXE_CMP) src/comp_sam.cpp $(HASHFLG) $(BUILDFLG) $(OMPFLG) $(CXXFLAGS)
	$(CXX) -o $(EXE_CPD) src/comp_sam_dynamic.cpp $(HASHFLG) $(BUILDFLG) $(OMPFLG) $(CXXFLAGS)
	$(CXX) -o $(EXE_MMR) src/make_ref.cpp $(HASHFLG) $(BUILDFLG) $(OMPFLG) $(CXXFLAGS)

clean:
	rm -rf bin/* src/*.o
