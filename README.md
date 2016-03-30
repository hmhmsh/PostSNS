# PostSNS

SNSに投稿するためのライブラリ

# Usage

    #import "PostSNSViewController.h"
    
    // 共有するItem
    NSMutableArray *activityItems = [[NSMutableArray alloc] init];
    [activityItems addObject: @"初期文字"];
    // [activityItems addObject: [NSURL URLWithString:@"投稿するURL"]];
    // [activityItems addObject: [UIImage imageNamed:@"初期画像"]];
    
    // 表示しないSNS
    NSMutableArray* excludedActivityTypes = [[NSMutableArray alloc]init];
    [excludedActivityTypes addObject:UIActivityTypeAirDrop];
    [excludedActivityTypes addObject:UIActivityTypePostToTwitter];
    
    [PostSNSViewController showActionSheet:self ActivityItems:activityItems ExcludedActivityTypes:excludedActivityTypes];
