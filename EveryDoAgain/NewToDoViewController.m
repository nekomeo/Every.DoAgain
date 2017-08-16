//
//  NewToDoViewController.m
//  EveryDoAgain
//
//  Created by Elle Ti on 2017-08-16.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "NewToDoViewController.h"

@interface NewToDoViewController ()
@property (weak, nonatomic) IBOutlet UITextField *toDoTitleTextField;
@property (weak, nonatomic) IBOutlet UITextField *toDoDescriptionTextField;
@property (weak, nonatomic) IBOutlet UITextField *toDoPriorityTextField;

@end

@implementation NewToDoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addNewToDoButton:(UIButton *)sender
{
    NSInteger priority = [self.toDoDescriptionTextField.text intValue];
    [self.delegate passBackTitle:self.toDoTitleTextField.text withDescription:self.toDoDescriptionTextField.text andPriority:priority];
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
