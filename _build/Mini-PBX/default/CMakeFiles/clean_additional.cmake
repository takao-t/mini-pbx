# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\Users\\tsq\\MPLABProjects\\Mini-PBX\\out\\Mini-PBX\\default.cmf"
  "C:\\Users\\tsq\\MPLABProjects\\Mini-PBX\\out\\Mini-PBX\\default.hex"
  "C:\\Users\\tsq\\MPLABProjects\\Mini-PBX\\out\\Mini-PBX\\default.hxl"
  "C:\\Users\\tsq\\MPLABProjects\\Mini-PBX\\out\\Mini-PBX\\default.mum"
  "C:\\Users\\tsq\\MPLABProjects\\Mini-PBX\\out\\Mini-PBX\\default.o"
  "C:\\Users\\tsq\\MPLABProjects\\Mini-PBX\\out\\Mini-PBX\\default.sdb"
  "C:\\Users\\tsq\\MPLABProjects\\Mini-PBX\\out\\Mini-PBX\\default.sym"
  )
endif()
