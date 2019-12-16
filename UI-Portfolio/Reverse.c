//
//  Reverse.c
//  UI-Portfolio
//
//  Created by Cherian, Nathaniel on 12/12/19.
//  Copyright © 2019 Hale, Andrew. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#define STRINGSIZE 1000
#define LINE_BUFFER_SIZE 1000


char rev4XBuffer[LINE_BUFFER_SIZE];
char *isPali = "Is a Palindrome";
char *noPali = "Not a Palindrome";
// array reverse function
char *revXArray(const char* input, long length) {
    // copy string to buffer, don't disrupt original
   
    strncpy(rev4XBuffer, input, length);
    // reverse char's in by array reverence
    int begin = 0;
    long end = length-1;
    
    while(begin<end) {
        
        char tmp = rev4XBuffer[begin];
        rev4XBuffer[begin] = rev4XBuffer[end];
        rev4XBuffer[end] = tmp;
        begin++;
        end--;
    }
    return rev4XBuffer;
}
// recursion helper, recursive loop function
void recurse(char* input, long begin, long end) {
    // recursion terminates
    if (begin >= end)
        return;
    
    char tmp = rev4XBuffer[begin];
    rev4XBuffer[begin] = rev4XBuffer[end];
    rev4XBuffer[end] = tmp;
    
    // recursion continues
    recurse(input, ++begin, --end);
}
// recursion reverse function
char *revXRecurse(const char* input, long length){
    // copy string to buffer, don't disrupt original
    strncpy(rev4XBuffer, input, length);
    // recursion control variables
    long begin = 0;
    long end = length-1;
    // call recursion function
    recurse(rev4XBuffer, begin, end);
    return rev4XBuffer;
}
char *revXPointer(const char* input, long length) {
    // copy string to buffer, don't disrupt original
    strncpy(rev4XBuffer, input, length);
    // initialize pointer control variables
    char *begin = rev4XBuffer;
    char *end = rev4XBuffer;
    end += length - 1;  // pointer math is simple on char as it corresponds to memory
    // reverse char's in buffer by pointer referece
    while ( begin < end ) {
        // pointer address increment/decrement
        char tmp = *begin;
        *begin = *end;
        *end = tmp;
        begin++;
        end--;
    }
    return rev4XBuffer;
}
// pali evaluation

char *paliEval(const char* input, long length) {
    
    int compare = strcmp(rev4XBuffer, input);
    // call function above to reverse string
    // char *reverse = revXArray(input, length);
    // compare for equality, return message
    if (compare == 0)
        return isPali;
    else
        return noPali;

 }
