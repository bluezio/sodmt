package es.uca.sodmt.ws.faults;

public class InvalidQuantity extends Exception {

	private static final long serialVersionUID = 1L;

	public InvalidQuantity(String message) {
		super(message);
	}

}