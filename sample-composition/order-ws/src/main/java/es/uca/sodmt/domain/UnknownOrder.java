package es.uca.sodmt.domain;

public class UnknownOrder extends Exception {

	private static final long serialVersionUID = 1L;

	public UnknownOrder(String orderId) {
		super("Unknown order ID: " + orderId);
	}

}
