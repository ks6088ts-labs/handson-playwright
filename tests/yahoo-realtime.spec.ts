import { test, expect } from "@playwright/test";

test("test", async ({ page }) => {
  await page.goto("https://search.yahoo.co.jp/realtime");
  for (let i = 1; i <= 20; i++) {
    const link = await page
      .getByRole("link", { name: `${i}`, exact: true })
      .textContent();
    console.log(link);
  }
});
