package league

class Fixture {
   
   League league
	//The leage name
   Team teamA
	//The home (first) team in a fixture
   Team teamB
	//The away (second) team in a fixture
   Date fixtureDate
	//Date of the Fixture
   String pitchNo
	//Pitch Number from 1-4
    static constraints = {
    }
}
