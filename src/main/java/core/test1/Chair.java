package core.test1;

public class Chair {
	private Leg leg;

	public Chair() {
		
	}
	
	public Chair(Leg leg) {
		this.leg = leg;
	}

	@Override
	public String toString() {
		return "Chair [leg=" + leg + "]";
	}
	
}
