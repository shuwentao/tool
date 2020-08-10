#include <stdio.h>

#define MAX_NUM 10000000

int g_count = 10;

void fun_1()
{
	int i = 0;	
	int g = 0;	
	for(;i < MAX_NUM ; ++ i)
	{
		g += i*i;
	}
}


void fun_2()
{
	int i = 0;	
	int g = 0;	
	for(;i < MAX_NUM * 4 ; ++ i)
	{
		g += i*i;
	}
}

void fun_3()
{
	if(g_count < 0)
	{
		return ;
	}

	g_count --;

	fun_1();
	fun_2();
	fun_3();
}

void (*fun)();

int main()
{
	printf("hello world\n");

	void (* fun)();

	fun = fun_3;

	fun();

	return 0;
}
