package hallam5league
import league.*
import grails.converters.*

class FixtureGeneratorController {

    def index() {
	def result = [:]
	result.r = Team.findAll("from league.Team as r where r.league.leagueName = 'the leg' ")

	result.fixtures = [:]

result.r.each { teamA ->
    result.r.each { teamB ->
	if(teamA.id == teamB.id){
	}
	else{	
		def fixtureName
		if(teamA.teamName > teamB.teamName){
			fixtureName = "${teamA.teamName} vs ${teamB.teamName}"
		}
		else{
			fixtureName = "${teamB.teamName} vs ${teamA.teamName}"
		}
		
		if(result.fixtures [fixtureName] == null){
		//result.fixtures [fixtureName] = [:]
		def newFixture = new Fixture(teamA:teamA,teamB:teamB,fixtureDate:new Date(), pitchNo:"1").save()
		result.fixtures [fixtureName] = [fixture:newFixture,name:fixtureName]
		}
		}

	}
}
	//println(result.fixtures)
	//render result as JSON
	//return result


 }
}
