package dto;

public class Cosmetic {
	private int no;		// 넘버링
	private int type;		// 화장품 종류
	private String name;	// 화장품 이름
	private String manufacturer;	// 제조사
	private int price;		// 가격
	private boolean oil;	// 지성
	private boolean dry_skin;	// 건성
	private boolean complex;   // 복합성
	private boolean neutral;	// 중성
	private boolean bright;		// 밝은 톤
	private boolean middle;		// 중간 톤
	private boolean dark;		// 어두운 톤
	private boolean dry;		// 건조 (피부고민)
	private boolean sensitive;	// 민감
	private boolean acne;		// 여드름
	private boolean wrinkle;	// 주름
	private boolean whitening;	// 미백
	private boolean black_head; // 블랙헤드
	private boolean cool;		// 쿨톤
	private boolean warm;		// 웜톤
	private boolean matte;		// 매트
	private boolean glossy;		// 글로시
	private boolean toxic;		// 유해성분 필터
	private String toxicStr;	// 유해성분
	private String ingredient; 	// 성분
	private String url;			// url 주소
	
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
