//
//  ShareBase64Module.swift
//  gid
//
//  Created by Илья  on 20.10.2022.
//

import Foundation
import UIKit

@objc(ShareBase64Module)
class ShareBase64Module: NSObject {
  
    @objc(sharePdf:withNameFile:)
    func sharePdf(_ base64String: NSString,_ nameFile: NSString) {
      guard
           var documentsURL = (FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)).last,
           let convertedData = Data(base64Encoded: base64String as String)
           else {
           print("error")
           return
       }

       documentsURL.appendPathComponent(nameFile as String)

       do {
           try convertedData.write(to: documentsURL)
       } catch {
           print("error")
       }
      
       print(documentsURL)
      
      self.share(link: documentsURL)
  }
  
  private func share(link: URL) {
      let objectsToShare = [link]
      let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
      let rootViewController = UIApplication.shared.windows.first!.rootViewController!
      
      DispatchQueue.main.async {
          rootViewController.present(activityVC, animated: true, completion: nil)
      }
    
  }
}

