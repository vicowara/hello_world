.PHONY: all clean distclean

all: dump

clean:
	$(RM) *.o

distclean:
	$(RM) *.o dump dump.s hello

hello: hello.o
	ld -o $@ $^

hello.o: hello.s
	as -o $@ $^

dump: dump.o
	ld -o $@ --oformat binary $^

dump.o: dump.s
	as -o $@ $^

dump.s: hello
	$(shell ./dump.sh $^ $@)
