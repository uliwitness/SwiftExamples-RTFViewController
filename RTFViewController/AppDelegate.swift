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
	

	func applicationDidFinishLaunching( _ aNotification: Notification) {
		guard let rtfFilePath = Bundle.main.path(forResource: "Test", ofType: "rtf") else { return }
		viewController = RTFViewController(filePath: rtfFilePath)
//		viewController = RTFViewController(filePath: "/Users/uli/Desktop/Test.rtf")
		//viewController!.editable = true
		window.contentView = viewController!.view;
	}

	func applicationWillTerminate( _ aNotification: Notification) {
		// Insert code here to tear down your application
	}


}

