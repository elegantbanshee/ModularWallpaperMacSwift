//
//  AppDelegate.swift
//  ModularWallpaperMacSwift
//
//  Created by Rolando Luis Islas on 6/30/22.
//
//

import Cocoa


@main
class AppDelegate: NSObject, NSApplicationDelegate {




    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let process = Process();

        let appPath = "/Applications/ModularWallpaper.app"

        process.arguments = [
            "-Dapple.awt.UIElement=true",
            "-jar",
            appPath + "/Contents/ModularWallpaper/ModularWallpaperMac.jar"
        ]
        process.launchPath = "/usr/bin/java"
        process.launch()
        exit(0)
    }


    func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
    }


    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
    return true
    }



}
