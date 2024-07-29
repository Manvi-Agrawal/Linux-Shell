SRC_DIR = src
CMD_DIR = $(SRC_DIR)/cmd
SOURCE = $(SRC_DIR)/terminal.c

BUILD_OUT_DIR = build/output

TARGET = $(BUILD_OUT_DIR)/terminal.out
DEPEND1 = $(BUILD_OUT_DIR)/date_cmd
DEPEND2 = $(BUILD_OUT_DIR)/ls_cmd
DEPEND3 = $(BUILD_OUT_DIR)/cat_cmd
DEPEND4 = $(BUILD_OUT_DIR)/mkdir_cmd
DEPEND5 = $(BUILD_OUT_DIR)/rm_cmd

all:
	mkdir -p $(BUILD_OUT_DIR)
	make $(DEPEND1) $(DEPEND2) $(DEPEND3) $(DEPEND4) $(DEPEND5) $(TARGET)

$(TARGET): $(SOURCE)
		gcc -o $(TARGET) $(SOURCE) -lreadline

$(DEPEND1):
		gcc -o $(DEPEND1) $(CMD_DIR)/date_cmd.c
$(DEPEND2):
		gcc -o $(DEPEND2) $(CMD_DIR)/ls_cmd.c
$(DEPEND3):
		gcc -o $(DEPEND3) $(CMD_DIR)/cat_cmd.c
$(DEPEND4):
		gcc -o $(DEPEND4) $(CMD_DIR)/mkdir_cmd.c
$(DEPEND5):
		gcc -o $(DEPEND5) $(CMD_DIR)/rm_cmd.c

run:
		./$(TARGET)

clean:
		rm -rf $(BUILD_OUT_DIR)