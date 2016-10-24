//
//  AKZPlaylistDetailTableViewController.m
//  AKZPlaylistDisplay
//
//  Created by minus one on 23/10/16.
//  Copyright © 2016 Spyridon Chatzikotoulas. All rights reserved.
//

#import "AKZPlaylistDetailTableViewController.h"
#import "AKZSessionManager.h"
#import "SVProgressHUD.h"
#import "AKZGetItemsResponse.h"
#import "AKZItems.h"

@interface AKZPlaylistDetailTableViewController ()

@property(nonatomic, strong)NSArray *playlistDetailItems;

@end

@implementation AKZPlaylistDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Playlist Detail";
    [SVProgressHUD showWithStatus:@"Loading Playlists"];    
    
    [[AKZSessionManager sharedManager] getItemsForPlaylist:self.playlistDetail success:^(AKZGetItemsResponse *response) {
        [SVProgressHUD dismiss];
        self.playlistDetailItems = response.items;
        [self.tableView reloadData];
        NSLog(@"Print Result %@",response.items);
    } failure:^(NSError *error) {
        [SVProgressHUD dismiss];
        NSLog(@"Got Error %@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.playlistDetailItems.count;
}

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewAutomaticDimension;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"playlistDetailCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    AKZItems *playlist = self.playlistDetailItems[indexPath.row];
    
    UILabel *trackName = [cell.contentView viewWithTag:1];
    UILabel *artistName = [cell.contentView viewWithTag:2];
    
    trackName.text = [@"Track: " stringByAppendingString:playlist.trackName];
    artistName.text =[@"Artist: " stringByAppendingString:playlist.artistName];
    
    cell.tag = indexPath.row;
    
    return cell;
}

@end
