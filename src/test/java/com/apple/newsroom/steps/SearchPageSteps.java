package com.apple.newsroom.steps;

import static org.junit.Assert.assertEquals;

import java.util.concurrent.TimeUnit;

import org.aeonbits.owner.ConfigFactory;
import org.openqa.selenium.WebDriver;

import com.apple.newsroom.config.FrameworkConfig;
import com.apple.newsroom.pages.locators.SearchPage;
import com.apple.newsroom.utils.DriverFactory;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class SearchPageSteps {

	public WebDriver driver;

	public SearchPage searchPage;

	/**
	 * @description: setUp() method to set up initial state for all test methods and
	 *               tearDown() method perform cleanup after execution.
	 * @param None
	 * @return None
	 * @author Hindu
	 * @version 1.0
	 */

	@Before
	public void setUp() {

		driver = DriverFactory.get_driver_instance();
		searchPage = new SearchPage(driver);
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

	}

	@After
	public void tearDown() {

		if (driver != null) {

			driver.close();
			driver.quit();
		}
	}

	@Given("user navigates to the newsRoom application")
	public void user_navigates_to_the_news_room_application() {

		FrameworkConfig config = ConfigFactory.create(FrameworkConfig.class);
		config.browser();
		System.out.println("Config File " + config.browser());
		config.urlUSA();
		config.urlCN();

		// driver.get(DriverUtility.getProperty("US_URL"));
		driver.get(config.urlUSA());
	}

	@Then("user able to see the newsroom home page {string}")
	public void user_able_to_see_the_newsroom_home_page(String title) {

		String pageTitle = driver.getTitle();

		assertEquals(pageTitle, title);

	}

	@Then("user should see the links {string} and {string}")
	public void user_should_see_the_links_and(String newsRoom, String popularTopics) {

		if (newsRoom.equals(searchPage.searchNewsroomText())) {
			assertEquals(searchPage.searchNewsroomText(), newsRoom);
		}

		if (popularTopics.equals(searchPage.popularTopicsText())) {
			assertEquals(searchPage.popularTopicsText(), popularTopics);
		}

	}

	@Then("user should see the links {string}")
	public void newsRoomLinkVerification(String newsRoomLink) {

		assertEquals(searchPage.newsroomLinkText(), newsRoomLink);
	}

	@When("user clicks on {string}")
	public void user_clicks_on(String newsroomLink) {
		if (newsroomLink.equals(searchPage.newsroomLinkText())) {
			searchPage.newsroomLink();
		}

	}

	@Then("user should see text header {string}")
	public void user_should_see_text_header(String latestNewsHeader) {
		assertEquals(searchPage.latestNewsHeader(), latestNewsHeader);
	}

}
