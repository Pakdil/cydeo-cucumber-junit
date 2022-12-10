package com.cydeo.step_definitions;

import com.cydeo.pages.WebTableLoginPage;
import com.cydeo.utilities.BrowserUtils;
import com.cydeo.utilities.ConfigurationReader;
import com.cydeo.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class WebTable_StepDefinitions {

    WebTableLoginPage webTableLoginPage = new WebTableLoginPage();

    @Given("user is on the login page or web table app")
    public void user_is_on_the_login_page_or_web_table_app() {
        String url = ConfigurationReader.getProperty("web.table.url");
        Driver.getDriver().get(url);
    }
    @When("user enters username {string}")
    public void user_enters_username(String string) {
        webTableLoginPage.inputUsername.sendKeys(string);
    }

    @And("user enters password {string}")
    public void userEntersPassword(String string) {
        webTableLoginPage.inputPassword.sendKeys(string);
    }
    @When("user clicks login button")
    public void user_clicks_login_button() {
        webTableLoginPage.loginButton.click();
    }
    @Then("user should see url contains orders")
    public void user_should_see_url_contains_orders() {
        BrowserUtils.verifyURLContains("orders");

    }


    @When("user enters username {string} password {string} and logins")
    public void userEntersUsernamePasswordAndLogins(String username, String pw) {

//        webTableLoginPage.inputUsername.sendKeys(username);
//       webTableLoginPage.inputPassword.sendKeys(pw);
//        webTableLoginPage.loginButton.click();

 // also use this method
        webTableLoginPage.login(username,pw);
    }
}
