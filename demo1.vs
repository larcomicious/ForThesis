/******************************************************************************
 * This is a really simple vertex shader that simply sets the output vertex's
 * position to be the same as the input.
 *
 * Happy hacking! - eric
 *****************************************************************************/

#version 330 core

layout (location = 0) in vec3 vertexPosition;
layout (location = 1) in vec3 vertexColor;
out vec3 shaderColor;

void main()
{
    vec2 normalized = vertexPosition.xy / 10.0; 
    gl_Position = vec4(normalized, vertexPosition.z, 1.0f);
    shaderColor = vertexColor;
}
