# glsl-sdf-sphere

[![stable](http://badges.github.io/stability-badges/dist/stable.svg)](http://github.com/badges/stability-badges)

GLSL SDF function for generating a sphere. Determines the distance between a
point and the surface of a sphere at the origin.

**[view demo](http://stack.gl/glsl-sdf-sphere/)**

## Usage

[![NPM](https://nodei.co/npm/glsl-sdf-sphere.png)](https://nodei.co/npm/glsl-sdf-sphere/)

### `float sphere(vec3 position, float radius)`

Returns the signed distanced between `position` and a sphere at the origin
with a given `radius`. For example, to draw a sphere in a raytracing shader:

``` glsl
#pragma glslify: sphere = require('glsl-sdf-sphere')

vec2 doModel(vec3 p) {
  float id     = 1.0;
  float radius = 0.5;
  float dist   = sphere(p, radius);

  return vec2(dist, id);
}
```

Note that you can move the sphere around in this case by offsetting the
`position` vector, for example:

``` glsl
uniform float iGlobalTime;

#pragma glslify: sphere = require('glsl-sdf-sphere')

vec2 doModel(vec3 p) {
  vec3 offset = vec3(sin(iGlobalTime), 0, 0);

  float id     = 1.0;
  float radius = 0.5;
  float dist   = sphere(p - offset, radius);

  return vec2(dist, id);
}
```

## Contributing

See [stackgl/contributing](https://github.com/stackgl/contributing) for details.

## License

MIT. See [LICENSE.md](http://github.com/stackgl/glsl-sdf-sphere/blob/master/LICENSE.md) for details.
