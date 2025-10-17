-- Get the username of the person who made the post about EmptyStack in forum_posts.
SELECT * FROM forum_posts;
SELECT * FROM forum_posts WHERE content ILIKE '%emptystack%';
SELECT * FROM forum_posts WHERE content ILIKE '%emptystack%' AND content ILIKE '%dad%';
SELECT * FROM forum_posts WHERE content ILIKE '%emptystack%' AND content ILIKE '%dad%' AND "date" BETWEEN '2048-04-01' AND '2048-04-30';
SELECT author FROM forum_posts WHERE content ILIKE '%emptystack%' AND content ILIKE '%dad%' AND "date" BETWEEN '2048-04-01' AND '2048-04-30';
-- author = smart-money-44

-- Get the last name of the person associated with that username in forum_accounts
SELECT * FROM forum_accounts WHERE username = 'smart-money-44';
-- last name = Steele

-- Find all other accounts with the same last name
SELECT * FROM forum_accounts WHERE last_name = 'Steele';
--  sharp-engine-57 | Andrew     | Steele
--  stinky-tofu-98  | Kevin      | Steele
--  smart-money-44  | Brad       | Steele

-- Find all accounts in emptystack_accounts with the same last name
SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';
-- triple-cart-38 | password456 | Andrew     | Steele
-- lance-main-11  | password789 | Lance      | Steele

-- There will only be one EmptyStack employee with a forum account. Use their credentials to access node mainframe, which will output a new sql file for you to run

-- Find the message in emptystack_messages that mentions a project involving self-driving taxis. That message is sent from an admin account and also reveals the project code
SELECT * FROM emptystack_messages WHERE body ILIKE '%taxis%';
