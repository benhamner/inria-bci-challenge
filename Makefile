PROJECT_DIR = $(DataPath)/Kaggle/inria-bci-challenge
RAW_DIR     = $(PROJECT_DIR)/Raw
WORKING_DIR = $(PROJECT_DIR)/Working

basic:
	julia src/basic.jl $(RAW_DIR)/train.zip $(RAW_DIR)/TrainLabels.csv $(RAW_DIR)/test.zip $(WORKING_DIR)/sub1.csv

basic-2:
	julia src/basic_2.jl $(WORKING_DIR)/data.h5 $(RAW_DIR)/TrainLabels.csv $(WORKING_DIR)/sub2.csv

hdf5:
	julia src/raw_to_hdf5.jl $(RAW_DIR)/train.zip $(RAW_DIR)/test.zip $(WORKING_DIR)/data.h5

$(WORKING_DIR)/.sentinel:
	mkdir $(WORKING_DIR)
	touch $(WORKING_DIR)/.sentinel

working: $(WORKING_DIR)/.sentinel
