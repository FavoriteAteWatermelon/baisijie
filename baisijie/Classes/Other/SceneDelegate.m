//
//  SceneDelegate.m
//  baisijie
//
//  Created by s on 2020/9/27.
//

#import "SceneDelegate.h"
#import "EssenceViewController.h"
#import "NewViewController.h"
#import "FriendViewController.h"
#import "PublishViewController.h"
#import "MeTableViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
//   1. 创建窗口
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
    self.window.frame = windowScene.coordinateSpace.bounds;
//    2.指定rootView
    UITabBarController *tabBar = [[UITabBarController alloc] init];
    self.window.rootViewController = tabBar;
//     2.1添加自控制器
//    添加清华控制器
    EssenceViewController *essenceVc = [[EssenceViewController alloc]init];
    
//    2.2 添加导航
    UINavigationController *essenceNc = [[UINavigationController alloc]initWithRootViewController:essenceVc];
     
    NewViewController *newVc = [[NewViewController alloc]init];
    UINavigationController *newNc = [[UINavigationController alloc]initWithRootViewController:newVc];
    FriendViewController *friendVc = [[FriendViewController alloc]init];
    UINavigationController *friendNc = [[UINavigationController alloc]initWithRootViewController:friendVc];
    
    PublishViewController *publicVc = [[PublishViewController alloc]init];
    UINavigationController *publicNc = [[UINavigationController alloc]initWithRootViewController:publicVc];
    MeTableViewController *meVc = [[MeTableViewController alloc]init];
    UINavigationController *meNc = [[UINavigationController alloc]initWithRootViewController:meVc];
//    精华
    essenceNc.tabBarItem.title = @"精华";
    essenceNc.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    essenceNc.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
//    新帖
    newNc.tabBarItem.title = @"新帖";
    newNc.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    newNc.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_new_click_icon"];
//    发布
//    publicNc.tabBarItem.title = @"新帖";
    publicNc.tabBarItem.image = [UIImage imageNamed:@"tabBar_publish_icon"];
    publicNc.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_publish_click_icon"];
    
//    关注
    friendNc.tabBarItem.title = @"关注";
    friendNc.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    friendNc.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    
//    我
    meNc.tabBarItem.title = @"我";
    meNc.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    meNc.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
    [tabBar addChildViewController:essenceNc];
    [tabBar addChildViewController:newNc];
    [tabBar addChildViewController:publicNc];
    [tabBar addChildViewController:friendNc];
    [tabBar addChildViewController:meNc];
//    3.显示窗口是window主窗口
    [self.window makeKeyAndVisible];
    
    
    
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
