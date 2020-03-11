package dto;

public class Cosmetic {
	private int no;		// �ѹ���
	private int type;		// ȭ��ǰ ����
	private String name;	// ȭ��ǰ �̸�
	private String manufacturer;	// ������
	private int price;		// ����
	private boolean oil;	// ����
	private boolean dry_skin;	// �Ǽ�
	private boolean complex;   // ���ռ�
	private boolean neutral;	// �߼�
	private boolean bright;		// ���� ��
	private boolean middle;		// �߰� ��
	private boolean dark;		// ��ο� ��
	private boolean dry;		// ���� (�Ǻΰ��)
	private boolean sensitive;	// �ΰ�
	private boolean acne;		// ���帧
	private boolean wrinkle;	// �ָ�
	private boolean whitening;	// �̹�
	private boolean black_head; // �����
	private boolean cool;		// ����
	private boolean warm;		// ����
	private boolean matte;		// ��Ʈ
	private boolean glossy;		// �۷ν�
	private boolean toxic;		// ���ؼ��� ����
	private String toxicStr;	// ���ؼ���
	private String ingredient; 	// ����
	private String url;			// url �ּ�
	
	public Cosmetic() {
		this(0, 0, null, null, 0, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, null, null, null);
		 
	}

	public Cosmetic(int no, int type, String name, String manufacturer, int price, boolean oil, boolean dry_skin,
			boolean complex, boolean neutral, boolean bright, boolean middle, boolean dark, boolean dry,
			boolean sensitive, boolean acne, boolean wrinkle, boolean whitening, boolean black_head, boolean cool,
			boolean warm, boolean matte, boolean glossy, boolean toxic, String toxicStr, String ingredient, String url) {
		super();
		this.no = no;
		this.type = type;
		this.name = name;
		this.manufacturer = manufacturer;
		this.price = price;
		this.oil = oil;
		this.dry_skin = dry_skin;
		this.complex = complex;
		this.neutral = neutral;
		this.bright = bright;
		this.middle = middle;
		this.dark = dark;
		this.dry = dry;
		this.sensitive = sensitive;
		this.acne = acne;
		this.wrinkle = wrinkle;
		this.whitening = whitening;
		this.black_head = black_head;
		this.cool = cool;
		this.warm = warm;
		this.matte = matte;
		this.glossy = glossy;
		this.toxic = toxic;
		this.toxicStr = toxicStr;
		this.ingredient = ingredient;
		this.url = url;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public boolean isOil() {
		return oil;
	}

	public void setOil(boolean oil) {
		this.oil = oil;
	}

	public boolean isDry_skin() {
		return dry_skin;
	}

	public void setDry_skin(boolean dry_skin) {
		this.dry_skin = dry_skin;
	}

	public boolean isComplex() {
		return complex;
	}

	public void setComplex(boolean complex) {
		this.complex = complex;
	}

	public boolean isNeutral() {
		return neutral;
	}

	public void setNeutral(boolean neutral) {
		this.neutral = neutral;
	}

	public boolean isBright() {
		return bright;
	}

	public void setBright(boolean bright) {
		this.bright = bright;
	}

	public boolean isMiddle() {
		return middle;
	}

	public void setMiddle(boolean middle) {
		this.middle = middle;
	}

	public boolean isDark() {
		return dark;
	}

	public void setDark(boolean dark) {
		this.dark = dark;
	}

	public boolean isDry() {
		return dry;
	}

	public void setDry(boolean dry) {
		this.dry = dry;
	}

	public boolean isSensitive() {
		return sensitive;
	}

	public void setSensitive(boolean sensitive) {
		this.sensitive = sensitive;
	}

	public boolean isAcne() {
		return acne;
	}

	public void setAcne(boolean acne) {
		this.acne = acne;
	}

	public boolean isWrinkle() {
		return wrinkle;
	}

	public void setWrinkle(boolean wrinkle) {
		this.wrinkle = wrinkle;
	}

	public boolean isWhitening() {
		return whitening;
	}

	public void setWhitening(boolean whitening) {
		this.whitening = whitening;
	}

	public boolean isBlack_head() {
		return black_head;
	}

	public void setBlack_head(boolean black_head) {
		this.black_head = black_head;
	}

	public boolean isCool() {
		return cool;
	}

	public void setCool(boolean cool) {
		this.cool = cool;
	}

	public boolean isWarm() {
		return warm;
	}

	public void setWarm(boolean warm) {
		this.warm = warm;
	}

	public boolean isMatte() {
		return matte;
	}

	public void setMatte(boolean matte) {
		this.matte = matte;
	}

	public boolean isGlossy() {
		return glossy;
	}

	public void setGlossy(boolean glossy) {
		this.glossy = glossy;
	}

	public boolean isToxic() {
		return toxic;
	}

	public void setToxic(boolean toxic) {
		this.toxic = toxic;
	}
	
	public String getToxicStr() {
		return toxicStr;
	}

	public void setToxicStr(String toxicStr) {
		this.toxicStr = toxicStr;
	}

	public String getIngredient() {
		return ingredient;
	}

	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	@Override
	public String toString() {
		return "Cosmetic [no=" + no + ", type=" + type + ", name=" + name + ", manufacturer=" + manufacturer
				+ ", price=" + price + ", oil=" + oil + ", dry_skin=" + dry_skin + ", complex=" + complex + ", neutral="
				+ neutral + ", bright=" + bright + ", middle=" + middle + ", dark=" + dark + ", dry=" + dry
				+ ", sensitive=" + sensitive + ", acne=" + acne + ", wrinkle=" + wrinkle + ", whitening=" + whitening
				+ ", black_head=" + black_head + ", cool=" + cool + ", warm=" + warm + ", matte=" + matte + ", glossy="
				+ glossy + ", toxic=" + toxic + ",toxicStr=" + toxicStr + ",ingredient=" + ingredient + ",url=" + url + "]";
	}
	

	
}
