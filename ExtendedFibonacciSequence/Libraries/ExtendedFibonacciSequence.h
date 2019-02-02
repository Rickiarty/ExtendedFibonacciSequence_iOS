#ifndef ExtendedFibonacciSequence_h
#define ExtendedFibonacciSequence_h

/**
 *
 *  by Rei-Chi Lin @ GitHub
 *
 **/

#import <Foundation/Foundation.h>

@interface ExtendedFibonacciSequence : NSObject {
    int currentIndex;
    int currentNum;
    int nextNum;
}

-(id)init;
-(int)getCurrentIndex;
-(int)getCurrentNum;
-(int)nextNum;
-(int)prevNum;

@end

#endif /* ExtendedFibonacciSequence_h */
