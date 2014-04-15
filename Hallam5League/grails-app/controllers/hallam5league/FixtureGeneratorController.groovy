package hallam5league
import league.*
import grails.converters.*

class FixtureGeneratorController {

    def index() {

	}
//index page requires nothing special
    def fixtureGenerator() {
	def result = [:]
	//result mapping. sets result but puts no data in it
	def fixture = [:]
	//mapping of different parameters
	def f
	println(params.leagueName);
	if(request.method=="POST"){
	  f = (params.leagueName)
	        //if the a variable has been submitted via a form with post method on the index page. This will capture this variable
		// and set the "f" to the variable. In this case it will capture the league's ID number and set "f" to it
		
	  
	}
	
	result.league=League.get("${f}")
	//This will set the league property of the result variable to the ID of the league posted by the previous form.
	result.r = Team.findAll("from league.Team as r where r.league.id = '${f}' ")
	//This will get all the teams which are playing in the selected league (by the ID that has been POSTed)
	result.fixtures = [:]
	//?
	def count = 1
	//Set the count variable at 1 on the first run of the page
	def fixture_Date = System.currentTimeMillis()
	//This will set a fixture_Date variable equal to the systems current time. We are going to use this to set the match times up
	
	result.r.each { teamA ->
    		result.r.each { teamB ->
			if(teamA.id == teamB.id){
			//This will make sure No games can be played where the 2 teams are the same. Which would be impossible in the real world.
			//So if the 2 teams are the same. Then the system will do nothing
			}
			else{	
				def fixtureName
				//Creates a variable called fixtureName
				if(teamA.teamName > teamB.teamName){
					//This will order them by the alphabet. So all team games will be togther 
					fixtureName = "${teamA.teamName} vs ${teamB.teamName}"
				}
				else{
					fixtureName = "${teamB.teamName} vs ${teamA.teamName}"
				}

		

				if(result.fixtures [fixtureName] == null){
					//result.fixtures [fixtureName] = [:]
					def newFixture = new Fixture(teamA:teamA,
					teamB:teamB,
					fixtureDate: new Date(fixture_Date), 
					pitchNo:"${count++}", 
					league:result.league ).save()
					result.fixtures [fixtureName] = [fixture:newFixture,name:fixtureName]
					if (count > 4){
						count = 1
						fixture_Date += (7*24*60*60*1000) 
					}
				}
			}

		}
	}
	redirect (uri:"/")
	return result
	


 }
}
