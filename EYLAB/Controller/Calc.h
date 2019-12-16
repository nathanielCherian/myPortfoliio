//
//  Calc.h
//  EYLAB
//
//  Created by Cherian, Nathaniel on 11/7/19.
//  Copyright © 2019 Cherian, Nathaniel. All rights reserved.
//

#ifndef calc_h
#define calc_h

#include <stdio.h>
#include <math.h>

// Classic C style defines for Operator control
#define PLUS 0
#define MINUS 1
#define MULTIPLY 2
#define DIVIDE 3
#define MODULO 4
#define SQUARE 5
#define FACTORIAL 6
#define TIP 7

// Classic C style prototype for calculation function
int zeroTest(double value);
double calculateIt(double arg1, int mathOp, double arg2);

#endif /* calc_h */

