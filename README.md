# FDownLoad
FDownLoad断点下载
Installation

##### CocoaPods

> Add pod 'YYModel' to your Podfile.
> 
> Run pod install or pod update.
> 
> import "FDownLoaderManager.h"


##### Usage

```
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
        NSLog(@"下载信息2:%lld",totalSize);
    } progress:^(float progress) {
        NSLog(@"下载进度2:%f",progress);
    } success:^(NSString *cachePath) {
        NSLog(@"下载成功路径2:%@",cachePath);
    } failed:^{
        NSLog(@"下载失败2");
    }];
}
```
详情请移步简书[iOS 下载功能(断点续传)](https://www.jianshu.com/p/b2bd8853693a).

