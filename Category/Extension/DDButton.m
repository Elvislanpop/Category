//
//  DDButton.m
//  Category
//
//  Created by DayDream on 2020/12/13.
//

#import "DDButton.h"
@interface DDButton()

@end
@implementation DDButton

/// 常用初始化
/// @param title 按钮标题
/// @param imageName 按钮图片
/// @param color 文字颜色
/// @param alignment 对齐方式
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
-(instancetype)initWithTitle:(nullable NSString *)title ImageName:(nullable NSString *)imageName TextColor:(UIColor *)color  Font: (UIFont *)font Alignment:(NSTextAlignment )alignment
{
    if (self = [super init]) {
        self = [DDButton buttonWithType:UIButtonTypeCustom];
        [self setTitle:title forState:0];
        [self setTitleColor:color forState:UIControlStateNormal];
        [self setTitleColor:color forState:UIControlStateNormal];
        self.titleLabel.font = font;
        self.titleLabel.textAlignment = alignment;
    }
    
    return self;
}


/// 图片和文字状态不同位置组合的初始化
/// @param style 枚举类型，对应4种类型
/// @param space 图片文字的间距
-(instancetype)initWithStyle:(ButtonStyle)style Space:(CGFloat)space
{
    if (self = [super init]) {
        
        
    }
    return self;
}

#pragma clang diagnostic pop

@end
