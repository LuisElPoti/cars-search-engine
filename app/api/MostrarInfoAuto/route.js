'use server'
import { prisma } from '../_base';
import { NextResponse } from "next/server";


export async function GET(req){

    try{

        const auto = req.nextUrl.searchParams.get("auto");
        console.log(auto);

        const autoInfo = await prisma.auto.findUnique({
            where:{
                id: parseInt(auto),
            },
        });
        return NextResponse.json(autoInfo, { status: 200 }); // 200 OK

    } catch (error) {
        console.error('Error al obtener las asignaturas:', error); // 500 Internal Server Error
        return NextResponse.json({ message: 'Internal Server Error' }, { status: 500 });
    }

}