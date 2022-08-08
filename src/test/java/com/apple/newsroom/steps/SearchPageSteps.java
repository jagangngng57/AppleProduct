package com.apple.newsroom.steps;

import static org.junit.Assert.assertEquals;

import java.util.concurrent.TimeUnit;

import org.aeonbits.owner.ConfigFactory;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import com.apple.newsroom.config.FrameworkConfig;
import com.apple.newsroom.pages.locators.SearchPage;
import com.apple.newsroom.utils.DriverFactory;

import cucumber.api.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class SearchPageSteps {

	public WebDriver driver;

	public SearchPage searchPage;

	@FindBy(xpath = "//input[@class='nr-sf-input']")
	private WebElement searchNewRoomTextField;

	@FindBy(xpath = "//input[@placeholder='Search Newsroom']")
	private WebElement placeHolder;

	/**
	 * @description: setUp() method to set up initial state for all test methods and
	 *               tearDown() method perform cleanup after execution.
	 * @param None
	 * @return None
	 * @author Gyangi Jagadeesh
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

	@Then("user should see the viewArchive {string}")
	public void user_should_see_the_view_archive(String viewArchiveLink) {
		if (viewArchiveLink.equals(searchPage.viewArchiveLink())) {
			assertEquals(searchPage.viewArchiveLink(), viewArchiveLink);
		}
	}

	@Then("user should see the search links {string}")
	public void user_should_see_the_search_links(String searchRoom) {
		if (searchRoom.equals(searchPage.searchNewsroomText())) {
			assertEquals(searchPage.searchNewsroomText(), searchRoom);
		}
	}

	@When("user enter the {string} in search box")
	public void user_enter_the_in_search_box(String name) throws InterruptedException {

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("document.getElementById('q').value='Macbook'");

	}

	@Then("user should see the search results with page {string}")
	public void user_should_see_the_search_results_with_page(String title) {
		String pageTitle = driver.getTitle();

		assertEquals(pageTitle, title);
	}

	@Then("user should see the link {string}")
	public void user_should_see_the_link(String popularTopics) {

		if (popularTopics.equals(searchPage.popularTopicsText())) {
			assertEquals(searchPage.popularTopicsText(), popularTopics);
		}
	}

	@When("user able to clicks on {string}")
	public void user_able_to_clicks_on(String popularTopicLink) {
		if (popularTopicLink.equals(searchPage.popularTopicsText())) {
			searchPage.popularTopicsLink();
		}
	}

	@Then("user should see {string} in the list of topics")
	public void user_should_see_in_the_list_of_topics(String airPodLink) {
		if (airPodLink.equals(searchPage.popularTopicsText())) {
			assertEquals(searchPage.airPodsLinkText(), airPodLink);
		}
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

	@When("user clicks on viewArchive {string}")
	public void user_clicks_on_view_archive(String string) {

		searchPage.viewArchiveLinkClick();
	}

	@Then("user navigates to the archive page results with {string}")
	public void user_navigates_to_the_archive_page_results_with(String title) {
		String pageTitle = driver.getTitle();

		assertEquals(pageTitle, title);
	}

	@Then("user should see the newsroom links {string}")
	public void newsRoomLinkVerification(String newsRoomLink) {

		assertEquals(searchPage.newsroomLinkText(), newsRoomLink);
	}

	@When("user clicks on {string}")
	public void user_clicks_on(String newsroomLink) {
		if (newsroomLink.equals(searchPage.newsroomLinkText())) {
			searchPage.searchNewsroomText();
		}

	}

	@Then("user should see text header {string}")
	public void user_should_see_text_header(String latestNewsHeader) {
		assertEquals(searchPage.latestNewsHeader(), latestNewsHeader);
	}

}
