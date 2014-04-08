package league

class League {
//has many . mapped by
   String leagueName
   Date leagueStartDate
   String noOfTeams
   String lengthOfLeague

   static hasMany = [teams: Team]

   static constraints = {
   }
}
