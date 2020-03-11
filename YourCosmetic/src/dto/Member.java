package dto;

import java.sql.Date;

public class Member {
	private int Uno;
	private String id;
	private String password;
    private String name;
    private boolean oil;	// Áö¼º
	private boolean dry_skin;	// °Ç¼º
	private boolean complex;   // º¹ÇÕ¼º
	private boolean neutral;	// Áß¼º
	private boolean bright;		// ¹àÀº Åæ
	private boolean middle;		// Áß°£ Åæ
	private boolean dark;		// ¾îµÎ¿î Åæ
	private boolean dry;		// °ÇÁ¶ (ÇÇºÎ°í¹Î)
	private boolean sensitive;	// ¹Î°¨
	private boolean acne;		// ¿©µå¸§
	private boolean wrinkle;	// ÁÖ¸§
	private boolean whitening;	// ¹Ì¹é
	private boolean black_head; // ºí·¢Çìµå
	private boolean cool;		// ÄðÅæ
	private boolean warm;		// ¿úÅæ
	private boolean matte;		// ¸ÅÆ®
	private boolean glossy;		// ±Û·Î½Ã
	private boolean toxic;		// À¯ÇØ¼ººÐ
	
	public Member() {
		this(0, null, null, null, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false);
	}

	public Member(int uno, String id, String password, String name, boolean oil, boolean dry_skin, boolean complex,
			boolean neutral, boolean bright, boolean middle, boolean dark, boolean dry, boolean sensitive, boolean acne,
			boolean wrinkle, boolean whitening, boolean black_head, boolean cool, boolean warm, boolean matte,
			boolean glossy, boolean toxic) {
		this.Uno = uno;
		this.id = id;
		this.password = password;
		this.name = name;
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
	}

	public int getUno() {
		return Uno;
	}

	public void setUno(int uno) {
		Uno = uno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	@Override
	public String toString() {
		return "Member [Uno=" + Uno + ", id=" + id + ", password=" + password + ", name=" + name + ", oil=" + oil
				+ ", dry_skin=" + dry_skin + ", complex=" + complex + ", neutral=" + neutral + ", bright=" + bright
				+ ", middle=" + middle + ", dark=" + dark + ", dry=" + dry + ", sensitive=" + sensitive + ", acne="
				+ acne + ", wrinkle=" + wrinkle + ", whitening=" + whitening + ", black_head=" + black_head + ", cool="
				+ cool + ", warm=" + warm + ", matte=" + matte + ", glossy=" + glossy + ", toxic=" + toxic + "]";
	}
	 

}
