//
//  ViewController.m
//  FDownLoadDemo
//
//  Created by allison on 2018/8/18.
//  Copyright © 2018年 allison. All rights reserved.
//

#import "ViewController.h"
#import "FDownLoaderManager.h"

@interface ViewController ()
@property (nonatomic, strong) NSURL *url;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

/// 下载/继续
- (IBAction)downloadClick:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3349541936,792281887&fm=27&gp=0.jpg"];
    self.url = url;
    NSURL *url2 = [NSURL URLWithString:@"https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2244703782,1847734642&fm=27&gp=0.jpg"];
    
    [[FDownLoaderManager shareInstance]downLoader:url downLoadInfo:^(long long totalSize) {
        NSLog(@"下载信息:%lld",totalSize);
    } progress:^(float progress) {
        NSLog(@"下载进度:%f",progress);
    } success:^(NSString *cachePath) {
        NSLog(@"下载成功路径:%@",cachePath);
    } failed:^{
        NSLog(@"下载失败");
    }];

    [[FDownLoaderManager shareInstance]downLoader:url2 downLoadInfo:^(long long totalSize) {
        NSLog(@"22222下载信息:%lld",totalSize);
    } progress:^(float progress) {
        NSLog(@"22222下载进度:%f",progress);
    } success:^(NSString *cachePath) {
        NSLog(@"22222下载成功路径:%@",cachePath);
    } failed:^{
        NSLog(@"22222下载失败");
    }];
}

/// 暂停
- (IBAction)pauseClick:(UIButton *)sender {
    [[FDownLoaderManager shareInstance] pauseWithURL:self.url];
}


/// 取消
- (IBAction)cancleClick:(UIButton *)sender {
    [[FDownLoaderManager shareInstance] resumeWithURL:self.url];
}


/// 取消/清理缓存
- (IBAction)cancleAndCleanClick:(UIButton *)sender {
    [[FDownLoaderManager shareInstance] cancleWithURL:self.url];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
