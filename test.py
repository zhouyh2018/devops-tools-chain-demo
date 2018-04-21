from selenium import webdriver
import time

driver=webdriver.Chrome()
driver.maximize_window()

driver.get("http://localhost:8080")
time.sleep(5)

driver.quit()
