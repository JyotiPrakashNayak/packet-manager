package io.mosip.registration.processor.camel.bridge;

import org.apache.camel.Processor;
import org.apache.camel.builder.RouteBuilder;

import io.mosip.registration.processor.camel.bridge.processor.BatchRequestProcessor;
import io.mosip.registration.processor.camel.bridge.processor.BiometricValidationProcessor;
import io.mosip.registration.processor.camel.bridge.processor.DemographicValidationProcessor;
import io.mosip.registration.processor.camel.bridge.processor.RetryProcessor;
import io.mosip.registration.processor.camel.bridge.processor.StructureValidationProcessor;
import io.mosip.registration.processor.camel.bridge.statuscode.StatusCodes;
import io.mosip.registration.processor.camel.bridge.util.BridgeUtil;
import io.mosip.registration.processor.core.abstractverticle.MessageBusAddress;

/**
 * The Class MosipBridgeRoutes.
 */
public class MosipBridgeRoutes extends RouteBuilder {

	private static Processor validateBatchRequest = new BatchRequestProcessor();

	private static Processor validateStructure = new StructureValidationProcessor();

	private static Processor validateDemographic = new DemographicValidationProcessor();

	private static Processor validateBiometric = new BiometricValidationProcessor();

	private static Processor retryProcess = new RetryProcessor();

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.apache.camel.builder.RouteBuilder#configure()
	 */
	@Override
	public void configure() throws Exception {

		errorHandler(deadLetterChannel(BridgeUtil.getEndpoint(MessageBusAddress.ERROR.getAddress())));

		from(BridgeUtil.getEndpoint(MessageBusAddress.BATCH_BUS.getAddress())).process(validateBatchRequest).choice()
				.when(header("isValidEid").isEqualTo(true))
				.to(BridgeUtil.getEndpoint(MessageBusAddress.STRUCTURE_BUS_IN.getAddress()))
				.when(header("isValidEid").isEqualTo(false)).to(BridgeUtil.getEndpoint(MessageBusAddress.ERROR.getAddress()));

		from(BridgeUtil.getEndpoint(MessageBusAddress.STRUCTURE_BUS_OUT.getAddress())).process(validateStructure).choice()
				.when(header("hasValidStructure").isEqualTo(true))
				.to(BridgeUtil.getEndpoint(MessageBusAddress.DEMOGRAPHIC_BUS_IN.getAddress()))
				.when(header("hasValidStructure").isEqualTo(false)).to(BridgeUtil.getEndpoint(MessageBusAddress.ERROR.getAddress()));

		from(BridgeUtil.getEndpoint(MessageBusAddress.DEMOGRAPHIC_BUS_OUT.getAddress())).process(validateDemographic).choice()
				.when(header("hasValidDemographic").isEqualTo(true))
				.to(BridgeUtil.getEndpoint(MessageBusAddress.BIOMETRIC_BUS_IN.getAddress()))
				.when(header("hasValidDemographic").isEqualTo(false))
				.to(BridgeUtil.getEndpoint(MessageBusAddress.ERROR.getAddress()));

		from(BridgeUtil.getEndpoint(MessageBusAddress.BIOMETRIC_BUS_OUT.getAddress())).process(validateBiometric).choice()
				.when(header("hasValidBiometric").isEqualTo(true)).to(BridgeUtil.getEndpoint(MessageBusAddress.ERROR.getAddress()))
				.when(header("hasValidBiometric").isEqualTo(false)).to(BridgeUtil.getEndpoint(MessageBusAddress.ERROR.getAddress()));

		from(BridgeUtil.getEndpoint(MessageBusAddress.RETRY_BUS.getAddress())).process(retryProcess).choice()
				.when(header("packetStatus").isEqualTo(StatusCodes.FOR_STRUCTURE_VALIDATION.toString()))
				.to(BridgeUtil.getEndpoint(MessageBusAddress.STRUCTURE_BUS_IN.getAddress()))
				.when(header("packetStatus").isEqualTo(StatusCodes.FOR_DEMOGRAPHIC_VALIDATION.toString()))
				.to(BridgeUtil.getEndpoint(MessageBusAddress.DEMOGRAPHIC_BUS_IN.getAddress()))
				.when(header("packetStatus").isEqualTo(StatusCodes.FOR_BIOMETRIC_VALIDATION.toString()))
				.to(BridgeUtil.getEndpoint(MessageBusAddress.BIOMETRIC_BUS_IN.getAddress()));

	}

}
