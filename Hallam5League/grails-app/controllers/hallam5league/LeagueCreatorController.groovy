package hallam5league
import league.*

class LeagueCreatorController {

    def index() { 
	def result = [:]//result mapping. sets result but puts no data in it
      println("Index ${params}");
	result.l = League.findAll('from league.League as l where l.leagueName like ?',['%'])
	//finds all the leagues that are in the database so they can be displayed in the view

return result
    }

    def create() {
      println(params);

	def b = new league.League(leagueName : params.leagueName, 
                             leagueStartDate : params.date('startDate','yyyy-MM-dd'),
                             noOfTeams : params.noOfTeams,
		             lengthOfLeague : params.lengthOfLeague)
	//create a new league with the parameters that were passed through the form
	if ( b.save() ) {//check to see if the save was successful
          println("Saved OK");//print ok in terminal if it was
        }
        else {//condition if not successful
          b.errors.each { error ->//looping through errors of submit
            println("Error: ${error}");//print all errors in terminal if not.
          }
        }

    }
}
