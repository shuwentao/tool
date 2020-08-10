all:
	@g++ -pg -g test.cpp -o test
	@./test
	@gprof ./test > prof.log
	@gprof ./test | gprof2dot -n0 -e0 | dot -Tpng -o output.png

clean:
	rm gmon.out output.png test prof.log 
