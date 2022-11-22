package study2.mapping;

public class Test4Calc {
	/*
	 * public void getCalcResult(int su1, int su2, String opt) { if(opt.equals("+"))
	 * {
	 * 
	 * } }
	 */
	public int getCalcResult(int su1, int su2, String opt) {
		int result = 0;
		if(opt.equals("+")) {
			result = su1+su2;
		}
		else if(opt.equals("-")) {
			result = su1-su2;
		}
		else if(opt.equals("*")) {
			result = su1*su2;
		}
		else if(opt.equals("/")) {
			result = su1/su2;
		}
		else if(opt.equals("%")) {
			result = su1%su2;
		}
		
		return result;
	}
}
