/*
  Warnings:

  - You are about to alter the column `marca` on the `auto` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(80)`.
  - You are about to alter the column `modelo` on the `auto` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(80)`.
  - You are about to alter the column `estado` on the `auto` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(80)`.
  - You are about to alter the column `precio` on the `auto` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(10,2)`.
  - You are about to alter the column `color_exterior` on the `auto` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(80)`.
  - You are about to alter the column `color_interior` on the `auto` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(80)`.
  - You are about to alter the column `combustible` on the `auto` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(80)`.
  - You are about to alter the column `transmision` on the `auto` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(80)`.
  - You are about to alter the column `traccion` on the `auto` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(80)`.
  - You are about to alter the column `tipo` on the `auto` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(80)`.
  - You are about to alter the column `descripcion` on the `auto` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(350)`.

*/
-- AlterTable
ALTER TABLE "auto" ALTER COLUMN "marca" SET DATA TYPE VARCHAR(80),
ALTER COLUMN "modelo" SET DATA TYPE VARCHAR(80),
ALTER COLUMN "estado" SET DATA TYPE VARCHAR(80),
ALTER COLUMN "precio" SET DATA TYPE DECIMAL(10,2),
ALTER COLUMN "color_exterior" SET DATA TYPE VARCHAR(80),
ALTER COLUMN "color_interior" SET DATA TYPE VARCHAR(80),
ALTER COLUMN "combustible" SET DATA TYPE VARCHAR(80),
ALTER COLUMN "transmision" SET DATA TYPE VARCHAR(80),
ALTER COLUMN "traccion" SET DATA TYPE VARCHAR(80),
ALTER COLUMN "tipo" SET DATA TYPE VARCHAR(80),
ALTER COLUMN "descripcion" SET DATA TYPE VARCHAR(350);
