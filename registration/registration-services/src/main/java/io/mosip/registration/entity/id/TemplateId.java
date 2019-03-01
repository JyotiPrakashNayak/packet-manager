package io.mosip.registration.entity.id;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * TemplateId entity details
 * 
 * @author Sreekar Chukka
 * @since 1.0.0
 */
@Embeddable
public class TemplateId implements Serializable {

	private static final long serialVersionUID = -7306845601917592413L;

	@Column(name = "id")
	private String id;

	@Column(name = "lang_code")
	private String langCode;

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the langCode
	 */
	public String getLangCode() {
		return langCode;
	}

	/**
	 * @param langCode the langCode to set
	 */
	public void setLangCode(String langCode) {
		this.langCode = langCode;
	}

}
