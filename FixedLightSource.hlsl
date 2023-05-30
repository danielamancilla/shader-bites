// Original Challenge
float4 LightingShader(float3 position : POSITION, float3 normal : NORMAL) : SV_Target
{
   float3 lightDirection = normalize(float3(1.0, 1.0, 1.0));
   float diffuseFactor = max(dot(normal, lightDirection), 0.0);
   float4 diffuseColor = float4(diffuseFactor, diffuseFactor, diffuseFactor, 1.0);
   return diffuseColor;
}

/* Optimized - By declaring lightDirection and diffuseFactor as const, you indicate that their values
* are constant and will not change during the execution of the shader. This can help the compiler optimize
* the shader code and potentially improve performance.*/
float4 LightingShader(float3 position : POSITION, float3 normal : NORMAL) : SV_Target
{
    const float3 lightDirection = normalize(float3(1.0, 1.0, 1.0));
    const float diffuseFactor = max(dot(normal, lightDirection), 0.0);
    float4 diffuseColor = float4(diffuseFactor, diffuseFactor, diffuseFactor, 1.0);

    return diffuseColor;
}
