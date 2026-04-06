-- CreateTable
CREATE TABLE "users" (
    "id" BIGSERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "password_hash" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "analises" (
    "id" BIGSERIAL NOT NULL,
    "user_id" BIGINT NOT NULL,
    "pesoOvo" DOUBLE PRECISION NOT NULL,
    "alturaOvo" DOUBLE PRECISION NOT NULL,
    "laguraOvo" DOUBLE PRECISION NOT NULL,
    "medidaGemaUm" DOUBLE PRECISION NOT NULL,
    "medidaGemaDois" DOUBLE PRECISION NOT NULL,
    "alturaGema" DOUBLE PRECISION NOT NULL,
    "medidaAlbumenUm" DOUBLE PRECISION NOT NULL,
    "medidaAlbumenDois" DOUBLE PRECISION NOT NULL,
    "alturaAlbumen" DOUBLE PRECISION NOT NULL,
    "pesoGema" DOUBLE PRECISION NOT NULL,
    "espessuraCascaUm" DOUBLE PRECISION NOT NULL,
    "espessuraCascaDois" DOUBLE PRECISION NOT NULL,
    "espessuraCascaTres" DOUBLE PRECISION NOT NULL,
    "pesoCasca" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "analises_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- AddForeignKey
ALTER TABLE "analises" ADD CONSTRAINT "analises_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
