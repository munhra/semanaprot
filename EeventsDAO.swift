//
//  EeventsDAO.swift
//  SemanaPuc
//
//  Created by vntlab on 7/13/16.
//  Copyright © 2016 munhra. All rights reserved.
//

import Foundation

class EventsDAO {
    
    
   
    
    func generateFakeEvents()->[Events]{
        
        let hours = ["09:00","09:30","10:00","11:30"]
        let eventName = ["Aula de YOGA","Aula de Pilates","Aula de Natação","Aula de Culinaria"]
       //var  hourIndex = random() % 4
        
         var eventsList = [Events]()
        
        for i in 0...10{
            
            var  randomIndex = random() % 4
            
              let event = Events()
            //print("Event name \(eventName[randomIndex])")
            //print("Event hours \(hours[randomIndex])")
            
          
            event.eventTitle = eventName[randomIndex]
            event.eventHour = hours[randomIndex]
            
            eventsList.append(event)

        }
        
        return eventsList
    }
    
    
}