package hallam5league
import league.*

class TeamCreatorController {

    def index() { 
	def result = [:]//result mapping. sets result but puts no data in it
      println("Index ${params}");
	result.l = Team.findAll('from league.Team as l where l.teamName like ?',['%'])
	//finds all the teams that are in the database so they can be displayed in the view


return result
    }


    def create() {
      println(params);
	if(request.method=="POST"){//Checks to see if there has been a request of post
	def b = new league.Team(teamName : params.teamName, 
                         teamDescription : params.teamDescription,
                         teamMembers : params.teamMembers, 
			 league : League.get(params.leagueName))
	//create a new league with the parameters that were passed through the form
	if ( b.save() ) {//check to see if the save was successful
          println("Saved OK");//print ok in terminal if it was
        }
        else {//condition if not successful
          b.errors.each { error ->//looping through errors of submit
            println("Error: ${error}");//print all errors in terminal if not.
          }
        }
        redirect action: 'index'//redirect to the index page
       }

    }
}
