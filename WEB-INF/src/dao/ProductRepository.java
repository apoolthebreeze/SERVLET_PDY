package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
    private ArrayList < Product > listOfProducts = new ArrayList < Product > ();
    public ProductRepository() {
        Product emoji1 = new Product("P1243", "잔망루피7", 2000);
        emoji1.setDescription("귀여운 잔망 루피 7번째 이모티콘");
        emoji1.setCategory("인기 이모티콘 시리즈");
        emoji1.setManufacturer("잔망 루피");
        emoji1.setUnitsInStock(140);
        emoji1.setCondition("인기 이모티콘");
                
        Product emoji2 = new Product("P1244", "우당탕탕 베베는 직장인!", 2000);
        emoji2.setDescription("직장인을 위한 테틈 작가의 인기 이모티콘!");
        emoji2.setCategory("선물하기 좋은");
        emoji2.setManufacturer("테틈");
        emoji2.setUnitsInStock(4300);
        emoji2.setCondition("인기 이모티콘");
        
        Product emoji3 = new Product("P1236", "일상에 유용해요 커햄티콘! 2", 2000);
        emoji3.setDescription("킹받고 커여운 햄스터 이모티콘");
        emoji3.setCategory("재밌는");
        emoji3.setManufacturer("커햄");
        emoji3.setUnitsInStock(1500);
        emoji3.setCondition("인기 이모티콘");

         Product emoji4 = new Product("P1237", "멍멍하개", 2000);
        emoji4.setDescription("멍멍하는 개 이모티콘");
        emoji4.setCategory("재밌는");
        emoji4.setManufacturer("그모");
        emoji4.setUnitsInStock(1034);
        emoji4.setCondition("신규 이모티콘");
        
         Product emoji5 = new Product("P1238", "GO라니 4", 2000);
        emoji5.setDescription("고라니 이모티콘");
        emoji5.setCategory("재밌는");
        emoji5.setManufacturer("그모");
        emoji5.setUnitsInStock(1500);
        emoji5.setCondition("신규 이모티콘");
        
         Product emoji6 = new Product("P1239", "커플 망그러진 곰2", 2000);
        emoji6.setDescription("커플 사이에 사용하기 좋은 이모티콘");
        emoji6.setCategory("귀여운");
        emoji6.setManufacturer("유랑");
        emoji6.setUnitsInStock(240);
        emoji6.setCondition("신규 이모티콘");
        
         Product emoji7 = new Product("P1240", "학식먹는 햄찌리", 2500);
        emoji7.setDescription("대학교 다니는 햄스터");
        emoji7.setCategory("MD추천");
        emoji7.setManufacturer("이짜나");
        emoji7.setUnitsInStock(920);
        emoji7.setCondition("스타일");
        
         Product emoji8 = new Product("P1241", "열정! 근육토끼 핑순이", 2000);
        emoji8.setDescription("근토 핑순이 이모티콘");
        emoji8.setCategory("이모티콘 플러스 전용 상품");
        emoji8.setManufacturer("곰국");
        emoji8.setUnitsInStock(1000);
        emoji8.setCondition("스타일");
        
         Product emoji9 = new Product("P1242", "버찌가 하트 꽃피우러 와찌!", 3000);
        emoji9.setDescription("짱크짱귀 버찌 이모티콘");
        emoji9.setCategory("큰이모티콘");
        emoji9.setManufacturer("루키");
        emoji9.setUnitsInStock(500);
        emoji9.setCondition("스타일");
        
        listOfProducts.add(emoji1);
        listOfProducts.add(emoji2);
        listOfProducts.add(emoji3);
        listOfProducts.add(emoji4);
        listOfProducts.add(emoji5);
        listOfProducts.add(emoji6);
        listOfProducts.add(emoji7);
        listOfProducts.add(emoji8);
        listOfProducts.add(emoji9);
    }

    public ArrayList < Product > getAllProducts() {
        return listOfProducts;
    }
    
public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
}