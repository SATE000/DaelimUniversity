public class Solid { //입체 도형들의 부모 클래스
    private double fFoot_Width; //밑면의 넓이
    private double fHeight; //높이 길이
    private double fRadius; //반지름
    private double fBase_Volume; //각개체에 따른 개체별 상수설정(구 4/3, 뿔 1/3, 기둥 1)

    public double getfFoot_Width() { return fFoot_Width; }
    public void setfFoot_Width(double fFoot_Width) { this.fFoot_Width = fFoot_Width; }

    public double getfHeight() { return fHeight; }
    public void setfHeight(double fHeight) { this.fHeight = fHeight; }

    public double getfRadius() { return fRadius; }
    public void setfRadius(double fRadius) { this.fRadius = fRadius; }

    public double getfBase_Volume() { return fBase_Volume; }
    public void setfBase_Volume(double fBase_Volume) { this.fBase_Volume = fBase_Volume; }
}