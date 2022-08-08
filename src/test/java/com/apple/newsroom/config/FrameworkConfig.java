package com.apple.newsroom.config;

import org.aeonbits.owner.Config;

/**
 * @description: Page Object class for FrameworkConfig
 * @author Gyangi Jagadeesh
 * @version 1.0
 * @since 19/06/2022
 */

@Config.Sources({ "file:${user.dir}/src/test/resources/application.properties" })
public interface FrameworkConfig extends Config {

	String urlUSA();

	String urlCN();

	String environment();

	String browser();

}
