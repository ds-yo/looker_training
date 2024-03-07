connection: "osumi_test"

include: "/pj2/views/*.view.lkml"
include: "/pj2/datagroup"

# PDTを強制的に再作成できるようにするためのExplore
include: "/pj2/explores/build_pdt.explore"
