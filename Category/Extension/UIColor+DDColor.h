//
//  UIColor+DDColor.h
//  Category
//
//  Created by HYD on 2020/12/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@interface UIColor (DDColor)

/// HEX Color
/// @param rgbValue 16进制颜色值
/// @param alpha 透明度
+(UIColor *)hexColor:(int)rgbValue alpha:(CGFloat)alpha;

/// 随机色
+(UIColor *)randomColor;


/// 不同模式显示不同的颜色
/// @param lightColor 白天模式颜色
/// @param darkColor 暗夜模式颜色
+(UIColor *)colorWithLight:(UIColor *)lightColor DarkColor:(UIColor *)darkColor;


@end

NS_ASSUME_NONNULL_END
