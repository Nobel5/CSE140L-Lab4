import java.util.List;


public class Pear {
	
	private Implicant i;
	private boolean b;
	
	public Pear(Implicant imp, boolean boo) {
		this.i = imp;
		this.b = boo;
	}

	/**
	 * @return the implicant
	 */
	public Implicant getImplicant() {
		return i;
	}

	/**
	 * @param imp the implicant to set
	 */
	public void setImplicant(Implicant imp) {
		this.i = imp;
	}

	/**
	 * @return the Boolean
	 */
	public boolean getBoolean() {
		return b;
	}

	/**
	 * @param boo the Boolean to set
	 */
	public void setBoolean(boolean boo) {
		this.b = boo;
	}

	public boolean equals(Pear p) {
		boolean a = i.getMSB()==p.getImplicant().getMSB();
		boolean b = i.getLSB()==p.getImplicant().getLSB();
		return a&&b;
	}
	
	public boolean pearChecker(List<Pear> list) {
		for (Pear p : list) {
			if (p.equals(this)) {
				return true;
			}
		}
		return false;
	}
}
