//
//  EnterNameViewController.m
//  Segue
//
//  Created by Maxi Casal on 9/30/14.
//  Copyright (c) 2014 Maxi Casal. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"


@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.nameTextField becomeFirstResponder];
    self.nextButton.backgroundColor = [UIColor yellowColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterAdjectiveViewController *adjectiveViewController =segue.destinationViewController;
    adjectiveViewController.name = self.nameTextField.text;
}
-(BOOL) shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([self.nameTextField.text isEqualToString:@""]) {
        return NO;
    }
    return YES;
}

@end
