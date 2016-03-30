# PostSNS

SNSに投稿するためのライブラリ

# Usage

    #import "PostSNSViewController.h"
    
    NSMutableArray *activityItems = [[NSMutableArray alloc] init];
    [activityItems addObject: @"初期文字"];
    // [activityItems addObject: [NSURL URLWithString:@"投稿するURL"]];
    // [activityItems addObject: [UIImage imageNamed:@"初期画像"]];
    [PostSNSViewController showActionSheet:self ActivityItems:activityItems];
