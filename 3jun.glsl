void mainImage(out vec4 fragColor, in vec2 fragCoord)
  {
    vec2 uv = (fragCoord*2.0 - iResolution.xy)/iResolution.y;
    float d = length(uv);
    vec3 col = vec3(1.0, 0.5, 0.3);

    d = sin(d*8 + iTime)/8;
    d = abs(d);
    d = 0.02/d;

    vec3 finalCol = d*col;
    fragColor = vec4(finalCol, 1.0);
  }
