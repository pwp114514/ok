package;

import openfl.filters.ShaderFilter;

class ShadersHandler
{
	public var ChromaticAberration:ShaderFilter = new ShaderFilter(new ChromaticAberration());
	public static var chromeoffsetthing = 0.0;

	public function new(chromeOffset:Float)
	{
		chromeoffsetthing = chromeOffset;
		ChromaticAberration.shader.data.rOffset.value = [chromeOffset];
		ChromaticAberration.shader.data.gOffset.value = [0.0];
		ChromaticAberration.shader.data.bOffset.value = [chromeOffset * -1];
	}
}
