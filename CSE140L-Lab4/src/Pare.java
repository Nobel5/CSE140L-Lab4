

public class Pare {
	
	private Long minterm;
	private BitVector bitVector;
	
	public Pare (Long l, BitVector b) {
		this.minterm = l;
		this.bitVector = b;
	}

	/**
	 * @return the minterm
	 */
	public Long getMinterm() {
		return minterm;
	}

	/**
	 * @param minterm the minterm to set
	 */
	public void setMinterm(Long minterm) {
		this.minterm = minterm;
	}

	/**
	 * @return the bitvector
	 */
	public BitVector getBitVector() {
		return bitVector;
	}

	/**
	 * @param bitvector the bitvector to set
	 */
	public void setBitvector(BitVector bitVector) {
		this.bitVector = bitVector;
	}

}
