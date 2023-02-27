package;

import openfl.filters.ShaderFilter;

class ChromaticAberration extends Effect 
{
	public static var ChromaticAberration:ShaderFilter = new ShaderFilter(new ChromaticAberration());
	public function new(rOffset:Float, gOffset:Float, bOffset:Float) 
	{
		ChromaticAberration.iTime.value = [0];
		ChromaticAberration.shader.data.rOffset.value = [rOffset];
		ChromaticAberration.shader.data.gOffset.value = [gOffset];
		ChromaticAberration.shader.data.bOffset.value = [bOffset];
		PlayState.instance.shaderUpdates.push(update);
	}
}
