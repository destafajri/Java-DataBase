package com.shopee;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

/*
 * method get product
 */
public class getProduct {

	static WebDriver driver;

	public getProduct() {
		getProduct.setUp();

	}

	private static void setUp() {
		System.setProperty("webdriver.chrome.driver", "C:\\webdriver\\chromedriver.exe");

		driver = new ChromeDriver();

		driver.get("https://shopee.co.id");
	}

}
