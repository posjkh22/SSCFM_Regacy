
#include <string.h>
#include "SignalCodeImplanter.hpp"

using namespace llvm;

extern char target_symbol[];

SignalCodeImplanter::SignalCodeImplanter(LLVMContext& context)
	: m_context(context)
{
	p_Analyzer = nullptr;
}

bool SignalCodeImplanter::TakeAnalysisResults(Analyzer* analyzer)
{
	if(p_Analyzer == nullptr)
	{
		p_Analyzer = analyzer;
		p_CompactImplantedBBList 
			= p_Analyzer->getCompactImplantedBBList();
		p_ParsedIRmodule = p_Analyzer->getIRmodule();
	}

	else
	{
		delete p_Analyzer;
		p_Analyzer = analyzer;
		p_CompactImplantedBBList 
			= p_Analyzer->getCompactImplantedBBList();
		p_ParsedIRmodule = p_Analyzer->getIRmodule();
	}


	if(analyzer->getAnalysisType() == Analyzer::FINE_GRAINED)
	{
		m_level = IMPLANT_LEVEL::FINE_GRAINED_LEVEL;
		return true;
	}
	else if(analyzer->getAnalysisType() == Analyzer::COARSE_GRAINED)
	{
		m_level = IMPLANT_LEVEL::COARSE_GRAINED_LEVEL;
		return true;
	}
	else
	{
		std::cout << "[ERROR] Undefined Analysis Type " << std::endl;
		return false;
	}


	/*
	for(auto iter = p_CompactImplantedBBList->begin();
			iter != p_CompactImplantedBBList->end(); iter++)

	{
		std::cout << "node_id: " << std::hex << iter->second << std::oct << std::endl;
	}
	*/
}

bool SignalCodeImplanter::run()
{

	if(m_level == FINE_GRAINED_LEVEL)
	{
		std::cout << " -RunFineGrainedLevel runs.." << std::endl;
		
		if(RunFineGrainedLevel() != true)
		{
			std::cout << " -RunFineGrainedLevel Fails" << std::endl;
		}
	
		else
		{
			std::cout << " -RunFineGrainedLevel has finished!" << std::endl;
		}
	}


	else if(m_level == COARSE_GRAINED_LEVEL)
	{
		std::cout << " -RunCoarseGrainedLevel runs.." << std::endl;
		
		if(RunCoarseGrainedLevel() != true)
		{
			std::cout << " -RunCoarseGrainedLevel Fails" << std::endl;
		}
		else
		{
			std::cout << " -RunCoarseGrainedLevel has finished!" << std::endl;
		}

	}

	else
	{
		std::cout << " [ERROR] Undefined Analysis Type!" << std::endl;
		return false;
	}

	GenerateImplantedIRmodule();

	return true;
}


bool SignalCodeImplanter::RunFineGrainedLevel()
{

	IRBuilder<> builder(m_context);

	/* declare sig_initializer, sig_checker */
	DeclareSignalCodes(*p_ParsedIRmodule, m_context, builder);

	/* implant sig_checker */

	std::cout << "  -implant enqueue_signature runs.." << std::endl;

	for(auto iter = p_CompactImplantedBBList->begin();
			iter != p_CompactImplantedBBList->end(); iter++)
	{

		SignatureData* sd = *iter;

		llvm::BasicBlock *Target = sd->basicblock;
		unsigned int node_id = sd->node_id;
	

	//	llvm::Function* func = Target->getParent();
	  // 	llvm::BasicBlock& entry_bb = func->getEntryBlock();

			
		llvm::Instruction *TargetCloned1
			= getTargetInstClonedforChecker(*p_ParsedIRmodule);

		ImplantSignalCodes_begin(
				*p_ParsedIRmodule, 
				m_context, 
				builder, 
				Target,
				node_id,
				TargetCloned1
				);

		llvm::Instruction *TargetCloned2
			= getTargetInstClonedforChecker_with_entry(*p_ParsedIRmodule);

		ImplantSignalCodes_end(
				*p_ParsedIRmodule, 
				m_context, 
				builder, 
				Target,
				node_id,
				TargetCloned2
				);
		
		/*	
		if(sd->type == 3)
		{
			llvm::Instruction *TargetCloned 
				= getTargetInstClonedforChecker_with_call(*p_ParsedIRmodule);

			ImplantSignalCodes(
					*p_ParsedIRmodule, 
					m_context, 
					builder, 
					Target,
					node_id,
					TargetCloned
					);
		}

		
		else if(sd->type == 0)
		{
			llvm::Instruction *TargetCloned 
				= getTargetInstClonedforChecker_with_return(*p_ParsedIRmodule);

			ImplantSignalCodes(
					*p_ParsedIRmodule, 
					m_context, 
					builder, 
					Target,
					node_id,
					TargetCloned
					);
		}
		else if(sd->type == 4)
		{
			llvm::Instruction *TargetCloned 
				= getTargetInstClonedforChecker_with_remainder_process(*p_ParsedIRmodule);

			ImplantSignalCodes(
					*p_ParsedIRmodule, 
					m_context, 
					builder, 
					Target,
					node_id,
					TargetCloned
					);
		}

		else
		{
			llvm::Instruction *TargetCloned 
				= getTargetInstClonedforChecker(*p_ParsedIRmodule);

			ImplantSignalCodes(
					*p_ParsedIRmodule, 
					m_context, 
					builder, 
					Target,
					node_id,
					TargetCloned
					);
		}

		*/
		
	}
	
	std::cout << "  -implant enqueue_signature has finished!" << std::endl;
	
	std::cout << "  -implant initialize_monitor runs.." << std::endl;
	
	/* implant sig_initializer */
	/*
	BasicBlock *Target 
		= SearchTargetBasicBlock(*p_ParsedIRmodule, std::string(target_symbol));
	Instruction *TargetCloned
		= getTargetInstClonedforInitializer(*p_ParsedIRmodule);

	ImplantSignalCodes(
			*p_ParsedIRmodule, 
			m_context, 
			builder, 
			Target, 
			0,
			TargetCloned
			);

	*/
	std::cout << "  -implant initialize_monitor has finished!" << std::endl;

	
	return true;
}



bool SignalCodeImplanter::RunCoarseGrainedLevel()
{
	IRBuilder<> builder(m_context);

	/* declare sig_initializer, sig_checker */
	DeclareSignalCodes(*p_ParsedIRmodule, m_context, builder);

	/* implant sig_checker */
	for(auto iter = p_CompactImplantedBBList->begin();
			iter != p_CompactImplantedBBList->end(); iter++)
	{

		SignatureData* sd = *iter;

		llvm::BasicBlock *Target = sd->basicblock;
		unsigned int node_id = sd->node_id;
		llvm::Instruction *TargetCloned 
			= getTargetInstClonedforChecker(*p_ParsedIRmodule);

		ImplantSignalCodes_begin(
				*p_ParsedIRmodule, 
				m_context, 
				builder, 
				Target,
				node_id,
				TargetCloned
				);
	}
	
	/* implant sig_initializer */
	BasicBlock *Target 
		= SearchTargetBasicBlock(*p_ParsedIRmodule, std::string(target_symbol));
	Instruction *TargetCloned
		= getTargetInstClonedforInitializer(*p_ParsedIRmodule);

	ImplantSignalCodes_begin(
			*p_ParsedIRmodule, 
			m_context, 
			builder, 
			Target, 
			0,
			TargetCloned
			);


	return true;
}


/* Implant signal codes */
bool SignalCodeImplanter::ImplantSignalCodes_begin(
		ParsedIRmodule &m, 
		LLVMContext &context, 
		IRBuilder<> &builder, 
		BasicBlock *bb,
		unsigned int node_id,
		Instruction *inst
	){

	if(bb->size() > 0)
	{
		inst->setParent(bb);
		llvm::Instruction *newInst = inst->clone();


		/* for checker */
		if(newInst->getNumOperands() > 1)
		{	
			llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(context);
			Value *node_id_value = llvm::ConstantInt::get(i32_type, node_id, true);
			
			llvm::Function* f = bb->getParent();
			llvm::Value* signature_value = nullptr;

			for(auto iter = m_meta.begin();
					iter != m_meta.end(); iter++)
			{
				Meta* p_meta = *iter;
				
				if(p_meta->fnam == f->getName().str())
				{
					signature_value = p_meta->val;
					break;
				}

			}

			newInst->setOperand(0, signature_value);
			newInst->setOperand(1, node_id_value);
		}

		
				
		llvm::Instruction& first_inst = *(bb->getInstList().begin());

		if(!strcmp(first_inst.getOpcodeName(),"phi"))
		{
			std::cout << " - [CAUTION] phi in " << bb->getParent()->getName().str() << std::endl;
			bb->getInstList().insert(++(bb->getInstList().begin()), newInst);
		}

		else
		{
			/* Front of BasicBlock */
			bb->getInstList().push_front(newInst);
		

			/* Before ret or br */
			//bb->getInstList().insert(--(bb->getInstList().end()), newInst);
		
		
			/* End of BasicBlock: ret, br */
			//bb->getInstList().push_back(newInst);
		}
	}

	return true;
}

/* Implant signal codes */
bool SignalCodeImplanter::ImplantSignalCodes_end(
		ParsedIRmodule &m, 
		LLVMContext &context, 
		IRBuilder<> &builder, 
		BasicBlock *bb,
		unsigned int node_id,
		Instruction *inst
	){

	if(bb->size() > 0)
	{
		inst->setParent(bb);
		llvm::Instruction *newInst = inst->clone();


		/* for checker */
		if(newInst->getNumOperands() > 1)
		{	
			llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(context);
			Value *node_id_value = llvm::ConstantInt::get(i32_type, node_id, true);
			
			llvm::Function* f = bb->getParent();
			llvm::Value* signature_value = nullptr;

			for(auto iter = m_meta.begin();
					iter != m_meta.end(); iter++)
			{
				Meta* p_meta = *iter;
				
				if(p_meta->fnam == f->getName().str())
				{
					signature_value = p_meta->val;
					break;
				}

			}

			newInst->setOperand(0, signature_value);
			newInst->setOperand(1, node_id_value);
		}

		
				
		llvm::Instruction& first_inst = *(bb->getInstList().begin());

		/* Front of BasicBlock */
		//bb->getInstList().push_front(newInst);
		

		/* Before ret or br */
		bb->getInstList().insert(--(bb->getInstList().end()), newInst);
		
		
		/* End of BasicBlock: ret, br */
		//bb->getInstList().push_back(newInst);
	}

	return true;
}




/* Find Target BasicBlock to be implanted at */
llvm::BasicBlock *SignalCodeImplanter::SearchTargetBasicBlock(
		ParsedIRmodule &m, 
		std::string fname
	)
{

	llvm::BasicBlock *SavedBB = nullptr;

  	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == fname){

			llvm::Function::BasicBlockListType::iterator iter2;
			iter2 = f.getBasicBlockList().begin();

			llvm::BasicBlock &bb = *iter2;
			
			SavedBB = &bb;
			break;
		}
	}

	return SavedBB;
}


/* Find Target Instruction to be implanted */
llvm::Instruction *SignalCodeImplanter::getTargetInstClonedforInitializer(
		ParsedIRmodule &m
		)
{

	llvm::Instruction *SavedInst = nullptr;
	llvm::BasicBlock *SavedBB = nullptr;
	llvm::Instruction *ReturnInst = nullptr;


	std::list<llvm::Instruction *> InstList;
	std::list<llvm::Instruction *>::iterator InstList_iter;

	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == std::string("CallcheckerSet")){

			//std::cout << "Function found!" << std::endl;

			for (auto iter2 = f.getBasicBlockList().begin(); 
					iter2 != f.getBasicBlockList().end(); iter2++) {

				llvm::BasicBlock &bb = *iter2;

				auto iter4 = bb.end();
				for (auto iter3 = bb.begin(); iter3 != iter4; iter3++) {


					llvm::Instruction &inst = *iter3;
					
					if(inst.getOpcodeName() == std::string("call")){
						
						SavedInst = &inst;
						SavedBB = &bb;

						InstList.push_back(SavedInst);
						
					}
					
				}
			}
		}
	}


	ReturnInst = *(InstList.begin());
	
	return ReturnInst;
}

/* Find Target Instruction to be implanted */
llvm::Instruction *SignalCodeImplanter::getTargetInstClonedforChecker(
		ParsedIRmodule &m
		)
{

	llvm::Instruction *SavedInst = nullptr;
	llvm::BasicBlock *SavedBB = nullptr;
	llvm::Instruction *ReturnInst = nullptr;


	std::list<llvm::Instruction *> InstList;
	std::list<llvm::Instruction *>::iterator InstList_iter;


	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == std::string("CallcheckerSet")){

		//	std::cout << "Function found!" << std::endl;

			for (auto iter2 = f.getBasicBlockList().begin(); 
					iter2 != f.getBasicBlockList().end(); iter2++) {

				llvm::BasicBlock &bb = *iter2;

				auto iter4 = bb.end();
				for (auto iter3 = bb.begin(); iter3 != iter4; iter3++) {


					llvm::Instruction &inst = *iter3;
					
					if(inst.getOpcodeName() == std::string("call")){
						
						SavedInst = &inst;
						SavedBB = &bb;

						InstList.push_back(SavedInst);
						
					}
					
				}
			}
		}
	}

	
	InstList_iter = InstList.begin();
	InstList_iter++;
	ReturnInst = *(InstList_iter);
	
	return ReturnInst;
}

/* Find Target Instruction to be implanted */
llvm::Instruction *SignalCodeImplanter::getTargetInstClonedforChecker_with_entry(
		ParsedIRmodule &m)
{

	llvm::Instruction *SavedInst = nullptr;
	llvm::BasicBlock *SavedBB = nullptr;
	llvm::Instruction *ReturnInst = nullptr;


	std::list<llvm::Instruction *> InstList;
	std::list<llvm::Instruction *>::iterator InstList_iter;


	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == std::string("CallcheckerSet")){

		//	std::cout << "Function found!" << std::endl;

			for (auto iter2 = f.getBasicBlockList().begin(); 
					iter2 != f.getBasicBlockList().end(); iter2++) {

				llvm::BasicBlock &bb = *iter2;

				auto iter4 = bb.end();
				for (auto iter3 = bb.begin(); iter3 != iter4; iter3++) {


					llvm::Instruction &inst = *iter3;
					
					if(inst.getOpcodeName() == std::string("call")){
						
						SavedInst = &inst;
						SavedBB = &bb;

						InstList.push_back(SavedInst);
						
					}
					
				}
			}
		}
	}

	
	InstList_iter = InstList.begin();
	InstList_iter++;
	InstList_iter++;
	ReturnInst = *(InstList_iter);
	
	return ReturnInst;
}

/* Find Target Instruction to be implanted */
llvm::Instruction *SignalCodeImplanter::getTargetInstClonedforChecker_with_return(
		ParsedIRmodule &m
		)
{

	llvm::Instruction *SavedInst = nullptr;
	llvm::BasicBlock *SavedBB = nullptr;
	llvm::Instruction *ReturnInst = nullptr;


	std::list<llvm::Instruction *> InstList;
	std::list<llvm::Instruction *>::iterator InstList_iter;


	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == std::string("CallcheckerSet")){

		//	std::cout << "Function found!" << std::endl;

			for (auto iter2 = f.getBasicBlockList().begin(); 
					iter2 != f.getBasicBlockList().end(); iter2++) {

				llvm::BasicBlock &bb = *iter2;

				auto iter4 = bb.end();
				for (auto iter3 = bb.begin(); iter3 != iter4; iter3++) {


					llvm::Instruction &inst = *iter3;
					
					if(inst.getOpcodeName() == std::string("call")){
						
						SavedInst = &inst;
						SavedBB = &bb;

						InstList.push_back(SavedInst);
						
					}
					
				}
			}
		}
	}

	
	InstList_iter = InstList.begin();
	InstList_iter++;
	InstList_iter++;
	InstList_iter++;
	ReturnInst = *(InstList_iter);
	
	return ReturnInst;
}


/* Find Target Instruction to be implanted */
llvm::Instruction *SignalCodeImplanter::getTargetInstClonedforChecker_with_remainder_process(
		ParsedIRmodule &m
		)
{

	llvm::Instruction *SavedInst = nullptr;
	llvm::BasicBlock *SavedBB = nullptr;
	llvm::Instruction *ReturnInst = nullptr;


	std::list<llvm::Instruction *> InstList;
	std::list<llvm::Instruction *>::iterator InstList_iter;


	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) {

		Function &f = *iter1;
		if(f.getName().str() == std::string("CallcheckerSet")){

		//	std::cout << "Function found!" << std::endl;

			for (auto iter2 = f.getBasicBlockList().begin(); 
					iter2 != f.getBasicBlockList().end(); iter2++) {

				llvm::BasicBlock &bb = *iter2;

				auto iter4 = bb.end();
				for (auto iter3 = bb.begin(); iter3 != iter4; iter3++) {


					llvm::Instruction &inst = *iter3;
					
					if(inst.getOpcodeName() == std::string("call")){
						
						SavedInst = &inst;
						SavedBB = &bb;

						InstList.push_back(SavedInst);
						
					}
					
				}
			}
		}
	}

	
	InstList_iter = InstList.begin();
	InstList_iter++;
	InstList_iter++;
	InstList_iter++;
	InstList_iter++;
	ReturnInst = *(InstList_iter);
	
	return ReturnInst;
}






/* Generate Implanted IRmodule */
bool SignalCodeImplanter::GenerateImplantedIRmodule()
{
	Module* writeModule = p_ParsedIRmodule->release();
	std::error_code EC;
	raw_fd_ostream OS("outputs/translated.bc", EC, sys::fs::F_None);
	
	WriteBitcodeToFile(writeModule, OS, true, nullptr, true, nullptr);
	OS.flush();

	return true;
}

/* declare sig_initializer, sig_checker */
bool SignalCodeImplanter::DeclareSignalCodes(
		ParsedIRmodule &m, 
		LLVMContext &context, 
		IRBuilder<> &builder
	)
{

	/* Function-type : void return/ no param */
	FunctionType *void_return_one_integer 
		= llvm::FunctionType::get(builder.getVoidTy(), IntegerType::get(context, 32), false);

	//FunctionType *void_return_two_integer 
	//	= llvm::FunctionType::get(builder.getVoidTy(), IntegerType::get(context, 32), IntegerType::get(context,32), false);

	FunctionType *funcType = llvm::FunctionType::get(builder.getVoidTy(), false);
	
	
	/* General Puts Function */

	/* sig_initializer */
	Constant *checker1_ptr = m->getOrInsertFunction("init_monitor", funcType); 
	Function *checker1 = cast<Function>(checker1_ptr);

	/* sig_checker (type1: only signature) */
	Constant *checker2_ptr = m->getOrInsertFunction("update_signature", 
			builder.getVoidTy(),
			Type::getIntNPtrTy(context, 32),
			IntegerType::get(context, 32)
			);
			
			
	
	
	Function *checker2 = cast<Function>(checker2_ptr);

	/* sig_checker (type2: signature & call) */
	Constant *checker3_ptr = m->getOrInsertFunction("verify_signature", 
			builder.getVoidTy(),
			Type::getIntNPtrTy(context, 32),
			IntegerType::get(context, 32)
			);

	Function *checker3 = cast<Function>(checker3_ptr);
	
	/* sig_checker (type3: signature & return) */
	Constant *checker4_ptr = m->getOrInsertFunction("enqueue_signature_with_return", void_return_one_integer); 
	Function *checker4 = cast<Function>(checker4_ptr);

	/* sig_checker (type4: signature & remainder_process) */
	Constant *checker5_ptr = m->getOrInsertFunction("enqueue_signature_with_remainder_process", void_return_one_integer); 
	Function *checker5 = cast<Function>(checker5_ptr);
	

	IntegerType *integer_type 
		= llvm::IntegerType::get(context, 32);


	/* sig_checker (type4: signature & remainder_process) */

	Constant *checker6_ptr = m->getOrInsertFunction("update_signature2", 
			builder.getVoidTy(),
			//PointerType::get(integer_type, 32),
			Type::getIntNPtrTy(context, 32),
			IntegerType::get(context, 32)
			);

	Function *checker6 = cast<Function>(checker6_ptr);
	
	Constant *checker7_ptr = m->getOrInsertFunction("update_signature3", 
			builder.getVoidTy(),
			IntegerType::get(context, 32),
			IntegerType::get(context, 32)
			);

	Function *checker7 = cast<Function>(checker7_ptr);



	/* Call checker Set */
	Constant *gcdptr = m->getOrInsertFunction("CallcheckerSet", funcType); 
	Function *gcd = cast<Function>(gcdptr);
	llvm::BasicBlock *entry = BasicBlock::Create(context, "entry", gcd);
	IRBuilder<> CallChecker_builder(entry);
	
	llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(context);
	Value *constant_one = llvm::ConstantInt::get(i32_type, 1, true);
	
	Constant *value_ptr = nullptr;;
	
	Constant *constant_zero = llvm::ConstantInt::get(i32_type, 0, true);
  	

	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) 
	{

		Function &f = *iter1;
		std::string fnam(f.getName().str());

		std::string sig_nam = fnam + std::string("_signature");
		value_ptr = m->getOrInsertGlobal(sig_nam, integer_type);

		GlobalVariable* g_value_ptr = cast<GlobalVariable>(value_ptr);
		g_value_ptr->setInitializer(constant_zero);

		/*
		GlobalVariable* value_ptr = new GlobalVariable(*m,
				IntegerType::get(context, 32),
				false,
				GlobalValue::CommonLinkage,
				0,
				sig_nam.c_str());

				*/
		Meta* p_meta = new Meta;
		p_meta->fnam = f.getName().str();
		p_meta->val = value_ptr;

		m_meta.push_back(p_meta);

	}

	Value* args1[] = {value_ptr, constant_one};
	Value* args2[] = {constant_one, constant_one};

	//Value *call_checker1 = CallChecker_builder.CreateCall(checker1);
	//Value *call_checker2 = CallChecker_builder.CreateCall(checker2, constant_one);
	CallChecker_builder.CreateCall(checker1);
	//CallChecker_builder.CreateCall(checker2, constant_one);
	//CallChecker_builder.CreateCall(checker3, constant_one);
	CallChecker_builder.CreateCall(checker2, args1);
	CallChecker_builder.CreateCall(checker3, args1);

	CallChecker_builder.CreateCall(checker4, constant_one);
	CallChecker_builder.CreateCall(checker5, constant_one);

	//CallChecker_builder.CreateCall(checker6, args1);
	//CallChecker_builder.CreateCall(checker7, args2);
	//CallChecker_builder.CreateCall(checker7, args1);
	
	CallChecker_builder.CreateRetVoid();

	/*
  	for(auto iter1 = m->getFunctionList().begin(); 
			iter1 != m->getFunctionList().end(); iter1++) 
	{

		Function &f = *iter1;
		std::string fnam(f.getName().str());
		
		llvm::BasicBlock* entry = &(f.getEntryBlock());
		
		IRBuilder<> m_builder(entry);
		AllocaInst* temp = m_builder.CreateAlloca(i32_type);
		m_builder.CreateStore(temp, value_ptr1);
		//m_builder.CreateCall(checker5, constant_one);

	}
*/
	return true;
}
