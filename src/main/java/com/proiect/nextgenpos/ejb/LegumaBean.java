/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package com.proiect.nextgenpos.ejb;

import com.proiect.nextgenpos.common.LegumeDetails;
import com.proiect.nextgenpos.entity.Leguma;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import javax.ejb.EJBException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author adrian
 */
@Stateless
public class LegumaBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    private static final Logger LOG = Logger.getLogger(Leguma.class.getName());

    @PersistenceContext
    private EntityManager em;

    public List<LegumeDetails> getAllLegume() {
        LOG.info("getAllLegume");
        try{
            Query query = em.createQuery("SELECT c FROM Legume c");
            List<Leguma> legume = (List<Leguma>) query.getResultList();
            return copyLegumeToDetails(legume);
        } catch (Exception ex){
            throw new EJBException(ex);
        }
    }
    
     private List<LegumeDetails> copyLegumeToDetails (List<Leguma> legume){
        List<LegumeDetails> detailsList = new ArrayList<>();
        for(Leguma leguma : legume){
            LegumeDetails legumaDetails = new LegumeDetails(leguma.getId(), leguma.getName(), leguma.getPrice());
            detailsList.add(legumaDetails);
        }
        return detailsList;
    }
}
