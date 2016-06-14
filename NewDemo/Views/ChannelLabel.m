//
//  ChannelLabel.m
//  toolsDemo
//
//  Created by Mr.Q on 16/6/10.
//  Copyright © 2016年 钱立顺. All rights reserved.
//

#import "ChannelLabel.h"

#define kBIGFONT 18
#define kSMALLFONT 14
@implementation ChannelLabel

+ (instancetype)channelLabelWithTName:(NSString *)tname {
    ChannelLabel *lbl = [self new];

    lbl.text = tname;
    lbl.textAlignment = NSTextAlignmentCenter;
    lbl.font = [UIFont systemFontOfSize:kBIGFONT];
    [lbl sizeToFit];

    lbl.font = [UIFont systemFontOfSize:kSMALLFONT];
    return lbl;
}

- (void)setScale:(CGFloat)scale {

    CGFloat max = kBIGFONT * 1.0 / kSMALLFONT - 1;
    self.transform = CGAffineTransformMakeScale(max * scale + 1, max * scale + 1);
    self.textColor = [UIColor colorWithRed:scale green:0 blue:0 alpha:1];
}
@end
