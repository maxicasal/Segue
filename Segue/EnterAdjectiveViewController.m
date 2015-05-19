//
//  EnterAdjectiveViewController.m
//  Segue
//
//  Created by Maxi Casal on 9/30/14.
//  Copyright (c) 2014 Maxi Casal. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterVerbViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;
@property (weak, nonatomic) IBOutlet UIButton *adjectiveButton;
@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.adjectiveTextField becomeFirstResponder];
    self.adjectiveButton.backgroundColor = [UIColor yellowColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterVerbViewController *verbViewController = segue.destinationViewController;
    verbViewController.adjective = self.adjectiveTextField.text;
    verbViewController.name = self.name;
}

-(BOOL) shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([self.adjectiveTextField.text isEqualToString:@""]) {
        return NO;
    }
    return YES;
}

@end
