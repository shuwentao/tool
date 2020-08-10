all:
	@g++ -fprofile-arcs -ftest-coverage test.cpp -o test
	#lcov -c -d ./ -o app.info
	#genhtml app.info -o cc_result
	@./test
	@lcov -c -d ./ -o app.info
	@genhtml app.info -o cc_result

clean:
	rm -rf *.gcda *.gcno cc_result app.info test 
