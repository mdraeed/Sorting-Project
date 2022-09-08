import Foundation

func swap ( strings:inout[String],firstIndex:Int,secondIndex:Int){
    let firstIndexValue = strings[firstIndex]
    let secondIndexValue = strings[secondIndex]

    strings[firstIndex] = secondIndexValue
    strings[secondIndex] = firstIndexValue
} 

func readLines() -> Array<String> {                                                                                                                             

     var lines: Array<String> = Array()                                                                                                                          
     var line:String?                                                                                                                                           

     repeat { 
        line = readLine()                                                                                                                                 
        if line != "" {     
            // print("Adding \(line!)")                                                                                                                              
                   lines.append(line!)                                                                                                                            
        }                                                                                                                                                  

      }while line != ""
      print("Sorting \(lines)")                                                                                                                         
       return lines                                                                                                                                                
}        

//get the list of strings
var strings: Array<String> = readLines()
var totalCount = 0
var count = 0
var size = strings.count
var pass = 1


repeat {
    var index = 0
    count = 0
   
    repeat {
        let firstIndex:Int = index 
        let secondIndex:Int = index + 1
        if(strings[secondIndex].lowercased() < strings[firstIndex].lowercased()){
            swap( strings:&strings, firstIndex:firstIndex, secondIndex:secondIndex)
           count = count + 1
        }
        index = index + 1
    } while (index + 1 < size)

            pass = pass + 1
}while(count != 0)

print("Sorted: \(strings)")