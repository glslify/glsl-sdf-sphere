float sSphere(vec3 position, float radius) {
  return length(position) - radius;
}

#pragma glslify: export(sSphere)
