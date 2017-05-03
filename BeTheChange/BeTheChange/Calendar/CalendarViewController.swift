//
//  CalendarViewController.swift
//  BeTheChange
//
//  Created by Jeet Patel on 4/14/17.
//  Copyright © 2017 BeTheChange. All rights reserved.
//

import Foundation
import UIKit
import JTAppleCalendar

class CalendarViewController:UIViewController,UITableViewDelegate,UITableViewDataSource {

	@IBOutlet var calendar: UITableView!
	
	override func viewDidLoad() {
	}

	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return UIScreen.main.bounds.height/5
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		var cell = tableView.dequeueReusableCell(withIdentifier: "event")!;
		return cell;
	}
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 5;
	}
	

}
