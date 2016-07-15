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
        var eventName = ["Dojo","Degustacao","Useless","Teste","Teste2","Teste3","Teste4","Teste5","Teste6","Teste7","Teste8","Teste9","Teste10","Teste11","Teste12","Teste13","Teste14","Teste15","Teste16","Teste17"]
     
      
        var b:Int = 20
        
        
        for _ in 0...19 {
            let randomIndexHours = random() % 4
            let randomIndexPalestra = random() % b
            let event = Events()
            event.eventTitle = eventName[randomIndexPalestra]
            event.eventHour = hours[randomIndexHours]
        
            eventList.append(event)
            eventName.removeAtIndex(randomIndexPalestra)
            b--
         
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