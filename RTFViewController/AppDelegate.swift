//
//  AppDelegate.swift
//  RTFViewController
//
//  Created by Uli Kusterer on 01/05/16.
//  Copyright © 2016 Uli Kusterer. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet weak var window: NSWindow!
	var viewController : RTFViewController?
	

	func applicationDidFinishLaunching(aNotification: NSNotification) {
		viewController = RTFViewController(filePath: "/Users/uli/Desktop/Test.rtf")
		//viewController!.editable = true
		window.contentView = viewController!.view;
	}

	func applicationWillTerminate(aNotification: NSNotification) {
		// Insert code here to tear down your application
	}


}

