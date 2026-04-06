import {PrismaClient} from '@prisma/client';

const prisma = new PrismaClient();

async function main() {

    await prisma.analise.createMany({
        data: [
            {userId: 1, pesoOvo: 58.30, alturaOvo: 57.59, laguraOvo: 42.45, medidaGemaUm: 40.7, medidaGemaDois: 42.45, alturaGema: 42.45, medidaAlbumenUm: 42.45, medidaAlbumenDois: 42.45, alturaAlbumen: 42.45, pesoGema: 42.45, espessuraCascaUm: 42.45, espessuraCascaDois: 42.45, espessuraCascaTres: 42.45, pesoCasca: 42.45},
        ],

        skipDuplicates: true
    })

    console.log('Analises cadastradas com sucesso!')
}

main()
    .catch(console.error)
    .finally(() => prisma.$disconnect())