package com.apple.newsroom.config;

import org.aeonbits.owner.Config;

@Config.Sources({ "file:${user.dir}/src/test/resources/application.properties" })
public interface FrameworkConfig extends Config {

	String urlUSA();

	String urlCN();

	String environment();

	String browser();

}
