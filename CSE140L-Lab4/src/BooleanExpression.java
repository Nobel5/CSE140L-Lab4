import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * @author Raymond
 *
 */
public class BooleanExpression {
	private List<Implicant> implicantList;
	private List<Long> mintermsNeededToCover;
	private int myNumVars;
	public static final long maxVal = -1;
	public static final String alphabet = "abcdefghijklmnopqrstuvwxyz";
	public List<Pair> pairs = new ArrayList<Pair>();
	public List<Pair> essentials = new ArrayList<Pair>();
	
	private void initBooleanExpression(int numVars)
	{
		implicantList = new ArrayList<Implicant>();
		myNumVars = numVars; 
		mintermsNeededToCover = new ArrayList<Long>();
	}
	
	public BooleanExpression(ArrayList<Long> minterms, int numVars)
	{
		initBooleanExpression(numVars);
		for (Long minterm : minterms)
		{
			implicantList.add(new Implicant(minterm, numVars));
			mintermsNeededToCover.add(minterm);
		}
	}
	
	public List<Implicant> getImplicantList()
	{
		return implicantList;
	}
	
	public void doTabulationMethod()
	{
		List<Implicant> primeImplicants=new ArrayList<Implicant>();
		List<Pear> panda=new ArrayList<Pear>();
		
		// feed the panda; he is hungry
		for(int i=0;i<implicantList.size();i++){
			panda.add(new Pear(implicantList.get(i),false));
		}
		
		while(true){
			List<Pear> panda2=new ArrayList<Pear>();
			for(int i=0;i<panda.size();i++){
				Pear ibear=panda.get(i);
				Implicant iimp=ibear.getImplicant();
				for(int j=0;j<panda.size();j++){
					Pear jbear=panda.get(j);
					Implicant jimp=jbear.getImplicant();
					long a=iimp.getMSB()^jimp.getMSB();
					long b=iimp.getLSB()^jimp.getLSB();
					if((1==Long.bitCount(a))&&(1==Long.bitCount(b))&&(a==b)){
						long c=iimp.getMSB()|jimp.getMSB();
						long d=iimp.getLSB()|jimp.getLSB();
						Implicant kbear=new Implicant(c,d,myNumVars);
						kbear.setMinterms(jbear.getImplicant().getMinterms());
						kbear.setMinterms(ibear.getImplicant().getMinterms());
						Pear bamboo=new Pear(kbear,false);
						if(!bamboo.pearChecker(panda2)){
							panda2.add(bamboo);
						}
						ibear.setBoolean(true);
						jbear.setBoolean(true);
					}
				}
			}
			for(int i=0;i<panda.size();i++){
				Pear ibear=panda.get(i);
				if(!ibear.getBoolean()){
					primeImplicants.add(ibear.getImplicant());
				}
			}
			if(0==panda2.size()){
				break;
			}
			panda=panda2;
		}
		
		implicantList=primeImplicants;
	}
	
	public void doQuineMcCluskey()
	{
		// create army
		for (Implicant imp : implicantList) {
			BitVector bv = new BitVector(myNumVars);
			for(Long l : imp.getMinterms()) {
				bv.set(l.intValue());
			}
			Pair p = new Pair(imp,bv);
			pairs.add(p);
		}
		
		// fight
		int prevSize = -1;
		int prevSize2=-1;
		while (prevSize!=pairs.size() && 0!=pairs.size()) {
			prevSize = pairs.size();
			while(prevSize2!=pairs.size()&&0!=pairs.size()){
				prevSize2=pairs.size();
				this.findEssentials();
			}
			System.out.println("pairs:"+pairs.size());
			this.rowDomination();
			System.out.println("rowpairs:"+pairs.size());
			this.colDomination();
			System.out.println("colpairs:"+pairs.size());
			System.out.println("essential:"+essentials.size());
		}
		
		implicantList.clear();
		for (Pair p : pairs) {
			if (!p.getBitVector().isZero()){
				implicantList.add(p.getImplicant());
			}
		}
		for(Pair p:essentials){
			implicantList.add(p.getImplicant());
		}
	}
	
	public void doPetricksMethod()
	{
		Map<Long,List<Long>> minMap = new HashMap<Long,List<Long>>();
		for(int i=0; i<implicantList.size(); i++) {
			Implicant imp = implicantList.get(i);
			for (Long min : imp.getMinterms()) {
				if(minMap.containsKey(min)) {
					minMap.get(min).add(new Long(i));
				} else {
					List<Long> li = new ArrayList<Long>();
					li.add(new Long(i));
					minMap.put(min, li);
				}
			}
		}
		
		List<List<BitVector>> productOfSums = new ArrayList<List<BitVector>>();
		for (Map.Entry<Long,List<Long>> entry : minMap.entrySet()) {
			List<BitVector> list = new ArrayList<BitVector>();
			for (int j=0; j<entry.getValue().size(); j++) {
				BitVector b = new BitVector(implicantList.size());
				b.set(entry.getValue().get(j).intValue());
				list.add(b);
			}
			productOfSums.add(list);
		}
		
		int first=0;
		int second=1;
		while (productOfSums.size()>1) {
			// multiplication
			List<BitVector> alpha=productOfSums.get(first);
			List<BitVector> beta=productOfSums.get(second);
			List<BitVector> product=new ArrayList<BitVector>();
			for(int j=0;j<alpha.size();j++){
				BitVector jVector=alpha.get(j);
				for(int k=0;k<beta.size();k++){
					product.add(jVector.union(beta.get(k)));
				}
			}
			// absorption
			for(int j=0;j<product.size();j++){
				BitVector bob=product.get(j);
				for(int k=0;k<product.size();k++){
					BitVector debbie=product.get(k);
					if(j==k){
						continue;
					}
					if(bob.intersection(debbie).equals(bob)){
						product.remove(debbie);
						if(j>k){
							j--;
						}
						k--;
					}
				}
			}
			
			productOfSums.set(first, product);
			productOfSums.remove(second);
			first++;
			second++;
			if(first>=productOfSums.size()) {
				first=0;
				second=1;
			} else if (second>=productOfSums.size()) {
				second=0;
			}
			
			System.out.println(productOfSums.size());
		}
		
		int minCar=implicantList.size();
		int minImp = -1;

		List<BitVector> finalSumOfProducts = productOfSums.get(0);
		for (int i=0;i<finalSumOfProducts.size();i++) {
			BitVector b = finalSumOfProducts.get(i);
			if (b.getCardinality()<=minCar) {
				minCar = b.getCardinality();
				minImp = i;
			}
		}
		BitVector bv = finalSumOfProducts.get(minImp);
		List<Implicant> newList = new ArrayList<Implicant>();

		for (int i=0;i<bv.getSize();i++) {
			if (bv.exists(i)) {
				newList.add(implicantList.get(i));
			}
		}
		
		implicantList=newList;
	}
	
	/*
	 * Parameters: fileName
	 * 
	 * Generates a verilog file with the same name as the fileName. Do not change
	 * the input and output port names, as we will need these for testing. The 
	 * interior of the module, however, can be implemented as you see fit. 
	 */
	public boolean genVerilog(String fileName)
	{
		try {
			PrintWriter outputStream = new PrintWriter(new FileWriter(fileName + ".v"));
			outputStream.println("module " + fileName + "(");
			for (int i = 0; i < myNumVars; i++)
			{
				outputStream.println("input " + alphabet.charAt(i) + ",");
			}
			outputStream.println("output out");
			outputStream.println(");");
			
			//Code will be given after the late deadline
			outputStream.write("\tassign out = ");
			for (int i = 0; i < implicantList.size(); i++)
			{
				outputStream.write(implicantList.get(i).getVerilogExpression());
				if (i < implicantList.size()-1)
					outputStream.write("|");
			}
			outputStream.println(";");
			
			outputStream.println("endmodule");
			outputStream.close();
			return true;
		} catch (Exception e){
			return false;
		}
		
	}
	
	
	/**
	 * check if a minterm is covered by only 1 prime implicant
	 * if it is, return the index of that prime implicant within pairs
	 * @param minterm
	 * @return
	 */
	private int essentialPrime (Long minterm) {
		int numImp = 0;
		int theImp = -1;
		for (int i=0; i<pairs.size(); i++) {
			BitVector b = pairs.get(i).getBitVector();
			if (b.exists(minterm.intValue())) {
				theImp = i;
				numImp++;
			}
		}
		if (1==numImp) {
			return theImp;
		}
		return -1;
		
	}
	
	
	/**
	 * find the essential prime implicants
	 * update the BitVectors of other prime implicants
	 */
	private void findEssentials () {
		for (int i=0;i<mintermsNeededToCover.size();i++) {
			if (i<0) {
				System.out.println(i);
			}
			Long l = mintermsNeededToCover.get(i);
			int location;
			if (-1 != (location = essentialPrime(l))) {
				Pair p;
				essentials.add(p = pairs.remove(location));
				for (int d=0;d<p.getImplicant().getMinterms().size();d++) {
					Long g= p.getImplicant().getMinterms().get(d);
					if (mintermsNeededToCover.indexOf(g)<=i&&i>=0)
						i--;
					mintermsNeededToCover.remove(g);
					
					for (Pair air : pairs) {
						air.getBitVector().unset(g.intValue());
					}
					
				}
			}
		}
	}
	
	
	/**
	 * Row domination
	 * Remove the subset row
	 */
	private void rowDomination () {
		for(int i=0;i<pairs.size();i++){
			BitVector bob=pairs.get(i).getBitVector();
			for(int j=0;j<pairs.size();j++){
				if (pairs.get(i).equals(pairs.get(j))) {
					continue;
				}
				BitVector bi=bob.intersection(pairs.get(j).getBitVector());
				if(pairs.get(j).getBitVector().equals(bi)) {
					pairs.remove(j);
					if (j<=i) {
						i--;
					}
					j--;
				}
			}
		}
	}
	
	
	/**
	 * Column domination
	 * Remove the superset column
	 */
	private void colDomination () {
		
		List<Pare> pare=new ArrayList<Pare>();
		for(int i=0;i<mintermsNeededToCover.size();i++){
			BitVector b = new BitVector(pairs.size());
			for(int j=0; j<pairs.size(); j++){
				if(pairs.get(j).getBitVector().exists(mintermsNeededToCover.get(i).intValue())){
					b.set(j);
				}
			}
			Pare p=new Pare(mintermsNeededToCover.get(i),b);
			pare.add(p);
		}
		for(int i=0;i<pare.size();i++){
			Pare patty=pare.get(i);
				
			for(int j=0;j<pare.size();j++){
				Pare doug=pare.get(j);
				if(doug.equals(patty)){
					continue;
				}
				BitVector a=patty.getBitVector();
				BitVector b=doug.getBitVector();
				if(a.intersection(b).equals(a)){
					for(Pair p: pairs){
						p.getBitVector().unset(doug.getMinterm().intValue());
					}
					mintermsNeededToCover.remove(doug.getMinterm());
					j--;
					if(j<i)
						i--;
					pare.remove(doug);
					
				}
			}
		}
	}
}
