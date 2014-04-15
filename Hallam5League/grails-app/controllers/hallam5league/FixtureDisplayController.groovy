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

      	println(params);
	def result = [:]
	if(request.method=="POST"){
          def selected_league = League.get(params.leagueName)
	  result.f = selected_league.fixtures
		println(params.selected_league)
  	  // b = league.Team(league : League.get(params.leagueName))
	
	}
	return result    
	}


}
