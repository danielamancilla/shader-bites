float4 TextureSamplingShader(float2 uv : TEXCOORD) : SV_Target
{
    float4 color = tex2D(sampler_name, uv);
    return color;
}