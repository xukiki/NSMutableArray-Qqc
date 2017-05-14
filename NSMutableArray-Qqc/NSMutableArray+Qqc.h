//
//  NSMutableArray+Qqc.h
//  QqcBaseFramework
//
//  Created by qiuqinchuan on 16/2/25.
//  Copyright © 2016年 Qqc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Qqc)

/**
 *  移除数组最后的元素并返回该元素
 *
 *  @return 返回移除的元素
 */
- (id)pop;

/**
 *  移除第一个元素并返回该元素
 *
 *  @return 返回移除的元素
 */
- (id)shift;

/**
 *  安全添加对象，加入数组之前验证对象是否为nil
 *
 *  @param anObject 需要添加的对象
 */
- (void)safeAddObject:(id)anObject;

/**
 *  安全插入一个元素到给定的位置
 *
 *  @param anObject 插入对象，为空时不处理
 *  @param index    索引值，大于或等于count时不做处理
 */
- (void)safeInsertObject:(id)anObject atIndex:(NSUInteger)index;

/**
 *  将数组中指定位置的元素移动到新的位置
 *
 *  @param fromIndex 要挪动的元素索引
 *  @param toIndex   元素新位置索引
 */
- (void)moveObjectFromIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex;

@end
