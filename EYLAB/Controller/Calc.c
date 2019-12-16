//
//  Calc.c
//  EYLAB
//
//  Created by Cherian, Nathaniel on 11/7/19.
//  Copyright © 2019 Cherian, Nathaniel. All rights reserved.
//

#include "Calc.h"

// double value equal to zero test
int zeroTest(double value)
{
    // value is < epsilon value, it is essentially equal to zero
    return (fabs(value) < 0.00000000001);
}

// calculator engine
double calculateIt(double arg1, int mathOp, double arg2)
{
    double calcAnswer = 0;
    
    switch(mathOp)
    {
        case PLUS:
            calcAnswer = arg1 + arg2;
            break;
        case MINUS:
            calcAnswer = arg1 - arg2;
            break;
        case DIVIDE:
            calcAnswer = arg1 / arg2;
            break;
        case MULTIPLY:
            calcAnswer = arg1 * arg2;
            break;
        case MODULO:
            calcAnswer = (double)((int)arg1 % (int)arg2);
            break;
        case SQUARE:
            calcAnswer = arg1 * arg1;
            break;
        case FACTORIAL:
            calcAnswer = 1.0;
            for(int i  = 1; i <= arg1; i++){
                calcAnswer = calcAnswer * i;
            }
            break;
        case TIP:
            calcAnswer = arg1 * 0.2;
            break;
        case -1:
            calcAnswer = arg1;
    }
    
    return calcAnswer;
}
