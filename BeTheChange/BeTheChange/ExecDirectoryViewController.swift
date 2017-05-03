//
//  ExecDirectoryViewController.swift
//  BeTheChange
//
//  Created by Jeet Patel on 5/3/17.
//  Copyright © 2017 BeTheChange. All rights reserved.
//

import Foundation
import UIKit

class ExecDirectoryViewController:UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

	@IBOutlet var executives: UICollectionView!
	override func viewDidLoad() {

	}
	
	override var preferredStatusBarStyle: UIStatusBarStyle {
		return .lightContent
	}
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "executive", for: indexPath);
		
		var imageView = cell.viewWithTag(1) as! UIImageView
//		imageView.backgroundColor = .gray;
		
		imageView.layer.cornerRadius =  UIScreen.main.bounds.width/12;
		
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		var alert = UIAlertController(title: "Contact Some Person", message: "How would you like to contact them?", preferredStyle: .actionSheet)
		alert.addAction(UIAlertAction(title: "Phone", style: .default, handler: {action in}))
		alert.addAction(UIAlertAction(title: "Text", style: .default, handler: {action in}))
		alert.addAction(UIAlertAction(title: "Email", style: .default, handler: {action in}))
		alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {action in}))
		self.present(alert, animated: true, completion: nil);

	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 5;
	}
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
		return UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0);
	}
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.width/3);
	}
}
