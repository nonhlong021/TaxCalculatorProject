package org.example.Pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class TaxPage {

   private final WebDriver driver;
   By bySalaryAmount = By.id("//*[@id='gross']");

   By byAge = By.id("//*[@id='age']");

   public TaxPage(WebDriver driver) {
      this.driver = driver;
   }
}
