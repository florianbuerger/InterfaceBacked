import UIKit
import InterfaceBacked

final class ViewController: UIViewController, UITableViewDataSource, StoryboardBacked {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var container: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 48

        tableView.registerNib(Cell.cellNib(), forCellReuseIdentifier: Cell.identifier())
        
        let view = SomeView.newFromNib()
        container.addSubview(view)
        container.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor).active = true
        container.topAnchor.constraintEqualToAnchor(view.topAnchor).active = true
        container.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor).active = true
        container.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor).active = true
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCellWithIdentifier(Cell.identifier()) as? Cell else { fatalError() }
        cell.label.text = "(╯°□°）╯︵ ┻━┻"
        return cell
        
    }
}

