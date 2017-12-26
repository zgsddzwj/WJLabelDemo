//
//  ViewController.m
//  WJLabelDemo
//
//  Created by AdwardGreen on 2017/12/26.
//  Copyright © 2017年 WangJian. All rights reserved.
//

#import "ViewController.h"
#import "YYLabel.h"
#import "NSAttributedString+YYText.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *content = @"阿酸辣是aasdfsldkfj将Helloworld进行到底啊啥地方了空间啊师傅；独立空间啊";
    YYLabel *lbl = [[YYLabel alloc]initWithFrame:CGRectMake(50, 100, 200, 50)];
    lbl.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:lbl];
    lbl.textAlignment = NSTextAlignmentJustified;
    lbl.truncationToken = [[NSAttributedString alloc]initWithString:@"..."];
    lbl.lineBreakMode = NSLineBreakByCharWrapping;
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc]initWithString:content];
    text.yy_font = [UIFont systemFontOfSize:15];
    text.yy_lineSpacing = 2;
    text.yy_lineBreakMode = NSLineBreakByCharWrapping;

    YYTextContainer *container = [YYTextContainer containerWithSize:CGSizeMake(200, 50)];
    container.truncationType = YYTextTruncationTypeEnd;
    YYTextLayout *layout = [YYTextLayout layoutWithContainer:container text:text];
    lbl.textLayout = layout;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
