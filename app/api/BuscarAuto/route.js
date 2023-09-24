'use server'
import { prisma } from '../_base';
import { NextResponse } from "next/server";

export async function GET(req) {
    const terminoDeBusqueda = req.nextUrl.searchParams.get("terminoDeBusqueda");
    console.log(terminoDeBusqueda);

    try {
        const filters = {
            OR: [],
        };

        // Valida el tipo de dato de terminoDeBusqueda
        if (terminoDeBusqueda) {
            if (!isNaN(parseInt(terminoDeBusqueda))) {
                // Si es un número entero, agrega condiciones numéricas
                filters.OR.push(
                    {
                        year: {
                            equals: parseInt(terminoDeBusqueda),
                        },
                    },
                    {
                        puertas: {
                            equals: parseInt(terminoDeBusqueda),
                        },
                    },
                    {
                        pasajeros: {
                            equals: parseInt(terminoDeBusqueda),
                        },
                    },
                    {
                        velocidad_maxima: {
                            equals: parseInt(terminoDeBusqueda),
                        },
                    },
                    {
                        caballos_por_minuto: {
                            equals: parseInt(terminoDeBusqueda),
                        },
                    },
                    {
                        precio: {
                            equals: parseInt(terminoDeBusqueda),
                        },
                    }
                );
            } 
            

            // Si es una cadena, agrega condiciones de búsqueda de texto
            filters.OR.push(
                {
                    marca: {
                        contains: terminoDeBusqueda,
                        mode: 'insensitive',
                    },
                },
                {
                    modelo: {
                        contains: terminoDeBusqueda,
                        mode: 'insensitive',
                    },
                },
                {
                    estado: {
                        contains: terminoDeBusqueda,
                        mode: 'insensitive',
                    },
                },
                {
                    color_exterior: {
                        contains: terminoDeBusqueda,
                        mode: 'insensitive',
                    },
                },
                {
                    color_interior: {
                        contains: terminoDeBusqueda,
                        mode: 'insensitive',
                    },
                },
                {
                    combustible: {
                        contains: terminoDeBusqueda,
                        mode: 'insensitive',
                    },
                },
                {
                    transmision: {
                        contains: terminoDeBusqueda,
                        mode: 'insensitive',
                    },
                },
                {
                    traccion: {
                        contains: terminoDeBusqueda,
                        mode: 'insensitive',
                    },
                },
                {
                    tipo: {
                        contains: terminoDeBusqueda,
                        mode: 'insensitive',
                    },
                },
                {
                    descripcion: {
                        contains: terminoDeBusqueda,
                        mode: 'insensitive',
                    },
                }
            );
        }

        const autos = await prisma.auto.findMany({
            where: filters,
        });

        return NextResponse.json(autos, { status: 200 }); // 200 OK
    } catch (error) {
        console.error('Error al obtener los Autos:', error); // 500 Internal Server Error
        return NextResponse.json({ message: 'Internal Server Error' }, { status: 500 });
    }
}
