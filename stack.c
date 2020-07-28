#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

#define max 9
#define empty -1
#define size 10

int pop(char stack[], int *top)
{
    char operator;
    if (*top != empty)
    {
        operator= stack[(*top)];
        stack[(*top)] = '\0'; /*segment fault here on secound loop*/
        top--;
    }
    else
    {
        printf("top is empty %d", *top);
    }
    return operator;
}

int priority(char operator)
{
    if(operator== '^' || operator == '$'){
        return 5;
    }
    else if(operator == '*' || operator == '/'){
        return 3;
        
    }
    else
    {
        return 1;
    }
    return 0;
}
/*push use to push data in output var also*/

int push(char *stack, int *top, char arg)
{
    if (*top != max)
    {
        *top++;
        stack[*top] = arg;
        return 1;
    }
    printf("given array is full! can't push more data");
    return 0;
}

int main()
{

    char expression[size];
    char output[size];
    char stack[size];

    unsigned short int stack_priority_value;
    unsigned short int expression_priority_value;

    int top = -1;

    int loop = 0;
    int index = 0;

    printf("Enter Expression : ");
    fflush(stdin);
    scanf("%s",expression);


    /*1. Scan the infix expression from left to right.*/
    for (loop = 0; expression[loop] != '\0'; loop++)
    {
        /*If the scanned character is an operand, save it to output var.*/
        if (isalnum(expression[loop]))
        {
            output[index] = expression[loop];
            index++;
        }
        else
        {
            /*Get priority of Operator*/
            stack_priority_value = priority(stack[top]);
            expression_priority_value = priority(expression[loop]);

            if (top == empty || stack_priority_value < expression_priority_value || expression[loop] == '(')
            {
                push(stack, &top, expression[loop]);
            }
            else if (stack_priority_value >= expression_priority_value)
            {
                push(output, &index, pop(stack, &top));
                push(stack, &top, expression[loop]);
            }
        }

    }
     
      printf("%s",output);

    return 0;
}
