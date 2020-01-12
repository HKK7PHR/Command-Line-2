//
//  main.swift
//  CmdLine2
//
//  Created by Patrick Roberts on 1/9/20.
//  Copyright © 2020 Patrick Roberts. All rights reserved.
//
// Written using John Sundell's ShellOut
// https://github.com/JohnSundell/ShellOut
//

#warning(" Written For MACOSX       ")

import Foundation
import ShellOut // John Sundell is the man !

print(" ","\n") // just a blank line

print("Command Line Demo 2.0","\n") // prints title

print(Date.init(),"\n")  // prints date and time

func myshellout(cmdx: String, argx: String) throws {
    let echox = try shellOut(to: cmdx, arguments: [argx])
  print(echox,"\n") // needs refined
}

try myshellout(cmdx: "uname", argx: "-a") // Print operating system name

try myshellout(cmdx: "uptime", argx: "") // show how long system has been running

try myshellout(cmdx: "netstat", argx: "-wte") // show network status

try myshellout(cmdx: "echo", argx: "🧠") // print the brain emoji

//end
