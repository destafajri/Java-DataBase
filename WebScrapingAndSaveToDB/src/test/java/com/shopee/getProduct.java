package com.shopee;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

/*
 * method get product
 */
public class getProduct {
	static WebDriver driver;
	String searchKeys;

	public getProduct(String searchKeys) {
		this.searchKeys=searchKeys;
		getProduct.setUp(searchKeys);
	}

	private static void setUp(String keys) {
		System.setProperty("webdriver.chrome.driver", "C:\\webdriver\\chromedriver.exe");

		driver = new ChromeDriver();
		driver.get("https://shopee.co.id");
		WebElement search =driver.findElement(By.xpath("//input[@class=\"shopee-searchbar-input__input\"]"));
		search.sendKeys(keys);
		search.sendKeys(Keys.ENTER);
		
	}
	
	

}
