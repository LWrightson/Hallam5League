package league

class Team {
   
   String teamName
   String teamDescription
   String teamMembers
   //String leagueName
   League league

   //static hasMany = [fixtures: Fixture]
   //static mappedBy = [fixtures: "teamA"]

    static constraints = {
    }
}
