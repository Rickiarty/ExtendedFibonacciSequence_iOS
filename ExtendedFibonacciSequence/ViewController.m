#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UIButton *buttonNext;
@property (weak, nonatomic) IBOutlet UIButton *buttonPrev;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Configure layout for GUI.
    self.view.backgroundColor = UIColor.yellowColor;
    self.label1.frame = CGRectMake(0, 0, self.view.frame.size.width, 20);
    self.label2.frame = CGRectMake(0, 0, self.view.frame.size.width, 20);
    self.label3.frame = CGRectMake(0, 0, self.view.frame.size.width, 20);
    self.label1.center = CGPointMake(self.view.center.x, self.view.center.y * 3 / 4);
    self.label2.center = self.view.center;
    self.label3.center = CGPointMake(self.view.center.x, self.view.center.y * 5 / 4);
    self.buttonPrev.center = CGPointMake(self.view.frame.size.width / 5, self.view.frame.size.height * 4 / 5);
    self.buttonNext.center = CGPointMake(self.view.frame.size.width * 4 / 5, self.view.frame.size.height * 4 / 5);
    self.label1.textAlignment = NSTextAlignmentCenter;
    self.label2.textAlignment = NSTextAlignmentCenter;
    self.label3.textAlignment = NSTextAlignmentCenter;
    
    // Initialize data for this app on iOS.
    self->extendedFiboSeq1 = [[ExtendedFibonacciSequence alloc] init];
    [self->extendedFiboSeq1 nextNum];
    
    self->extendedFiboSeq2 = [[ExtendedFibonacciSequence alloc] init];
    for (int i = 0; i < 2; i++) {
        [self->extendedFiboSeq2 nextNum];
    }
    
    self->extendedFiboSeq3 = [[ExtendedFibonacciSequence alloc] init];
    for (int i = 0; i < 3; i++) {
        [self->extendedFiboSeq3 nextNum];
    }
    
    // Write data into the labels. 
    [self writeCurrentValuesIntoUILabels];
}

- (IBAction)buttonPrev_TouchDown:(id)sender {
    [self->extendedFiboSeq1 prevNum];
    [self->extendedFiboSeq2 prevNum];
    [self->extendedFiboSeq3 prevNum];
    
    [self writeCurrentValuesIntoUILabels];
}

- (IBAction)buttonNext_TouchDown:(id)sender {
    [self->extendedFiboSeq1 nextNum];
    [self->extendedFiboSeq2 nextNum];
    [self->extendedFiboSeq3 nextNum];
    
    [self writeCurrentValuesIntoUILabels];
}

-(void)writeCurrentValuesIntoUILabels {
    NSString* tempStr = @"";
    tempStr = [NSString stringWithFormat:@"F[%d] = %d", self->extendedFiboSeq1.getCurrentIndex, self->extendedFiboSeq1.getCurrentNum];
    self.label1.text = tempStr;
    
    tempStr = [NSString stringWithFormat:@"F[%d] = %d", self->extendedFiboSeq2.getCurrentIndex, self->extendedFiboSeq2.getCurrentNum];
    self.label2.text = tempStr;
    
    tempStr = [NSString stringWithFormat:@"F[%d] = %d", self->extendedFiboSeq3.getCurrentIndex, self->extendedFiboSeq3.getCurrentNum];
    self.label3.text = tempStr;
}

@end
