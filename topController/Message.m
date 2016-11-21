//
//  Message.m
//  topController
//
//  Created by 张衡 on 2016/11/21.
//  Copyright © 2016年 张衡. All rights reserved.
//
@import UIKit;
#import "Message.h"

@implementation Message

+ (void)show:(NSString *)message {
    
    UILabel *label = [[UILabel alloc] init];
    label.text = message;
    label.textAlignment = NSTextAlignmentCenter;
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    
    [window insertSubview:label atIndex:1000];

    label.translatesAutoresizingMaskIntoConstraints = NO;
    [window addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[label]-0-|" options:NSLayoutFormatDirectionMask metrics:nil views:@{@"label" : label}]];
    [window addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[label]-100-|" options:NSLayoutFormatDirectionMask metrics:nil views:@{@"label" : label}]];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [label removeFromSuperview];
    });
}
@end
