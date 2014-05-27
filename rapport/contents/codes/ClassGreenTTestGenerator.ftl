package com.continental.gt.generation.test;

import com.continental.gt.test.GreenTTest;
import com.continental.gt.test.report.Severity;
<#foreach import in imports>
import ${import};
</#foreach>

import org.apache.thrift.TException;	

/**
 * Test of stubbed class generated
 * Generated by GreenT
 */
public class GreenTTest_${nameTest} extends GreenTTest {
	
	public GreenTTest_${nameTest}() {
		super("Anonymous GreenTTest_${nameTest}");
	}

	public GreenTTest_${nameTest}(String name) {
		super(name);
	}
	
	@Override
	public void addAllRequiredContextualData() {
		<#foreach alias in recordedVars>
		${alias};
		</#foreach>		
	}

	@Override
	public void createReport() {
		report.setVariableLongName("${variableLongName}");
		report.setVariableName("${variableName}");
		report.setResponsible("${responsible}");
		report.setSeverity(${severity});
		report.setTestSummary("${testSummary}");
		
		<#foreach comment in comments>
		report.addComment("${comment}");
		</#foreach>		
	}

	@Override
	public void verdict() {
		// TODO Auto-generated method stub
		
	}
}
