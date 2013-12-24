public class BlockEmulator {
	public static void main(String[] args) {
		RubyArray arr = new RubyArray(new int[]{1, 2, 3});
		
		arr.each(new Block() {
			public void execute(int i) {
				System.out.println(i);
			}
		});
	}
}



class RubyArray {
	private int[] arr;
	
	public RubyArray(int[] arr) {
		this.arr = arr;
	}
	
	public void each(Block block) {
		for (int i = 0; i < arr.length; i++) {
			block.execute(arr[i]);
		}
	}
}

interface Block {
	public void execute(int i);
}