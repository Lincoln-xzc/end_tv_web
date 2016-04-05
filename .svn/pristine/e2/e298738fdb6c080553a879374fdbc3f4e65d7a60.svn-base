package com.zyj.framework.common;

import java.io.IOException;
import java.text.DecimalFormat;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;



/**
 * @ClassName: DoubleTypeAdapter
 * @Description:
 */

public class DoubleSerializer extends JsonSerializer<Double>{

	@Override
	public void serialize(Double d,  JsonGenerator jgen,
			SerializerProvider provider) throws JsonGenerationException, IOException {
		DecimalFormat format=new DecimalFormat("##0.00");
		String temp=format.format(d);
		jgen.writeString(temp);
	}

	
}
