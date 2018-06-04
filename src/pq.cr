require "./lib_pq"

@[Link(ldflags: "-lpq")]
lib LibPq
  $stderr : Void*
  $stdout : Void*
end

class Pq
  NULL = nil

  forward_missing_to LibPq
end
