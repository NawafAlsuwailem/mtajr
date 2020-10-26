package com.mtajr.entity;

import lombok.*;
import org.springframework.context.annotation.Lazy;

import javax.persistence.*;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table()
public class Store {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column()
    private int id;

    @Column()
    private String name;

    @Column()
    private String name_eng;

    @Column()
    private String url;

    @Column()
    private String type;

    @Lob
    @Basic(fetch = FetchType.LAZY)
    @Column()
    @Lazy
    private byte[] image;
}
