package com.apple.newsroom.pages.locators;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

/**
 * @description: Page Object class for Branch page
 * @author Hindu
 * @version 1.0
 * @since 19/06/2022
 */

public class SearchPage {

	// Initialization: Page factory will initialize every web element with reference
	// to corresponding element on the actual web page based on locators

	WebDriver driver;

	public SearchPage(WebDriver driver) {
		PageFactory.initElements(driver, this);
		this.driver = driver;
	}

	// Declare elements on Search page by @findBy annotation
	@FindBy(xpath = "//button[contains(text(),'Search Newsroom')]")
	private WebElement searchNewsroom;

	@FindBy(xpath = "//button[contains(text(),'Popular Topics')]")
	private WebElement popularTopics;

	@FindBy(xpath = "//a[contains(text(),'Newsroom')]")
	private WebElement newsroomLink;

	@FindBy(xpath = "//input[@name='q']")
	private WebElement searchNewRoomTextField;

	@FindBy(xpath = "//a[contains(text(),'View Archive')]")
	private WebElement viewArchiveLink;

	@FindBy(xpath = "//h2[contains(text(),'Latest News')]")
	private WebElement latestNewsHeader;

	public void searchNewsRoomTextField(String name) {
		searchNewRoomTextField.sendKeys(name);
	}

	public String searchNewsroomText() {
		return searchNewsroom.getText();
	}

	public String latestNewsHeader() {
		return latestNewsHeader.getText();
	}

	public void searchNewsroomClick() {
		searchNewsroom.click();
	}

	public String newsroomLinkText() {
		return newsroomLink.getText();
	}

	public void newsroomLink() {
		newsroomLink.click();
	}

	public String popularTopicsText() {
		return popularTopics.getText();
	}

}
