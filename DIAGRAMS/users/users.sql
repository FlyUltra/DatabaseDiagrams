CREATE TABLE `users` (
  `id` bigint PRIMARY KEY,
  `name` varchar(250),
  `discord_id` bigint,
  `currencies` text,
  `first_join` timestamp,
  `last_join` timestamp,
  `first_join_ip` varchar(100),
  `last_join_ip` varchar(100)
);

CREATE TABLE `discord_users` (
  `id` integer PRIMARY KEY,
  `user_name` varchar(250),
  `member_id` long
);

CREATE TABLE `humans` (
  `id` integer PRIMARY KEY,
  `email` varchar(250),
  `tel_number` varchar(50),
  `description` text
);

ALTER TABLE `users` ADD FOREIGN KEY (`discord_id`) REFERENCES `discord_users` (`id`);

ALTER TABLE `humans` ADD FOREIGN KEY (`id`) REFERENCES `users` (`id`);
