//
//  Function.swift
//  KataForGithub
//
//  Created by Tyson Laroyce Walker II on 4/4/23.
//

import Foundation

var ansrForView = ""
var ansrForView2 = ""
func longestRepetition(_ s: String) -> String{
    var charactersFromS:[Character] = []
    var currentLetter:String = ""
    var howManyOfThatLetter = 0
    var highScore = 0
    var highestLetter:String = ""
    if ( s.count == 0){
       // return ["" : 0]
    }
   s.forEach({idekwtci in
        charactersFromS.append(idekwtci)
    })
    charactersFromS.append(" ")
       
    
    
    charactersFromS.forEach({ thing in
        if( currentLetter != String(thing)){
            if(highScore < howManyOfThatLetter){
                highScore = howManyOfThatLetter
                highestLetter = currentLetter
            }
            howManyOfThatLetter = 0
        }
       // charactersFromS.append(thing)
        currentLetter = String(thing)
        howManyOfThatLetter += 1
    })
  currentLetter = ""
    
    if( currentLetter != highestLetter){
      //  print("no")
     //   print("\(highScore) lower or equal to \(howManyOfThatLetter)?")
        if(highScore < howManyOfThatLetter){
        //    print("yes")
            
            highScore = howManyOfThatLetter
          //  highestLetter = currentLetter
            print("NEW HIGHSCORE !!! \(highScore) \(highestLetter)")
            //print(highScore)
        }
        
    }
    var ansr = ""
    ansrForView = String(highestLetter)
    ansrForView2 = String(highScore)
    ansr.append(ansrForView)
    print("\(ansr)")
     
  return ansr
}
