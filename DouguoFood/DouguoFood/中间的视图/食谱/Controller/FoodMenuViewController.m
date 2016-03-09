//
//  FoodMenuViewController.m
//  DouguoFood
//
//  Created by mac on 15/9/25.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "FoodMenuViewController.h"

@interface FoodMenuViewController ()

@end

@implementation FoodMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *titleLabel = (UILabel *)self.navigationItem.titleView;
    titleLabel.text = @"食谱";
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 43)];
    [btn setBackgroundImage:[UIImage imageNamed:@"profile_setting@2x.png"] forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    
    UIWebView *view = [[UIWebView alloc] initWithFrame:self.view.bounds];
    NSString *str = @"<p class=\"p1\"><span class=\"s1\">引用音乐家舒曼的一句话：</span></p>\n<p class=\"p1\"><span class=\"s1\">自然只给了我们生命，艺术却使我们成了人－－舒曼</span></p>\n<p class=\"p1\"><span class=\"s1\">习惯了撕逼、八卦、宅腐，无病呻吟，这个娱乐至死的快速消费时代，为什么不尝试一下慢下来身心去发现关于艺术的一切，去欣赏那些伟大充满力量的美。</span></p>\n<h2>DailyArt</h2>\n<p><a href=\"http://zuimeia.com/api/service/redirect/?p=com.moiseum.dailyart2\">点击下载</a></p>\n<p>DailyArt 每天会推荐一幅世界名画，上滑是该画的的故事背景与作者创作有关的介绍，DailyArt 简直为我们了解世界名画打开了新世界的大门啊！每天都能欣赏到一副名画也是一种享受。</p>\n<p><img src=\"http://qstatic.zuimeia.com/img/article/3376/e9a70cee1e6fa1c46f70340cf62515f4_1080x1920.png?imageMogr/v2/gravity/South/crop/!1080x1920-0-80|imageMogr/v2/auto-orient/thumbnail/600x1000/quality/60\" alt=\"\" width=\"320\" height=\"547\" /><img src=\"http://qstatic.zuimeia.com/img/article/3376/b344adb5324803c433cfbcab5dd4c3ed_1080x1920.png?imageMogr/v2/gravity/South/crop/!1080x1920-0-80|imageMogr/v2/auto-orient/thumbnail/600x1000/quality/60\" alt=\"\" width=\"320\" height=\"547\" /></p>\n<h2>艺术云图</h2>\n<p><a href=\"http://zuimeia.com/api/service/redirect/?p=com.yuntoo.yuntooapk\">点击下载</a></p>\n<p>艺术云图只有一条信息流，一个功能，一个目的，就是为你呈现一切关于艺术的人、故事、视觉。小美总是能在里面发现很补脑的故事。</p>\n<p><img src=\"http://qstatic.zuimeia.com/img/article/3376/2211a0f3a8599ebd0a1df0fd8d839549_1080x1920.png?imageMogr/v2/gravity/South/crop/!1080x1920-0-80|imageMogr/v2/auto-orient/thumbnail/600x1000/quality/60\" alt=\"\" width=\"320\" height=\"547\" /><img src=\"http://qstatic.zuimeia.com/img/article/3376/3c73303a4a737aab9809c05e4194b2a0_1080x1920.png?imageMogr/v2/gravity/South/crop/!1080x1920-0-80|imageMogr/v2/auto-orient/thumbnail/600x1000/quality/60\" alt=\"\" width=\"320\" height=\"547\" /></p>\n<h2>The Met</h2>\n<p><a href=\"http://zuimeia.com/api/service/redirect/?p=org.metmuseum.android.met\">点击下载</a></p>\n<p>The Met 是来自纽约大都会艺术博物馆的官方应用，虽然 The Met 主要为参展的用户服务，但是里面也有许多博物馆藏品的展示。</p>\n<p>ps. 大都会艺术博物馆是美国最大的艺术博物馆，与英国伦敦的大英博物馆、法国巴黎的卢浮宫、俄罗斯圣彼得堡的列宁格勒美术馆齐名的世界四大美术馆之一。</p>\n<p><img src=\"http://qstatic.zuimeia.com/img/article/3377/665a76e7d7f803450be7c6114d236c6f_1080x1920.png?imageMogr/v2/gravity/South/crop/!1080x1920-0-80|imageMogr/v2/auto-orient/thumbnail/600x1000/quality/60\" alt=\"\" width=\"320\" height=\"547\" /><img src=\"http://qstatic.zuimeia.com/img/article/3377/591bf9f90da0f3fc2fb792e210cedd99_1080x1920.png?imageMogr/v2/gravity/South/crop/!1080x1920-0-80|imageMogr/v2/auto-orient/thumbnail/600x1000/quality/60\" alt=\"\" width=\"320\" height=\"547\" /></p>\n<h2>艺术狗</h2>\n<p><a href=\"http://zuimeia.com/api/service/redirect/?p=com.yicang.artgoer\">点击下载</a></p>\n<p>光在手机屏幕上看艺术作品看那些伟大艺术家的故事永远是不够的，艺术应该亲身去体验亲自用目光去捕捉。虽然大都会艺术博物馆远在这个星球的另一端，但是你所在的城市一定有不少不错艺术展，艺术狗将为你提供你所在城市的最及时的艺术展览信息，而且你也可以关注你喜欢的博物馆时刻关注他们的动态。</p>\n<p><img src=\"http://qstatic.zuimeia.com/img/article/3376/c84ee44a825a6c3461c8d0a17f936c3f_1080x1920.png?imageMogr/v2/gravity/South/crop/!1080x1920-0-80|imageMogr/v2/auto-orient/thumbnail/600x1000/quality/60\" alt=\"\" width=\"320\" height=\"547\" /><img src=\"http://qstatic.zuimeia.com/img/article/3376/429ebc27183bd91ff9493e5e74d5a37f_1080x1920.png?imageMogr/v2/gravity/South/crop/!1080x1920-0-80|imageMogr/v2/auto-orient/thumbnail/600x1000/quality/60\" alt=\"\" width=\"320\" height=\"547\" /></p>\n<h2>VART</h2>\n<p><a href=\"http://zuimeia.com/api/service/redirect/?p=cc.vart\">点击下载</a></p>\n<p>VART 也是一款艺术展览信息发布应用，但是区别于一般的同类应用 VART 的大招相当给力，就是语音导览，VART 除了提供展览信息还提供真人的语音讲解，让你对展览的作品有更详细的了解</p>\n<p><img src=\"http://qstatic.zuimeia.com/img/article/3376/30d88e7b798cba4aaf101461103e50ee_750x1334.png?imageMogr/v2/gravity/South/crop/!750x1334-0-40|imageMogr/v2/auto-orient/thumbnail/600x1000/quality/60\" alt=\"\" width=\"320\" height=\"551\" /><img src=\"http://qstatic.zuimeia.com/img/article/3376/dce78f881edb500b917002f74aecbe19_750x1334.png?imageMogr/v2/gravity/South/crop/!750x1334-0-40|imageMogr/v2/auto-orient/thumbnail/600x1000/quality/60\" alt=\"\" width=\"320\" height=\"551\" /></p>\n<h2>DeviantArt</h2>\n<p><a href=\"http://zuimeia.com/api/service/redirect/?p=com.deviantart.android.damobile\">点击下载</a></p>\n<p>除了那些经过时间洗礼沉淀下来的经典艺术作品，还可以感受一下这个时代的艺术，DeviantArt 是最著名的艺术设计社区之一，已经有 14 年历史的 DeviantArt 可谓同类社区的老前辈，但人气可丝毫没有随着时光流逝而衰减。社区内所涉及的艺术领域非常广泛，更是高人如云，无论你是无论你是艺术家、设计师，还是普通的爱好者，都不该错过。</p>\n<p><img src=\"http://qstatic.zuimeia.com/img/article/2347/1b808d860735d9fc265140c02da378e3_720x1280.jpg?imageMogr/v2/gravity/South/crop/!720x1280-0-40|imageMogr/v2/auto-orient/thumbnail/600x1000/quality/60\" alt=\"\" width=\"320\" height=\"551\" /><img src=\"http://qstatic.zuimeia.com/img/article/2347/1514c6dbc2bb498755c4f82eac6ebf29_720x1280.jpg?imageMogr/v2/gravity/South/crop/!720x1280-0-40|imageMogr/v2/auto-orient/thumbnail/600x1000/quality/60\" alt=\"\" width=\"320\" height=\"551\" /></p>\n<h2>Muzei</h2>\n<p><a href=\"http://zuimeia.com/api/service/redirect/?p=net.nurik.roman.muzei\">点击下载</a></p>\n<p>Muzei 是一款动态壁纸应用，当然这并没有什么，重点是 Muzei 的壁纸使用的是世界名画，而且每天自动更新一幅，瞬间让你的手机变成移动艺术博物馆。<br />ps. Muzei 是俄语中博物馆一词的音译。</p>\n<p><img src=\"http://qstatic.zuimeia.com/img/article/3377/609cc46ee61688948e88aa5e8c013026_506x900.png?imageMogr/v2/gravity/South/crop/!506x900-0-40|imageMogr/v2/auto-orient/thumbnail/600x1000/quality/60\" alt=\"\" width=\"320\" height=\"542\" /><img src=\"http://qstatic.zuimeia.com/img/article/3377/3166373d1393f03aa935a3116811b578_506x900.png?imageMogr/v2/gravity/South/crop/!506x900-0-40|imageMogr/v2/auto-orient/thumbnail/600x1000/quality/60\" alt=\"\" width=\"320\" height=\"542\" /></p>\n<h2>谷歌艺术博物馆（Web＋梯子）</h2>\n<p>谷歌艺术博物馆也就是谷歌于 2011 年上线的「Art Project」，将把全世界著名博物馆、美术馆的名画以70亿像素的高清晰度呈现于互联网（谷歌大法好！），世界各地的博物馆的艺术品真实的展现在你的屏幕上，外加谷歌的街景技术可以让你仿佛置身于博物馆中在其中自由走动观赏。真心非常赞强烈推荐！</p>";
    
    [view loadHTMLString:str baseURL:nil];
    
    [self.view addSubview:view];
    
    
    
}



@end
