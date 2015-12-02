//
//  ViewController.m
//  WorkWithKeychain
//
//  Created by Kittitat Rodphotong on 10/15/2558 BE.
//  Copyright © 2558 kittitat. All rights reserved.
//

#import "ViewController.h"
#import <SSKeychain/SSKeychain.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    //[SSKeychain setPassword:@"444444" forService:@"EnableTouchID" account:@"UserTouchID"];
    
    //BOOL isDone = [SSKeychain deletePasswordForService:@"EnableTouchID" account:@"UserTouchID"];
    
    /*if (isDone) {
        NSLog(@"Save in Keychain!!");
        
    } else {
        NSLog(@"Save Fail!!");
        s
    }*/
    
    NSArray *keyChainDic = [SSKeychain allAccounts];
    NSLog(@"Key Dic : %@", keyChainDic.description);
    NSLog(@"Dic Count : %lu", (unsigned long)keyChainDic.count);
    
    NSString *myPass = [SSKeychain passwordForService:@"EnableTouchID" account:@"UserTouchID"];
    
    NSLog(@"MyPass is : %@", myPass);
    
}


@end
