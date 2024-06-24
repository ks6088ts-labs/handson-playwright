import { test, expect } from "@playwright/test";

test("test", async ({ page }) => {
  await page.goto("https://www2.nenkin.go.jp/do/search_section/");
  await page.getByLabel("法人番号で検索する").click();
  await page.getByLabel("法人番号（半角数字13桁）").click();
  await page.getByLabel("法人番号（半角数字13桁）").fill("3011001091842");
  await page.getByRole("button", { name: "検索実行" }).click();

  // get the text of the first cell in the first row
  const numOfEmployee = await page
    .locator('//td[@class="search_right_top"]')
    .innerText();
  console.log(numOfEmployee);
});
