package com.atelier1.controller;

import java.util.ArrayList;
import java.util.List;

import com.atelier1.model.CardBean;

public class CardDao {
	private List<CardBean> myCardList;
	
	public CardDao() {
		myCardList = new ArrayList<>();
		createCardList();
	}	
	
	
	/**
	 * Créer une liste de card
	 */
	private void createCardList() {
		
		CardBean c1 = new CardBean("Mon nom", "Ma description", "https://blog.devidia.net/wp-content/uploads/2017/11/safe_image.gif", "Ma famille", "Mon affinité", 50, 50, 50, 50);

		myCardList.add(c1);
	}
	
	/**
	 * Ajouter une nouvelle card
	 * 
	 * @param name
	 * @param description
	 * @param imgUrl
	 * @param family
	 * @param affinity
	 * @param hp
	 * @param energy
	 * @param attack
	 * @param defence
	 * @return
	 */
	public CardBean addCard(String name, String description, String imgUrl, String family, String affinity, int hp, int energy,
			int attack, int defence) {
		CardBean card = new CardBean(name, description, imgUrl, family, affinity, hp, energy, attack, defence);
		myCardList.add(card);
		
		return card;
	}

}
