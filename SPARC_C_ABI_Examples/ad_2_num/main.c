#include <stdio.h>

#ifdef AJIT
#include "core_portme.h"
#include "ajit_access_routines.h"

int __enable_serial()
{
        __ajit_write_serial_control_register__ ( TX_ENABLE | RX_ENABLE);
        return(0);
}


#endif
#ifdef AJIT
#define PRINTF ee_printf
#else
#define PRINTF printf
#endif

int addNumbers(int a, int b );         
int main()
{
    int n1=1,n2=2,sum;



    sum = addNumbers(n1, n2);       

#ifdef AJIT     
__enable_serial();

        PRINTF("sum = %d",sum);


#endif

    return 0; 
}

int addNumbers(int a,int b)           
{     
  int result;
	result= a+b;
	return result;
                  
}   
