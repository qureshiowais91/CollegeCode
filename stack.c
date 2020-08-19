#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

#define max 9
#define empty -1
#define size 25

int infixtoPostfix(char *expression);

int pop(char stack[], int *top)
{
    char operator;
    if ((*top) != empty)
    {
        operator= stack[(*top)];
        stack[(*top)] = '\0'; /*segment fault here on secound loop*/
        (*top)--;
    }
    else
    {
        printf("top is empty %d", *top);
        return 0;
    }
    return operator;
}

int priority(char operator)
{
    if (operator== '(')
    {
        return 6;
    }
    else if (operator== '^' || operator== '$')
    {
        return 5;
    }
    else if (operator== '/' || operator== '*')
    {
        return 4;
    }
    else if (operator== '+' || operator== '-')
    {
        return 3;
    }
    return 0;
}
/*push use to push data in output var also*/

int push(char *stack, int *top, char arg)
{
    if (*top != max)
    {
        (*top)++;
        stack[*top] = arg;
        return 1;
    }
    printf("given array is full! can't push more data");
    return 0;
}


int string_reverse(char *str)
{
    int i = 0;
    int j = strlen(str) - 1;

    for (i = 0; i != j / 2; i++)
    {
        str[i] = str[i] + str[j - i];
        str[j - i] = str[i] - str[j - i];
        str[i] = str[i] - str[j - i];
    }
    for (i = 0; str[i] != '\0'; i++)
    {
        if (str[i] == '(')
        {
            str[i] = ')';
        }
        else if (str[i] == ')')
        {
            str[i] = '(';
        }
    }

    return 0;
}

int infixtoprefix(char *expression)
{
    int index;
    string_reverse(expression);
    infixtoPostfix(expression);
    string_reverse(expression);

    printf("%s\n", expression);

    return 0;
}

int infixtoPostfix(char *expression)
{

    char output[size];
    char stack[size];

    unsigned short int counter = 0;

    unsigned short int stack_priority_value;
    unsigned short int expression_priority_value;

    int top = -1;

    int loop = 0;
    int index = 0;

    /*1. Scan the infix expression from left to right.*/
    for (loop = 0; expression[loop] != '\0'; loop++)
    {
        /*scanned character is an operand*/
        if (isalnum(expression[loop]))
        {
            output[index] = expression[loop];
            index++;
            continue;
        }

        stack_priority_value = priority(stack[top]);
        expression_priority_value = priority(expression[loop]);

        if (top == empty || stack_priority_value < expression_priority_value || stack[top] == '(')
        {
            push(stack, &top, expression[loop]);
        }
        /*pop all the operators from the stack which are greater than or equal priority*/
        else if (expression[loop] == ')')
        {
            while (stack[top] != '(')
            {
                output[index++] = pop(stack, &top);
            }
            pop(stack, &top);
        }
        else if (stack_priority_value >= expression_priority_value)
        {
            while (priority(stack[top]) >= expression_priority_value)
            { /*if top == -1 pop return 0 !*/
                output[index++] = pop(stack, &top);
            }
            push(stack, &top, expression[loop]);
        }
    }

    while (top != empty)
    {
        output[index] = pop(stack, &top);
        index++;
    }

    for (counter = 0; index != counter; counter++)
    {
        expression[counter] = output[counter];
    }

    expression[counter] = '\0';

    return 0;
}

int main()
{
    char expression[size];
    int choice;

    printf("Enter expression : ");
    scanf("%s", expression);

    infixtoprefix(expression);

    return 0;
}