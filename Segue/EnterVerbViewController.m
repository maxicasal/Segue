//
//  EnterVerbViewController.m
//  Segue
//
//  Created by Maxi Casal on 10/1/14.
//  Copyright (c) 2014 Maxi Casal. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "ResultsViewController.h"

@interface EnterVerbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *verTextField;

@property (weak, nonatomic) IBOutlet UIButton *seeButton;
@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.verTextField becomeFirstResponder];
    self.seeButton.backgroundColor=[UIColor yellowColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ResultsViewController  *resultViewController =segue.destinationViewController;
    resultViewController.verb = self.verTextField.text;
    resultViewController.adjective = self.adjective;
    resultViewController.name = self.name;
    resultViewController.thing = self.thing;
}
-(BOOL) shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([self.verTextField.text isEqualToString:@""]) {
        return NO;
    }
    return YES;
}

@end
