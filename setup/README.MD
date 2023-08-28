# How to crawl changelogs
1. Get all repository file by using [github api](https://docs.github.com/en/rest/repos/contents?apiVersion=2022-11-28#get-repository-content)
2. Filter repository file ending with `.md`
3. Get details of file content by using [github api](https://docs.github.com/en/rest/repos/contents?apiVersion=2022-11-28#get-repository-content)
4. Parse file content, then save data to db

# How to use api

1. Crawl changelogs
    ```
   GET: /api/v1/product-metadata/crawl-changelogs
    ```
2. Get changelogs
    ```
    GET: /api/v1/product-metadata/changelogs
    ```
    - Query params:
      ```
      product - include Mochi, Mochi Discord, Mochi Telegram
      size    - the number of results to return.
      ```
3. Mark changelog viewed by user
    ```
    POST /api/v1/product-metadata/changelogs/view
    ```
    - Body
      ```
      {
        "key": "abc",
        "changelog_name": "2023-25-08.md"
      }
      ```
4. Get changelogs viewed 
    ```
    GET /api/v1/product-metadata/changelogs/view
    ```
   - Query params:
      ```
      changelog_name - file name of changelog
      key            - value of key
      ```