//
//  CalculatorViewController.m
//  LearnShakingTheiPhone
//
//  Created by ammar falmban on 6/15/13.
//  Copyright (c) 2013 iCSTH. All rights reserved.
//
#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

@synthesize ShakingLabel =_ShakingLabel ;

-(BOOL)canBecomeFirstResponder{
    
    return YES;
}


-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{

    if( motion == UIEventSubtypeMotionShake){
        
        [self showAlert];
    }

}
-(IBAction)showAlert{
    
    
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Hello man" message:@"Shaking " delegate:nil cancelButtonTitle:@"Awsom" otherButtonTitles:nil];
    
    [alertView show];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
