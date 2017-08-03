CREATE TABLE "accounts" (
  "id" serial PRIMARY KEY,
  "account" varchar(32) NOT NULL,
  "password" varchar(32) NOT NULL,
  "name" varchar(32) NOT NULL
);
CREATE UNIQUE INDEX "accounts_account_unique_idx" ON "accounts" USING "btree" ("account");

CREATE TABLE "devices" (
  "mac" char(17) PRIMARY KEY,
  "address" varchar(128) NOT NULL,
  "android_board" int DEFAULT 0,
  "lock_board" int DEFAULT 0,
  "lock_amount" int DEFAULT 0,
  "wireless" int DEFAULT 0,
  "antenna" int DEFAULT 0,
  "card_reader" int DEFAULT 0,
  "speaker" int DEFAULT 0,
  "router_board" int DEFAULT 0,
  "sim_no" int DEFAULT 0
);
CREATE INDEX "devices_address_idx" ON "devices" USING "btree" ("address");
