//
//  LoginViewController.m
//  ModalTest
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "LoginViewController.h"
#import "ViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *name;

@end

@implementation LoginViewController
- (IBAction)confirmLogin:(id)sender {
    // 1. Notification(비동기 방식)
    //  - UsernameChanged.
    //      이름이 바뀌는 곳은 LoginVC
    //      이름이 바뀌는 것에 관심이 있는 곳은 VC
    //  - 이 이벤트에 관심있는 관심종자들을 정해서 등록한다.
    //  - 이름이 바뀌었을 때 알린다
    NSDictionary *userInfo = @{@"username":self.name.text};
    [[NSNotificationCenter defaultCenter] postNotificationName:@"UsernameChanged" object:nil userInfo:userInfo];
    
    // 2. KVO
    // Key Value Objserving
    
//    NSString *name = self.name.text;
//    ViewController *mainVC = (ViewController *) self.presentingViewController;
//    mainVC.userName.text = name;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
