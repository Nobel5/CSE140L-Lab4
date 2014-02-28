public class Pair {

	private Implicant i;
	private BitVector b;

	public Pair(Implicant imp, BitVector bit) {
		this.i = imp;
		this.b = bit;
	}

	/**
	 * @return the implicant
	 */
	public Implicant getImplicant() {
		return i;
	}

	/**
	 * @param imp
	 *            the implicant to set
	 */
	public void setImplicant(Implicant imp) {
		this.i = imp;
	}

	/**
	 * @return the Boolean
	 */
	public BitVector getBitVector() {
		return b;
	}

	/**
	 * @param boo
	 *            the Boolean to set
	 */
	public void setBitVector(BitVector bit) {
		this.b = bit;
	}

	public boolean equals(Pear p) {
		boolean a = i.getMSB() == p.getImplicant().getMSB();
		boolean b = i.getLSB() == p.getImplicant().getLSB();
		return a && b;
	}
}