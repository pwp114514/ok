package;

import openfl.filters.ShaderFilter;

class ShadersHandler
{
	public static var ChromaticAberration:ShaderFilter = new ShaderFilter(new ChromaticAberration());
	public static var chromeoffsetthing = 0.0;
	var chromeoffset = 0.0;

	public function new(chromeOffset:Float)
	{
		chromeoffsetthing = chromeOffset;
		chromaticAberration.shader.data.rOffset.value = [chromeOffset];
		chromaticAberration.shader.data.gOffset.value = [0.0];
		chromaticAberration.shader.data.bOffset.value = [chromeOffset * -1];
	}
}
