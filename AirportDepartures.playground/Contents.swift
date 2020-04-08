import UIKit


//: ## 1. Create custom types to represent an Airport Departures display
//: ![Airport Departures](matthew-smith-5934-unsplash.jpg)
//: Look at data from [Departures at JFK Airport in NYC](https://www.airport-jfk.com/departures.php) for reference.
//:
//: a. Use an `enum` type for the FlightStatus (En Route, Scheduled, Canceled, Delayed, etc.)
//:
//: b. Use a struct to represent an `Airport` (Destination or Arrival)
//:
//: c. Use a struct to represent a `Flight`.
//:
//: d. Use a `Date?` for the departure time since it may be canceled.
//:
//: e. Use a `String?` for the Terminal, since it may not be set yet (i.e.: waiting to arrive on time)
//:
//: f. Use a class to represent a `DepartureBoard` with a list of departure flights, and the current airport
print("1. Create custom types to represent an Airport Departures display")
print("")
enum FlightStatus{
    case En_Route
    case Scheduled
    case Canceled
    case Delayed
}

var flightstatus = FlightStatus.Scheduled
//let schedule: FlightStatus = .Scheduled

struct Airport{
    let airportName: String
    let date: Date
    let destination: String
    let arrival: String
}
let airportInfo = Airport(airportName: "JFK", date: Date(), destination: "Reagan National", arrival: "10:45 AM")

class departureBoard{
    var departureFlights: String
    var currentAirport: String
    var alertMessage: String
    
    init(departureFlights: String, currentAirport: String, alertMessage: String){
        self.departureFlights = departureFlights
        self.currentAirport = currentAirport
        self.alertMessage = alertMessage
    }
}

print(airportInfo)



//: ## 2. Create 3 flights and add them to a departure board
//: a. For the departure time, use `Date()` for the current time
//:
//: b. Use the Array `append()` method to add `Flight`'s
//:
//: c. Make one of the flights `.canceled` with a `nil` departure time
//:
//: d. Make one of the flights have a `nil` terminal because it has not been decided yet.
//:
//: e. Stretch: Look at the API for [`DateComponents`](https://developer.apple.com/documentation/foundation/datecomponents?language=objc) for creating a specific time
class addFlights{
    var terminal: String
    var newFlight: [departureBoard]
    
    init(terminal: String){
    self.terminal = terminal
    self.newFlight = []
}
}

var new = addFlights(terminal: "Dulles")
new.newFlight.append(board)


print("")
print("2. Create 3 flights and add them to a departure board")
print("")
let board = departureBoard(departureFlights: "Flight 101, Flight 202, FLight 303", currentAirport: "JFK", alertMessage: "")
print("Current flights are \(board.departureFlights) from \(board.currentAirport) updated \(Date())")


//: ## 3. Create a free-standing function that can print the flight information from the `DepartureBoard`
//: a. Use the function signature: `printDepartures(departureBoard:)`
//:
//: b. Use a `for in` loop to iterate over each departure
//:
//: c. Make your `FlightStatus` enum conform to `String` so you can print the `rawValue` String values from the `enum`. See the [enum documentation](https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html).
//:
//: d. Print out the current DepartureBoard you created using the function
print("")
print("3. Create a free-standing function that can print the flight information from the DepartureBoard")
print("")

func printDepartures(){
    print(board.departureFlights)
}
printDepartures()
print(flightstatus)
print("")




//: ## 4. Make a second function to print print an empty string if the `departureTime` is nil
//: a. Createa new `printDepartures2(departureBoard:)` or modify the previous function
//:
//: b. Use optional binding to unwrap any optional values, use string interpolation to turn a non-optional date into a String
//:
//: c. Call the new or udpated function. It should not print `Optional(2019-05-30 17:09:20 +0000)` for departureTime or for the Terminal.
//:
//: d. Stretch: Format the time string so it displays only the time using a [`DateFormatter`](https://developer.apple.com/documentation/foundation/dateformatter) look at the `dateStyle` (none), `timeStyle` (short) and the `string(from:)` method
//:
//: e. Your output should look like:
//:
//:     Destination: Los Angeles Airline: Delta Air Lines Flight: KL 6966 Departure Time:  Terminal: 4 Status: Canceled
//:     Destination: Rochester Airline: Jet Blue Airways Flight: B6 586 Departure Time: 1:26 PM Terminal:  Status: Scheduled
//:     Destination: Boston Airline: KLM Flight: KL 6966 Departure Time: 1:26 PM Terminal: 4 Status: Scheduled
print("4. Make a second function to print an empty string if the departureTime is nil")
struct Airport2{
    let Destination: String
    let Airline: String
    let Flight: String
    let Departure_Time: String
    let Terminal: String
    let Status: String
    
    func emptyString(){
        var departureTime: Int? = nil

        departureTime = 505
        if let departureTime = departureTime {
            print("Your departure time is: \(departureTime)")
        } else {
            print("")
        }
}
}


let printDepartures2 = Airport2(Destination: "Los Angeles", Airline: "Delta", Flight: "KL 6966", Departure_Time: "9:00 AM", Terminal: "4", Status: "Canceled")

let newDepartureBoard = printDepartures2
print("")
print(newDepartureBoard)
//: ## 5. Add an instance method to your `DepatureBoard` class (above) that can send an alert message to all passengers about their upcoming flight. Loop through the flights and use a `switch` on the flight status variable.
//: a. If the flight is canceled print out: "We're sorry your flight to \(city) was canceled, here is a $500 voucher"
//:
//: b. If the flight is scheduled print out: "Your flight to \(city) is scheduled to depart at \(time) from terminal: \(terminal)"
//:
//: c. If their flight is boarding print out: "Your flight is boarding, please head to terminal: \(terminal) immediately. The doors are closing soon."
//:
//: d. If the `departureTime` or `terminal` are optional, use "TBD" instead of a blank String
//:
//: e. If you have any other cases to handle please print out appropriate messages
//:
//: d. Call the `alertPassengers()` function on your `DepartureBoard` object below
//:
//: f. Stretch: Display a custom message if the `terminal` is `nil`, tell the traveler to see the nearest information desk for more details.
print("")
print("5. Add an instance method to your DepatureBoard class (above) that can send an alert message to all passengers about their upcoming flight. Loop through the flights and use a switch on the flight status variable.")

let newInstance = departureBoard(departureFlights: "606, 707", currentAirport: "Dulles", alertMessage: "")
for alert in 1...5 {
    print(alert)
}
let alert = newInstance.alertMessage


let flightStat = "String"
switch flightStat {
case "Canceled":
    print("We're sorry your flight to (city) was canceled, here is a $500 voucher.")
case "Scheduled", "watercress":
    print("Your flight to (city) is scheduled to depart at (time) from terminal: (terminal)")
case "Boarding", "Your flight is boarding, please head to terminal: (terminal) immediately. The doors are closing soon.":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("TBD"):
    print("Departure Time or Terminal \(x)?")
default:
    print("See the nearest information desk for more details...")
}

print(newInstance)
print("")
//: ## 6. Create a free-standing function to calculate your total airfair for checked bags and destination
//: Use the method signature, and return the airfare as a `Double`
//:
//:     func calculateAirfare(checkedBags: Int, distance: Int, travelers: Int) -> Double {
//:     }
//:
//: a. Each bag costs $25
//:
//: b. Each mile costs $0.10
//:
//: c. Multiply the ticket cost by the number of travelers
//:
//: d. Call the function with a variety of inputs (2 bags, 2000 miles, 3 travelers = $750)
//:
//: e. Make sure to cast the numbers to the appropriate types so you calculate the correct airfare
//:
//: f. Stretch: Use a [`NumberFormatter`](https://developer.apple.com/documentation/foundation/numberformatter) with the `currencyStyle` to format the amount in US dollars.
func calculateAirfare(checkedBags: Double, distance: Double, travelers: Double) -> Double{
    let checkedBags = 25.0
    let distance = 0.1
    let travelers = 1.0
    let totalAirfare = (checkedBags + distance) * travelers
    return (totalAirfare)
}
calculateAirfare(checkedBags: 2.0, distance: 2.5, travelers: 2.0)

