//
//  EnterThingViewController.m
//  Segue
//
//  Created by Maxi Casal on 10/1/14.
//  Copyright (c) 2014 Maxi Casal. All rights reserved.
//

#import "EnterThingViewController.h"
#import "EnterVerbViewController.h"

@interface EnterThingViewController ()
@property (weak, nonatomic) IBOutlet UITextField *thingText;
@property (weak, nonatomic) IBOutlet UIButton *continueButton;

@end

@implementation EnterThingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.thingText becomeFirstResponder];
    self.continueButton.backgroundColor = [UIColor yellowColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
EnterVerbViewController     *verbViewController =segue.destinationViewController;
    verbViewController.thing = self.thingText.text;
    verbViewController.adjective = self.adjective;
    verbViewController.name = self.name;
}
-(BOOL) shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([self.thingText.text isEqualToString:@""]) {
        return NO;
    }
    return YES;
}

@end
