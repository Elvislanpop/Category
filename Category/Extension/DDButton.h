//
//  DDButton.h
//  Category
//
//  Created by DayDream on 2020/12/13.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger, ButtonStyle) {
    DefaultStyle, // 左图右文字
    ImageTopTitleBottom, // 图片在上文字在下
    ImageRightTitleLeft, // 右图左文字
    ImageBottomTitleTop,
};
NS_ASSUME_NONNULL_BEGIN

@interface DDButton : UIButton
/// 常用初始化
/// @param title 按钮标题
/// @param imageName 按钮图片
/// @param color 文字颜色
/// @param alignment 对齐方式
-(instancetype)initWithTitle:(nullable NSString *)title ImageName:(nullable NSString *)imageName TextColor:(UIColor *)color  Font:(UIFont *)font Alignment:(NSTextAlignment )alignment;


/// 图片和文字状态不同位置组合的初始化
/// @param style 枚举类型，对应4种类型
/// @param space 图片文字的间距
-(instancetype)initWithStyle:(ButtonStyle)style Space:(CGFloat)space;

@end

NS_ASSUME_NONNULL_END
