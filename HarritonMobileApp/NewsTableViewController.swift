//
//  NewsTableViewController.swift
//  SwiftXMLParsingDemo
//
//  Created by David DeBellis (student HH) on 5/26/17.
//  Copyright © 2017 creativeinfoway. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController, XMLParserDelegate {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    class Item {
        var title = "";
        var desc = "";
        var link = "";
        var date = "";
    }
    
    var items = [Item]()
    var item = Item()
    
    var foundCharacters = "";
    var parser = XMLParser()

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchArticle()
        customizeNavBar()
        sideMenus()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

// MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "NewsTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? NewsTableViewCell  else {
            fatalError("The dequeued cell is not an instance of NewsTableViewCell.")
        }
        
        // Fetches the appropriate item for the data source layout.
        let item = items[indexPath.row]
        
        cell.title.text = item.title
        cell.desc.text = item.desc
        cell.link.text = item.link
        cell.date.text = item.date
        
        return cell
    }
    
// MARK: - XML Paser
    
    func fetchArticle() {
        let xmlData:String="https://www.lmsd.org/rss.cfm?news=40"
        let urlToSend: URL = URL(string: xmlData)!
        parser = XMLParser(contentsOf: urlToSend)!
        
        parser.delegate = self
        parser.parse()
    }
    
    
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
        
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        self.foundCharacters += string;
    }
    
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "title" {
            self.item.title = self.foundCharacters;
        }
        
        if elementName == "description" {
            self.item.desc = self.foundCharacters;
        }
        
        if elementName == "link" {
            self.item.link = self.foundCharacters;
        }
        
        if elementName == "pubDate" {
            self.item.date = self.foundCharacters;
        }
        
        if elementName == "item" {
            let tempItem = Item();
            tempItem.title = self.item.title;
            tempItem.desc = self.item.desc;
            tempItem.link = self.item.link;
            tempItem.date = self.item.date;
            self.items.append(tempItem);
           // self.item.enc.removeAll();
        }
        self.foundCharacters = ""
    }
    
//    func parserDidEndDocument(_ parser: XMLParser) {
//        for item in self.items {
//            print("\(item.title)\n\(item.desc)");
//            print("\(item.link)\n\(item.date)");
//            print("\n")
//        }
//    }
    
// MARK: - Custom NavBar
    
    func customizeNavBar() {
        navigationController?.navigationBar.tintColor = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 200/255, green: 0/255, blue: 0/255, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }
    
// MARK: - SideMenu NavBar
    
    func sideMenus() {
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
    }
}

//Mark: - Image Puller

//extension UIImageView {
//
//    func downloadImage(from url: String){
//
//        let urlRequest = URLRequest(url: URL(string: url)!)
//
//        let task = URLSession.shared.dataTask(with: urlRequest) { (data,response,error) in
//
//
//            DispatchQueue.main.async {
//                self.image = UIImage(data: data!)
//            }
//        }
//        task.resume()
//    }
//}
