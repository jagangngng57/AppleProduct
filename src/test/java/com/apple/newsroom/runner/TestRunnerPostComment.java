package com.apple.newsroom.runner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

/**
 * @description: This class acts as an interlink between cucumber feature files
 *               and step definition classes
 * @author Gyangi Jagadeesh
 * @version 1.0
 * @since 28/12/2018
 */

@RunWith(Cucumber.class)
@CucumberOptions(features = "C:\\workspaces\\AppleProduct\\src\\test\\resources\\FeatureFiles\\appleNewsRoom.feature", glue = {
		"stepDefination" }, plugin = {
				"com.cucumber.listener.ExtentCucumberFormatter:target/cucumber-reports/report.html" }, monochrome = true)
public class TestRunnerPostComment {
}