import resolve from "@rollup/plugin-node-resolve"

export default [
  {
    input: "app/javascript/application.js",
    output: {
      file: "app/assets/builds/application.js",
      format: "es",
      inlineDynamicImports: true,
      sourcemap: true
    },
    plugins: [
      resolve()
    ]
  },
  {
    input: "app/javascript/map.js",
    output: {
      file: "app/assets/builds/map.js",
      format: "es",
      inlineDynamicImports: true,
      sourcemap: true
    },
    plugins: [
      resolve()
    ]
  }
]
