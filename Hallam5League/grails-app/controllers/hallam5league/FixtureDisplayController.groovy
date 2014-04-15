package hallam5league
import league.*
class FixtureDisplayController {

    def index() {
		
	//def result = [:]
      	//println("Index ${params}");
	//result.f = Fixture.findAll("from league.Fixture as f where f.league.leagueName = '${b}'")

	//return result
    }


    def fixtureDisplay() {

      	println(params); //Print all parameters into terminal
	def result = [:] //result mapping. sets result but puts no data in it
	if(request.method=="POST"){ //Checks to see if there has been a request of post
          def selected_league = League.get(params.leagueName)//Get the leagueName parameter from the league domain
	  result.f = selected_league.fixtures//results the fixtures from the league defined
		println(params.selected_league) //Print the parameter of the selected league into the terminal
  	  // b = league.Team(league : League.get(params.leagueName))
	
	}
	return result    
	}


}
