include: "/pj2/views/**/*.view"

explore: pdt_test {
  hidden: yes
  query: build_pdt {
    label: "Build PDT"
    dimensions: [pdt_test.pk_field]
  }
}
