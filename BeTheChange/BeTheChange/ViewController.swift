//
//  ViewController.swift
//  BeTheChange
//
//  Created by Jeet Patel on 4/7/17.
//  Copyright © 2017 BeTheChange. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class JPTabBar: UITabBarController {
	static var statusBarStyle:UIStatusBarStyle = .lightContent
	
	override var preferredStatusBarStyle: UIStatusBarStyle {
		return JPTabBar.statusBarStyle
	}
}
class ViewController: UIViewController {
	@IBOutlet var gradientView: UIView!

	override func viewDidLoad() {
		super.viewDidLoad()
		createLoginButton()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	override var shouldAutorotate: Bool {
		return false
	}

	override var preferredStatusBarStyle: UIStatusBarStyle {
		return .lightContent
	}
}

extension ViewController:FBSDKLoginButtonDelegate {
	func loginButtonWillLogin(_ loginButton: FBSDKLoginButton!) -> Bool {
		print("will login")
		return true
	}
	func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
		print("Did log out")
	}
	func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
		print("Login Did Complete")
		if result.isCancelled {
			print("Cancelled!")
		}
	}
}

extension ViewController {
	func createLoginButton() {
		let fbLoginButton = FBSDKLoginButton()
		fbLoginButton.delegate=self
		self.view.layoutIfNeeded()
		fbLoginButton.translatesAutoresizingMaskIntoConstraints=false
		view.addSubview(fbLoginButton)
		
		var constraints:[NSLayoutConstraint] = []
		constraints.append(NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: fbLoginButton, attribute: .bottom, multiplier: 1, constant: 0))

		constraints.append(NSLayoutConstraint(item: view, attribute: .centerX, relatedBy: .equal, toItem: fbLoginButton, attribute: .centerX, multiplier: 1, constant: 0))
		constraints.append(NSLayoutConstraint(item: fbLoginButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.7, constant: 0))
		
		self.view.addConstraints(constraints)
	}
}
