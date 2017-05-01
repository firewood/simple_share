//
//  ViewController.h
//  SimpleShare
//
//  Created by Kenichi Aramaki on 2017/05/01.
//  Copyright © 2017年 competitiveprogramming.info. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)onShareButtonTapped:(id)sender;
- (IBAction)onCrashButtonTapped:(id)sender;

@end

