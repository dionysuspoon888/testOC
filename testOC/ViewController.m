//
//  ViewController.m
//  testOC
//
//  Created by Dionysus Poon on 29/10/2018.
//  Copyright © 2018 Dionysus Poon. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"
#import "WarnMessageViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *password;

@property (strong, nonatomic) WarnMessageViewController *lbl_noNetwork;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.



    [_username setText:@"omgName"];
    //_username.text = @"omgName";
    
    // _password.text = @"secPwd";
    
    [_password setText:@"secPwd"];
    [_login setTitle:@"LOGIN!!!" forState:UIControlStateNormal];
    
  

    
    
    [self test:1];
    
    
 
    NSLog(@"%@%@", _password,_username);
    
    
    
    //Load Banner View
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"btn_red_bg@2x.png"]];
    [_bottomView addSubview:imageView];
    
    

}

- (IBAction)login:(id)sender {
    [_password setText:@"3rdPwd"];
}

- (void)test:(int)i{
    NSString *numString = [NSString stringWithFormat:@"%d", i];
    NSString *combined = [NSString stringWithFormat:@"%@%@", @"Sam", numString];
    [_username setText:combined];
  
}
- (IBAction)startXib:(id)sender {
    NSLog(@"start Xib");
//    MyViewController *myViewController = [[MyViewController alloc]init];
//    [self presentViewController:myViewController animated:YES completion:nil];
    
//    WarnningAViewController *warnningViewController = [[WarnningAViewController alloc]init];
//      [_bottomView addSubview:warnningViewController];

    WarnMessageViewController *warnMessageViewController = [[WarnMessageViewController alloc]init];

    [_bottomView addSubview:warnMessageViewController.view];
    

//    _lbl_noNetwork = [[WarnMessageViewController alloc] initWithNibName:@"WarnMessageViewController" bundle:nil];
//      _lbl_noNetwork.view.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 80, [UIScreen mainScreen].bounds.size.width, 80);
//
//     AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
//
//    [appDelegate.window.rootViewController.view addSubview:_lbl_noNetwork.view];
   
    
    
}




@end
