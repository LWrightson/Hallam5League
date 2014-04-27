package league

class Team {
   
   String teamName
	//name of the team
   String teamDescription
	//team descriptions
   String teamMembers
   	//number of team members
   League league
	//linked at the top of the domain - links the league element in league to the team table

   //static hasMany = [fixtures: Fixture]
   //static mappedBy = [fixtures: "teamA"]

    static constraints = {
    }
}
