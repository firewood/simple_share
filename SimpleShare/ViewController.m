//
//  ViewController.m
//  SimpleShare
//
//  Created by Kenichi Aramaki on 2017/05/01.
//  Copyright © 2017年 competitiveprogramming.info. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidAppear:(BOOL)animated {
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.co.jp/"]]];
}


- (IBAction)onShareButtonTapped:(id)sender {
    // No problem
    NSURL *url = [NSURL URLWithString:[_webView stringByEvaluatingJavaScriptFromString:@"document.URL"]];
    [self showActionSheet:@[url]];
}

- (IBAction)onCrashButtonTapped:(id)sender {
    // Crashes
    NSURL *url = [NSURL URLWithString:[_webView stringByEvaluatingJavaScriptFromString:@"document.URL"]];
    [self showActionSheet:@[@"SOME TEXT", url]];
}

- (void)showActionSheet:(NSArray *)items {
    UIActivityViewController *activityView = [[UIActivityViewController alloc] initWithActivityItems:items applicationActivities:nil];
    [self presentViewController:activityView animated:YES completion:^{

    }];
}

@end
