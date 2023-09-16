import {z, defineCollection} from 'astro:content'

const movieCollection = defineCollection({
    type: 'content',
    // schema based on omdb exported ratings.csv
    schema: z.object({
        id: z.number(),
        title: z.string(),
        year: z.number(),
        rating: z.union([z.literal(1), z.literal(2), z.literal(3), z.literal(4), z.literal(5), z.literal(6), z.literal(7), z.literal(8), z.literal(9), z.literal(10)]),
        date: z.date(),
    }),
})

export const collections = {
    'movie': movieCollection,
}