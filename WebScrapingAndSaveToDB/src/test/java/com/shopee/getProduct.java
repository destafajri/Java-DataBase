package com.shopee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
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
	int limitPage;

	public getProduct(String searchKeys) {
		this.searchKeys = searchKeys;
		getProduct.setUp(searchKeys);
	}

	private static void setUp(String keys) {
		System.setProperty("webdriver.chrome.driver", "C:\\webdriver\\chromedriver.exe");

		driver = new ChromeDriver();
		driver.get("https://shopee.co.id");
		WebElement search = driver.findElement(By.xpath("//input[@class=\"shopee-searchbar-input__input\"]"));
		search.sendKeys(keys);
		search.sendKeys(Keys.ENTER);

	}

	public void scroll() {
		int limitScroll = 100;
		JavascriptExecutor js = (JavascriptExecutor) driver;
		for (int i = 0; i <= limitScroll; i++) {
			js.executeScript("window.scrollBy(0, " + i + ")");
		}
	}

	private void data(int page) {
		String sql = "INSERT INTO produk_shopee (id_product, nama_product, price, kota) " + "VALUES (NULL, ?, ?, ?)";

		try (Connection conn = DBUtil.getConnection()) {
			PreparedStatement ps = conn.prepareStatement(sql);

			this.scroll();

			JavascriptExecutor js = (JavascriptExecutor) driver;

			for (int i = 0; i < page; i++) {
				List<WebElement> daftarNamaProduk = driver
						.findElements(By.xpath("//div[@class=\"ie3A+n bM+7UW Cve6sh\"]"));
				List<WebElement> daftarHargaProduk = driver
						.findElements(By.xpath("//div[@class=\"hpDKMN\"]//div[@class=\"vioxXd rVLWG6\"]//span[@class=\"ZEgDH9\"]"));
				List<WebElement> daftarNamaToko = driver
						.findElements(By.xpath("//div[@class=\"zGGwiV\"]"));

				for (int x = 0; x < daftarNamaProduk.size(); x++) {
					System.out.println(daftarNamaProduk.get(x).getText() + " " + daftarHargaProduk.get(x).getText()
							+ " " + daftarNamaToko.get(x).getText());

					int harga = Integer.valueOf(daftarHargaProduk.get(x).getText().replace(".", "").replace(" ", ""));

					ps.setString(1, daftarNamaProduk.get(x).getText());
					ps.setInt(2, harga);
					ps.setString(3, daftarNamaToko.get(x).getText());
					ps.addBatch();

				}

				WebElement next = driver.findElement(By.xpath("//button[@class='shopee-icon-button shopee-icon-button--right ']"));
				js.executeScript("arguments[0].click()", next);
				this.scroll();
			}

			driver.close();
			ps.executeBatch();
			ps.close();
			conn.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
	
	public void getDataPage(int limitPage) {
		this.limitPage = limitPage;
		this.data(limitPage);
	}

}
