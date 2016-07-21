//
//  SquareViewItem.m
//  SquareListView
//
//  Created by Smile on 16/7/21.
//  Copyright © 2016年 llbt. All rights reserved.
//

#import "SquareViewItem.h"


#define ButtonWidth  self.frame.size.width
#define ButtonHeight  self.frame.size.height


@implementation SquareViewItem

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor whiteColor];
        [self setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont systemFontOfSize:12.0f];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    
    CGFloat h = ButtonHeight * 0.3;
    CGFloat w = h;
    CGFloat x = (ButtonWidth - w) * 0.5;
    CGFloat y = ButtonHeight * 0.3;
    
    return CGRectMake(x, y, w, h);
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
   
    CGFloat x = 0;
    CGFloat y = ButtonHeight * 0.6;
    CGFloat w = ButtonWidth;
    CGFloat h = ButtonHeight * 0.3;
    
    return CGRectMake(x, y, w, h);
}
@end
