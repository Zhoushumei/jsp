package entity;

//商品类；
public class Items {
    private int id;//商品编号
    private String name;//商品名称
    private String city;//产地
    private int price;//价格
    private int number;//库存
    private String pictuer;//商品图片

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getPictuer() {
        return pictuer;
    }

    public void setPictuer(String pictuer) {
        this.pictuer = pictuer;
    }
}
