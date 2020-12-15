//
//  ViewController.m
//  Category
//
//  Created by DayDream on 2020/12/10.
//

#import "ViewController.h"
#import "DDButton.h"
#import <Masonry/Masonry.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    DDButton *ddBtn = [[DDButton alloc]initWithTitle:@"HYD" ImageName:nil TextColor:[UIColor greenColor] Font:[UIFont systemFontOfSize:21.f] Alignment:NSTextAlignmentCenter];
    [self.view addSubview:ddBtn];
    [ddBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(120);
        make.centerX.equalTo(self.view);
    }];
  
   
    // Do any additional setup after loading the view.
}


@end
