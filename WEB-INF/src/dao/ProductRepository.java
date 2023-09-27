package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository{
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    public ProductRepository(){
        Product emoji1 = new Product("C1234", "잔망루피7", 2000);
        emoji1.setDescription("귀여운 잔망 루피 7번째 이모티콘");
        emoji1.setCategory("인기 이모티콘 시리즈");
        emoji1.setManufacturer("잔망 루피");
        emoji1.setCondition("최신순");
        
        Product emoji2 = new Product("C1234", "우당탕탕 베베는 직장인!", 2000);
        emoji2.setDescription("직장인을 위한 테틈 작가의 인기 이모티콘!");
        emoji2.setCategory("선물하기 좋은");
        emoji2.setManufacturer("테틈");
        emoji2.setCondition("인기순");
        
        Product emoji3 = new Product("C1235", "일상에 유용해요 커햄티콘! 2", 2000);
        emoji3.setDescription("킹받고 커여운 햄스터 이모티콘");
        emoji3.setCategory("재밌는");
        emoji3.setManufacturer("커햄");
        emoji3.setCondition("인기순");
        
        listOfProducts.add(emoji1);
        listOfProducts.add(emoji2);
        listOfProducts.add(emoji3);
    }
    
    public ArrayList<Product> getAllProducts(){
        return listOfProducts;
    }
}