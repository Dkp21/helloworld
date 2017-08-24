include Rules.mk

cppsrc = $(wildcard src/*.cpp)

objs = $(cppsrc:.cpp=.o)

$(executable): $(objs)
	$(CXX) -o $@ $^

.PHONY: clean

clean:
	rm -rf $(objs) 
	rm -f $(executable)
