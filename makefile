#
# $File: //depot/stoker_git/stoker/tini/examples/json/makefile $
# $Date: 2013/07/27 $
# $Revision: #3 $
# $Author: kaytat $
#
include $(TINI_HOME)/tools/constants.mak

.PHONY: all clean

APP := json
SRC_DIR := org/json
BIN_DIR := bin

BASE_SOURCE := \
    JSONObject.java \
    JSONException.java \
    JSONTokener.java \
    JSONArray.java \
    JSONString.java

SOURCE := $(addprefix $(SRC_DIR)/,$(BASE_SOURCE))
OBJS   := $(addprefix $(BIN_DIR)/$(SRC_DIR)/,$(BASE_SOURCE))
OBJS   := $(OBJS:%.java=%.class)

SRC_ASM_DIR := .
OBJS_ASM :=

EXTRA_CLEAN := $(APP).jar

all: $(APP).jar

clean: generic_clean

TINI_HOME := $(subst \,/,$(TINI_HOME))

COVERTERPATH := $(TINI_HOME)/tools
COVERTERCLASSPATH := $(COVERTERPATH)/bin
COVERTERCLASSPATH := $(subst ;,\;,$(COVERTERCLASSPATH))

include $(TINI_HOME)/tools/include.mak
