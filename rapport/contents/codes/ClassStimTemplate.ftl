<#if package = "">
package com.continental.gt.generation.test;
<#else>
package com.continental.gt.generation.test.${package};
</#if>

import java.util.List;

<#if package = "">
import com.continental.gt.test.${nameClass};
<#else>
import com.continental.gt.test.${package}.${nameClass};
</#if>

import com.continental.gt.devices.Device;
import com.continental.gt.exception.CheckFailedGreenTTexception;
	
<#foreach import in imports>
import ${import};
</#foreach>

import org.apache.thrift.TException;	

/**
 * Test of stubbed class generated
 * Generated by GreenT
 */
public class ${nameClass}_${nameTest} extends ${nameClass} {
	
	public ${nameClass}_${nameTest}(){
		super("Anonymous ${nameClass}_${nameTest}");
	}

	public ${nameClass}_${nameTest}(String name) {
		super(name);
	}
	
	@Override
	public void addAllRequiredAlias() {
		<#foreach alias in initAlias>
		${alias};
		</#foreach>
	}
	/* 
	 * @see com.continental.gt.test.stim.${nameClass}#exec()
	 * Generated by GreenT.
	 */
	@Override
	public void exec(List<Device> devices) throws CheckFailedGreenTTexception {
		showMsg(".exec() : executing stimulation code of ${nameClass}_${nameTest} class...");
		try {
			double n;
			Thread.sleep(500); // TODO remove me
			<#foreach device in deviceDeclarationList>
			${device};
			</#foreach>
			
			<#foreach exec in instructionsExec>
			${exec};
			</#foreach>
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (TException e) {
			e.printStackTrace();
		}		
		
		showMsg("... complete ok!");
	}

}
