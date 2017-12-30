//
//  RTFViewController.swift
//  RTFViewController
//
//  Created by Uli Kusterer on 01/05/16.
//  Copyright © 2016 Uli Kusterer. All rights reserved.
//

import Cocoa

public class RTFViewController: NSViewController {
	@IBOutlet var rtfView: NSTextView!
	var filePath : String = ""
	var editable : Bool = false
	
	public init?( filePath inFilePath: String )
	{
		super.init(nibName: nil, bundle: nil)
		filePath = inFilePath;
	}
	
	required public init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
    override public func viewDidLoad()
	{
        super.viewDidLoad()
		
		do {
			rtfView.isEditable = editable;
			let rtfData = try Data(contentsOf: URL(fileURLWithPath:filePath))
			rtfView.replaceCharacters(in: NSRange(location:0, length: 0), withRTF: rtfData )
		} catch {
			print("Error: \(error)")
		}
    }
    
}
