const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          DEFAULT: '#5c4dfe',
          light: '#f6f5ff'
        },
        body: '#ebeff9',
        navbar: '#ffffff',
        minor: '#262626',
        text: '#666666',
        border: '#EBECF2',
        // user theme
        cyan: {
          DEFAULT: '#008ECC',
          light: '#F3F9FB'
        },
        blur: '#F5F5F5',
        dark: {
          1: '#222222',
          2: '#666666',
          3: '#888888'
        },
        cborder: '#D9D9D9',
        save: '#04966d',
        'custom-green': {
          DEFAULT: '#4aae4f',
          dark: '#3d8e41'
        }
      },
      fontFamily: {
        sans: ['Plus Jakarta Sans', ...defaultTheme.fontFamily.sans],
      },
      transitionDuration: {
        1: '.1s',
        2: '.2s',
        3: '.3s',
        4: '.4s',
        5: '.5s',
        6: '.6s',
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}