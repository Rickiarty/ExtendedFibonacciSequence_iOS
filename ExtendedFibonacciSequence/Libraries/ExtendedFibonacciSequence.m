#import "ExtendedFibonacciSequence.h"

@implementation ExtendedFibonacciSequence

-(id)init {
    self->currentIndex = 0;
    self->currentNum = 0;
    self->nextNum = 1;
    return self;
}

-(int)getCurrentIndex {
    return self->currentIndex;
}

-(int)getCurrentNum {
    return self->currentNum;
}

-(int)nextNum {
    self->nextNum = self->currentNum + self->nextNum;
    self->currentNum = self->nextNum - self->currentNum;
    self->currentIndex += 1;
    return self->currentNum;
}

-(int)prevNum {
    self->currentNum = self->nextNum - self->currentNum;
    self->nextNum = self->nextNum - self->currentNum;
    self->currentIndex -= 1;
    return self->currentNum;
}

@end

/**
 *
 *  by Rei-Chi Lin @ GitHub
 *
 **/
