import Foundation

func swap ( strings:inout[Substring],firstIndex:Int,secondIndex:Int){
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

func readFile(filename:String) -> Array<Substring> {

	//Read in the file
	let contents = try! String(contentsOfFile: filename)

	//Split the file on endline (\n) 
	let lines = contents.split(separator:"\n")

        print("Num words: \(lines.count)")

	return lines
}

//get the list of strings from user input
//var strings: Array<String> = readLines()
var filename = "test.txt"
//Arrary of Substrings
var strings = readFile(filename:filename)
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
//            swap( strings:&strings, firstIndex:firstIndex, secondIndex:secondIndex)
//Change to swap in place not in method
            let firstIndexValue = strings[firstIndex]
            let secondIndexValue = strings[secondIndex] 
            strings[firstIndex] = secondIndexValue
            strings[secondIndex] = firstIndexValue  
            count = count + 1
        }
        index = index + 1
    } while (index + 1 < size)

            pass = pass + 1
}while(count != 0)

print("Sorted: \(strings)")
