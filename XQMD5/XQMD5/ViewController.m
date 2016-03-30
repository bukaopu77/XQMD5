//
//  ViewController.m
//  XQMD5
//
//  Created by 周剑 on 16/2/24.
//  Copyright © 2016年 bukaopu. All rights reserved.
//

#import "ViewController.h"
#import "XQMD5.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MD5是不可逆的只有加密没有解密
    NSString *password = @"hehe";
    NSString *md5 = [XQMD5 md5HexDigest:password];
    NSLog(@"%@", md5);
    
    // AES加密,可以加密也可以解密
    
    // base64加密  encodeBase64String   decodeBase64String
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
