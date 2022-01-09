.PHONY : prepare all clean distclean

TARGET := app_demo
OBJECTS := main.o build_time.o

include app1/app.mk
include app2/app.mk
include app3/app.mk

CXXFLAGS += -ggdb -DLOG_MODULE_ID='"demo"'
LDFLAGS += -L.. \
	-ltbox_main \
	-ltbox_eventx \
	-ltbox_event-ne \
	-ltbox_util \
	-ltbox_base \
	-levent_core \
	-lev -lpthread

prepare:
	-rm -f build_time.o

print_vars:
	@echo "CXXFLAGS=$(CXXFLAGS)"
	@echo "LDFLAGS=$(LDFLAGS)"

all : prepare print_vars $(TARGET)

.cpp.o:
	@echo "\033[32mCXX $^\033[0m"
	@$(CXX) $(CXXFLAGS) -o $@ -c $^

$(TARGET): $(OBJECTS)
	@echo "\033[35mBUILD $@\033[0m"
	@$(CXX) -o $@ $^ $(LDFLAGS)

clean:
	rm -rf $(OBJECTS)

distclean: clean
	rm -rf $(TARGET)
