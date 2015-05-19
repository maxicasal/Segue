//
//  ResultsViewController.m
//  Segue
//
//  Created by Maxi Casal on 9/30/14.
//  Copyright (c) 2014 Maxi Casal. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;
@property (weak, nonatomic) IBOutlet UIButton *restarButton;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.restarButton.backgroundColor = [UIColor yellowColor];
    self.resultTextView.text = [NSString stringWithFormat:@"One day, %@ was %@ doing some %@ with %@",self.name, self.adjective, self.verb, self.thing];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
