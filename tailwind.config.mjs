/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        'codedex-purple': '#6B4BCC',
        'codedex-blue': '#4B9ECC',
        'codedex-pink': '#CC4B94',
        'codedex-dark': '#1A1A1A',
        'codedex-gray': '#2A2A2A',
      },
      fontFamily: {
        pixel: ['Pixelgrid', 'monospace'],
      },
    },
  },
  plugins: [],
};
