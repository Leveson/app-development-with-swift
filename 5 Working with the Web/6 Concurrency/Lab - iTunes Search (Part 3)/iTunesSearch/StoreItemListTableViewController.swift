
import UIKit

class StoreItemListTableViewController: UITableViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var filterSegmentedControl: UISegmentedControl!
    
    // add item controller property
    let itemController = StoreItemController()
    
    // update item array to [StoreItem]
    var items = [StoreItem]()
    
    let queryOptions = ["movie", "music", "software", "ebook"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func fetchMatchingItems() {
        
        self.items = []
        self.tableView.reloadData()
        
        let searchTerm = searchBar.text ?? ""
        let mediaType = queryOptions[filterSegmentedControl.selectedSegmentIndex]
        
        if !searchTerm.isEmpty {
            
            // set up query dictionary
            let query = [
                "term": searchTerm,
                "media": mediaType,
                "limit": "10"
            ]
            
            // use the item controller to fetch items
            itemController.fetchItems(matching: query, completion: {(items) in
                
                DispatchQueue.main.async {
                    // if successful, use the main queue to set self.items and reload the table view
                    // otherwise, print an error to the console
                    if let items = items {
                        self.items = items
                        self.tableView.reloadData()
                    } else {
                        print("Data did not load.")
                    }
                }
            })
            
        }
    }
    
    func configure(cell: UITableViewCell, forItemAt indexPath: IndexPath) {
        
        let item = items[indexPath.row]
        
        // set label to the item's name
        cell.textLabel?.text = item.name
        // set detail label to the item's subtitle
        cell.detailTextLabel?.text = item.artist
        // reset the image view to the gray image
        cell.imageView?.image = #imageLiteral(resourceName: "gray")
        
        // initialize a network task to fetch the item's artwork
        let task = URLSession.shared.dataTask(with: item.artworkURL) {(data, response, error) in
            guard let imageData = data else {
                return 
            }
            // if successful, use the main queue capture the cell, to initialize a UIImage, and set the cell's image view's image to the
            DispatchQueue.main.async {
                let image = UIImage(data: imageData)
                cell.imageView?.image = image
            }
        }
        // resume the task
        task.resume()
    }
    
    @IBAction func filterOptionUpdated(_ sender: UISegmentedControl) {
        
        fetchMatchingItems()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        configure(cell: cell, forItemAt: indexPath)

        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension StoreItemListTableViewController: UISearchBarDelegate {

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        fetchMatchingItems()
        searchBar.resignFirstResponder()
    }
}
