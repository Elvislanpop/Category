//
//  UIColor+DDColor.m
//  Category
//
//  Created by HYD on 2020/12/23.
//

#import "UIColor+DDColor.h"

@implementation UIColor (DDColor)
/// HEX Color
/// @param rgbValue 16进制颜色值
/// @param alpha 透明度
+(UIColor *)hexColor:(int)rgbValue alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:alpha];
}
/// 随机色
+(UIColor *)randomColor
{
    return  [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:arc4random_uniform(256)/255.0];
   
}
/// 不同模式显示不同的颜色
/// @param lightColor 白天模式颜色
/// @param darkColor 暗夜模式颜色
+(UIColor *)colorWithLight:(UIColor *)lightColor DarkColor:(UIColor *)darkColor
{
    if (@available(iOS 13.0,*)) {
        UIColor *color = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            return traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark ? darkColor : lightColor;
         }];
        return color;
    }
    else{
        return lightColor;
    }

}

@end
