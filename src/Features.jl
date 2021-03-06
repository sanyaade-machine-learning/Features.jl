module Features

import Base: start, done, next, length, open, close
export HTKFile, HTKIterator, features, StackedFeatures, BunchedFeatures, swap2, swap4, dims, analist, marks, SegmentedFile, mask

# NOTE: Features are column vectors of Float32

# -------------------------------------------------------------------------------------------------------------------------
# Utilities
# -------------------------------------------------------------------------------------------------------------------------
swap4(d::Uint32) = (((d >> 24) & 0x000000ff) | ((d >> 8) & 0x0000ff00) | ((d << 8) & 0x00ff0000) | ((d << 24) & 0xff000000))::Uint32
swap2(d::Uint16) = (((d >> 8) & 0x00ff) | ((d << 8) & 0xff00))::Uint16

# -------------------------------------------------------------------------------------------------------------------------
# Includes
# -------------------------------------------------------------------------------------------------------------------------
include("htk.jl")
include("segmented.jl")
include("ftransforms.jl")

end # module
