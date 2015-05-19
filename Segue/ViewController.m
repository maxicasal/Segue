//
//  ViewController.m
//  Segue
//
//  Created by Maxi Casal on 9/30/14.
//  Copyright (c) 2014 Maxi Casal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *firstButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.firstButton.backgroundColor = [UIColor yellowColor];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)unwindSegue:(UIStoryboardSegue *)unwindSegue{

}
@end
