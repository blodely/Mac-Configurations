#!/bin/bash
# 
# Created By Luo Yu(blodely, indie.luo@gmail.com)
# Wednesday, January 5, 2022
#

echo ""
echo ""
echo "----------------------------------"
echo ""
echo "Welcome to PodLibGenerator script!"
echo ""
echo "This script can and only generate local pod library."
echo ""
read -p "Creator name: " ip_creator
read -p "Creator email: " ip_email
# read -p "Lib name (localized): " ip_lib_lo
read -p "Lib name (en): " ip_lib_en
timestamp=$(date "+%Y%m%d")
year=$(date "+%Y")
echo ""
echo ""
echo "Generating LICENSE file:"

echo "Copyright (c) 2022 $ip_creator <$ip_email>

This is a private project. ALL RIGHTS RESERVED.
" > LICENSE
echo "done."
echo ""
echo ""
echo "Generating README file:"
echo "# $ip_lib_en

### Requirements

Cocoapods.

### Installation

$ip_lib_en is available through local [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

pod '$ip_lib_en', :path => '/path/to/local/module/'

### Author

$ip_creator, $ip_email

### License

$ip_lib_en is available under a private license. See the LICENSE file for more info.

" > README.md
echo "done."
echo ""
echo ""
echo "Generating Pod spec file:"
echo "#
# Created by $ip_creator
# $timestamp
#
Pod::Spec.new do |s|
  s.name             = '$ip_lib_en'
  s.version          = '0.1.0'
  s.summary          = 'App Module $ip_lib_en.'
  s.description      = <<-DESC
This is module $ip_lib_en.
  DESC
  s.homepage         = 'http://localhost'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '$ip_creator' => '$ip_email' }
  s.source           = { :git => '', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.source_files = '$ip_lib_en/Classes/**/*'
  s.resource_bundles = {
    '$ip_lib_en' => ['$ip_lib_en/Assets/*.png', '$ip_lib_en/Classes/**/*.xib']
  }
  s.frameworks = 'UIKit' #, 'MapKit'
  s.dependency 'LYCategory'
  #s.dependency 'LYFactAppCommon'
end
" > $ip_lib_en.podspec
echo "done."
echo ""
echo ""
echo "Creating folders..."
mkdir -p $ip_lib_en/Assets
mkdir -p $ip_lib_en/Classes
mkdir -p $ip_lib_en/Classes/category
echo "" > $ip_lib_en/Assets/.gitkeep
# echo "//
# // Generated by Rick Luo's script.
# //" > $ip_lib_en/Classes/ReplaceMe.m
echo "done."
echo ""
echo ""
echo "//
//  ${ip_lib_en}.h
//  ${ip_lib_en}
//
//  CREATED BY $ip_creator ON $timestamp.
//  COPYRIGHT (C) $year $ip_lib_en. ALL RIGHTS RESERVED.
//

#import <Foundation/Foundation.h>

@interface ${ip_lib_en} : NSObject
@end
" > $ip_lib_en/Classes/$ip_lib_en.h
echo "${ip_lib_en}.h"
echo ""
echo "//
//  ${ip_lib_en}.m
//  ${ip_lib_en}
//
//  CREATED BY $ip_creator ON $timestamp.
//  COPYRIGHT (C) $year $ip_lib_en. ALL RIGHTS RESERVED.
//

#import \"${ip_lib_en}.h\"


@implementation ${ip_lib_en}
@end
" > $ip_lib_en/Classes/$ip_lib_en.m
echo "${ip_lib_en}.m"
echo ""
echo ""
echo "//
//  NSBundle+${ip_lib_en}Module.h
//  ${ip_lib_en}
//
//  CREATED BY $ip_creator ON $timestamp.
//  COPYRIGHT (C) $year $ip_lib_en. ALL RIGHTS RESERVED.
//

#import <Foundation/Foundation.h>


@interface NSBundle (${ip_lib_en}Module)

+ (instancetype)module${ip_lib_en}Bundle;

@end
" > $ip_lib_en/Classes/category/NSBundle+${ip_lib_en}Module.h
echo "NSBundle+${ip_lib_en}Module.h"
echo ""
echo "//
//  NSBundle+${ip_lib_en}Module.m
//  ${ip_lib_en}
//
//  CREATED BY $ip_creator ON $timestamp.
//  COPYRIGHT (C) $year $ip_lib_en. ALL RIGHTS RESERVED.
//

#import \"NSBundle+${ip_lib_en}Module.h\"
#import <${ip_lib_en}/${ip_lib_en}.h>


@implementation NSBundle (${ip_lib_en}Module)

+ (instancetype)module${ip_lib_en}Bundle {
	return [NSBundle bundleWithURL:[[NSBundle bundleForClass:[${ip_lib_en} class]] URLForResource:@\"${ip_lib_en}\" withExtension:@\"bundle\"]];
}

@end
" > $ip_lib_en/Classes/category/NSBundle+${ip_lib_en}Module.m
echo "NSBundle+${ip_lib_en}.m"
echo ""
echo ""
# echo "" > $ip_lib_en/Classes/category/UIImage+${ip_lib_en}Module.h
# echo "" > $ip_lib_en/Classes/category/NSBundle+${ip_lib_en}Module.m
echo ""
echo "The End."
echo "----------------------------------"
