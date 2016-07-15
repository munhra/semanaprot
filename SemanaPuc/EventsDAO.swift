//
//  EventsDAO.swift
//  SemanaPuc
//
//  Created by vntlab on 7/13/16.
//  Copyright © 2016 munhra. All rights reserved.
//

import Foundation


class EventsDAO
{

    
    
    var eventDictionary = [String:[Events]?]()
    var eventList = Array<Events>()
    var eventListSorted = Array<Events>()
    
   
    
    func inOrder() -> [String]{
        return Array(eventDictionary.keys)
        
    }
    
    func generateFakeEvents() -> [String:[Events]?] {
        
        let hours = ["09:00","11:00","12:00","13:00"]
        var eventName = ["SAP","CSS","IOT","CS","Design Thinking","KSPG"]
        var eventDescription = ["Palestra de Sap","Palestra de CSS","Palestra de IOT",
            "Campeonato de CS","Palestra de design thinking","Palestra de KSPG"]
        
        for _ in 0...20 {
            let n = Int(arc4random_uniform(5))
            let event = Events()
            event.eventTitle = eventName[n]
            event.eventHour = hours[Int(arc4random_uniform(3))]
            event.eventDescription = eventDescription[n]
            eventList.append(event)
           // eventName.removeAtIndex(index)
           // index--
            
        }
        
        eventListSorted = eventList.sort( {$0.eventHour < $1.eventHour} )
        
       /* for a in eventListSorted {
            print("\(a.eventHour) and \(a.eventTitle)")
        }
       */
        for eventos in eventListSorted {
            if let _ = eventDictionary[eventos.eventHour!] {
                
                
                eventDictionary[eventos.eventHour!]!!.append(eventos)
                
               
               
            }else {
                
                eventDictionary[eventos.eventHour!] = [Events]()
                eventDictionary[eventos.eventHour!]!!.append(eventos)
            }
            
        }
       
        return eventDictionary
    }
    
  
    
   
  /*   func printar() -> () {
        
        for elementos in eventList{
            print("\(elementos.eventTitle!) e  horas: \(elementos.eventHour!)")
            
    }
    
    } */

}