package league

class League {
//has many . mapped by
   String leagueName
	//input the name of the league
   Date leagueStartDate
	//date the league begins
   String noOfTeams
	//how many teams are in the league
   String lengthOfLeague
	//how many days/weeks/years the league lasts for
   static hasMany = [teams: Team, fixtures: Fixture]
	//map showing that a team has many fixtures
   static mappedBy = [teams:'league',fixtures:'league']
	//demonstrates an association between a teams league and a fixtures league

   static constraints = {
   }
}
