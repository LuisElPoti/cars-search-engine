-- CreateTable
CREATE TABLE "Auto" (
    "id" SERIAL NOT NULL,
    "marca" TEXT NOT NULL,
    "modelo" TEXT NOT NULL,
    "estado" TEXT NOT NULL,
    "year" INTEGER NOT NULL,
    "precio" DECIMAL(65,30) NOT NULL,
    "color_exterior" TEXT NOT NULL,
    "color_interior" TEXT NOT NULL,
    "combustible" TEXT NOT NULL,
    "transmision" TEXT NOT NULL,
    "traccion" TEXT NOT NULL,
    "tipo" TEXT NOT NULL,
    "puertas" INTEGER NOT NULL,
    "pasajeros" INTEGER NOT NULL,
    "descripcion" TEXT,
    "velocidad_maxima" INTEGER NOT NULL,
    "caballos_por_minuto" INTEGER NOT NULL,

    CONSTRAINT "Auto_pkey" PRIMARY KEY ("id")
);
