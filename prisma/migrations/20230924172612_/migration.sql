/*
  Warnings:

  - You are about to alter the column `precio` on the `auto` table. The data in that column could be lost. The data in that column will be cast from `Decimal(10,2)` to `Integer`.

*/
-- AlterTable
ALTER TABLE "auto" ALTER COLUMN "precio" SET DATA TYPE INTEGER;
