//
//  ViewController.swift
//  MusicWrite
//
//  Created by Owen McGirr on 26/02/2016.
//  Copyright © 2016 Owen McGirr. All rights reserved.
//

import Cocoa

class ViewController:NSViewController {
    
    // outlets
    @IBOutlet weak var noteField: NSTextField!
    @IBOutlet weak var durationField: NSTextField!
    @IBOutlet weak var delayField: NSTextField!
    @IBOutlet weak var outputField: NSScrollView!
    
    
    // output text view 
    var outputTextView: NSTextView {
        get {
            return outputField.contentView.documentView as! NSTextView
        }
    }
    
    
    // load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set output text view font 
        let font = NSFont(name:"Monaco", size:24)
        outputTextView.font = font
    }
    
    
    // addNote method
    @IBAction func addNote(sender: NSButton) {
        // get previous output 
        var output: String = (outputTextView.textStorage as NSAttributedString!).string
        
        // get entry data 
        let note: String = String(noteField.stringValue)
        let duration: String = String(durationField.stringValue)
        let delay: String = String(delayField.stringValue)
        
        // if there was previous output, go to new line
        if output != "" {
            output.appendContentsOf("\n")
        }
        
        // append playNote(
        output.appendContentsOf("playNote(")
        
        // append the note
        output.appendContentsOf("\"")
        output.appendContentsOf(note)
        output.appendContentsOf("\"")
        output.appendContentsOf(", ")
        
        // append the duration 
        output.appendContentsOf(duration)
        output.appendContentsOf(", ")
        
        // append the delay 
        output.appendContentsOf(delay)
        
        // close 
        output.appendContentsOf(");")
        
        // set output text view text 
        outputTextView.string = output
    }
    
}

