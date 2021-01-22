//
//  ViewController.h
//  w2Calculator
//
//  Created by Xcode User on 2016-09-15.
//  Copyright © 2016 Xcode User. All rights reserved.
//

#import <UIKit/UIKit.h>
#define PLUS 0
#define MINUS 1
#define MULTIPLY 2
#define DIVIDE 3

@interface ViewController : UIViewController
{
    NSInteger num1;
    NSInteger num2;
    double answer;
    
    NSInteger operand;
    NSString *theNumber;
    IBOutlet UILabel *lblText;
}
@property NSInteger num1;
@property NSInteger num2;
@property double answer;

@property NSInteger operand;
@property (nonatomic, strong) NSString *theNumber;
@property (nonatomic, strong) IBOutlet UILabel *lblText;



@end

