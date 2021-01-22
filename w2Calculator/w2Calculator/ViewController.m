//
//  ViewController.m
//  w2Calculator
//
//  Created by Xcode User on 2016-09-15.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize  num1, num2, answer, operand, theNumber, lblText;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setNum1:0];
    [self setNum2:0];
    [self setOperand:PLUS];
    [self setAnswer:0.0];
    [self setTheNumber:@"0"];
    
    //same as lblText.text = theNumber;
    [lblText setText:theNumber];
    

  
    
}
-(IBAction)calculate:(id)sender{
    num2 = [theNumber integerValue];
    
    if(operand == PLUS){
        answer = num1 + num2;
    }
    else if(operand == MINUS){
        answer = num1 - num2;
    }
    else if(operand == MULTIPLY){
        answer = num1 * num2;
    }
    else{
        if(num2 ==0){
            UIAlertController *alert = [UIAlertController
                                        alertControllerWithTitle:@"ERROR"
                                        message:@"Cannot divide by zero"
                                        preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *ok = [UIAlertAction
                                 actionWithTitle:@"Ok"
                                 style:UIAlertActionStyleCancel handler:nil];
            
            [alert addAction:ok];
            
            [self presentViewController:alert animated:YES completion:nil];
            
        }
           
        
        else{
    
        
        answer = (double)num1 / (double)num2;
        }
    }
    [self finishAnswer];
}
-(void)finishAnswer{
    theNumber = [NSString stringWithFormat:@"%f",answer];
    num1=0;
    num2=0;
    answer = 0.0;
    operand = PLUS;
    [self printNumber];
}
-(IBAction)clearNum:(id)sender {
    theNumber = @"0";
    [self printNumber];
}
-(void)saveNum1{
    num1 = [theNumber integerValue];
    theNumber = @"0";
    [self printNumber];
}


-(IBAction)setPlus:(id)sender{
    [self saveNum1];
    operand = PLUS;
    
}

-(IBAction)setMinus:(id)sender{
    [self saveNum1];
    operand = MINUS;
    
}

-(IBAction)setMultiply:(id)sender{
    [self saveNum1];
    operand = MULTIPLY;
    
}
-(IBAction)setDivide:(id)sender{
    [self saveNum1];
    operand = DIVIDE;
    
}





//method for printing number 0
-(void)printNumber{
    [lblText setText:theNumber];
}
//event handler.
-(IBAction)press0:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"0"];
    [lblText setText:theNumber];
    [self printNumber];
    
}
-(IBAction)press1:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"1"];
    [lblText setText:theNumber];
    [self printNumber];
}
-(IBAction)press2:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"2"];
    [lblText setText:theNumber];
    [self printNumber];
}
-(IBAction)press3:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"3"];
    [lblText setText:theNumber];
    [self printNumber];
}
-(IBAction)press4:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"4"];
    [lblText setText:theNumber];
    [self printNumber];
}
-(IBAction)press5:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"5"];
    [lblText setText:theNumber];
    [self printNumber];
}
-(IBAction)press6:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"6"];
    [lblText setText:theNumber];
    [self printNumber];
}
-(IBAction)press7:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"7"];
    [lblText setText:theNumber];
    [self printNumber];
}
-(IBAction)press8:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"8"];
    [lblText setText:theNumber];
    [self printNumber];
}

-(IBAction)press9:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"9"];
    [lblText setText:theNumber];
    [self printNumber];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
