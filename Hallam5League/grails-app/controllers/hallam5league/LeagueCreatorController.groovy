package hallam5league
import league.*

class LeagueCreatorController {

    def index() { 
	def result = [:]
      println("Index ${params}");
	result.l = League.findAll('from league.League as l where l.leagueName like ?',['%'])


return result
    }

    def create() {
      println(params);

	def b = new league.League(leagueName : params.leagueName, 
                             leagueStartDate : params.date('startDate','yyyy-MM-dd'),
                             noOfTeams : params.noOfTeams,
		             lengthOfLeague : params.lengthOfLeague)
	if ( b.save() ) {
          println("Saved OK");
        }
        else {
          b.errors.each { error ->
            println("Error: ${error}");
          }
        }

    }
}
