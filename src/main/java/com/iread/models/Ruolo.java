package com.iread.models;


import javax.persistence.*;

@Entity
@Table(name = "ruolo_tabella")
public class Ruolo {

    @Id
    @GeneratedValue
    @Column(name = "ruolo_id")
    private long ruoloId;
    @Column(name = "ruolo_nome")
    private String ruoloNome;

    public long getRuoloId() {
        return ruoloId;
    }

    public void setRuoloId(long ruoloId) {
        this.ruoloId = ruoloId;
    }

    public String getRuoloNome() {
        return ruoloNome;
    }

    public void setRuoloNome(String ruoloNome) {
        this.ruoloNome = ruoloNome;
    }
}
