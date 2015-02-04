//
//  GameScene.m
//  HeroWars
//
//  Created by Max Shashoua on 1/31/15.
//  Copyright (c) 2015 Max Shashoua. All rights reserved.
//
#import "Map.h"
#import "GameScene.h"
#import "Gameboard.h"

@implementation GameScene

NSInteger CELL_SIZE = 100;

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    NSArray *typeArray = @[@"p",@"f",@"p",@"p",@"p",
                          @"p",@"p",@"f",@"p",@"p",
                          @"p",@"p",@"f",@"p",@"p",
                          @"p",@"f",@"p",@"p",@"p",
                          @"p",@"p",@"p",@"p",@"p",];
    Map *map = [[Map alloc]initWithArray:typeArray];
    _board = [[Gameboard alloc]initWithMap:map];
    [self drawGrid];
    
}

-(void)drawGrid {
    for (int r = 0; r < [_board.grid count]; r++) {
        NSArray *row = _board.grid[r];
        for (int c = 0; c < [row count]; c++) {
            Tile *tile = _board.grid[r][c];
            tile.position = CGPointMake(c * CELL_SIZE, r * CELL_SIZE);
            [self addChild:tile];
        }
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    for (UITouch *touch in touches) {
        
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
