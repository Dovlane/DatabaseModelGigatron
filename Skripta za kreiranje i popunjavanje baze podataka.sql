/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     3/30/2024 6:01:51 PM                         */
/*==============================================================*/




/*==============================================================*/
/* Table: BRENDOVI                                              */
/*==============================================================*/
create table BRENDOVI
(
   BREND_ID             int not null  comment '',
   NAZIV                varchar(60) not null  comment '',
   OPIS                 varchar(120)  comment '',
   primary key (BREND_ID)
);

/*==============================================================*/
/* Table: GARANCIJE                                             */
/*==============================================================*/
create table GARANCIJE
(
   GARANCIJA_ID         int not null  comment '',
   DANI_POD_GARANCIJOM  int not null  comment '',
   USLOVI_GARANCIJE     varchar(240)  comment '',
   DATUM_OBJAVE         date not null  comment '',
   DATUM_UKIDANJA_UGOVORA date  comment '',
   primary key (GARANCIJA_ID)
);

/*==============================================================*/
/* Table: KATEGORIJE                                            */
/*==============================================================*/
create table KATEGORIJE
(
   KATEGORIJA_ID        int not null  comment '',
   NAZIV                varchar(20) not null  comment '',
   primary key (KATEGORIJA_ID)
);

/*==============================================================*/
/* Table: KORPE                                                 */
/*==============================================================*/
create table KORPE
(
   KUPAC_ID             int not null  comment '',
   KUPOVINA_ID          int  comment '',
   DATUM_NASTANKA       datetime not null  comment '',
   primary key (KUPAC_ID, DATUM_NASTANKA)
);

/*==============================================================*/
/* Table: KUPCI                                                 */
/*==============================================================*/
create table KUPCI
(
   KUPAC_ID             int not null  comment '',
   IME                  varchar(20) not null  comment '',
   PREZIME              varchar(20) not null  comment '',
   MAIL                 varchar(20) not null  comment '',
   BR_TELEFONA          varchar(20)  comment '',
   DATUM_REGISTRACIJE   date not null  comment '',
   primary key (KUPAC_ID)
);

/*==============================================================*/
/* Table: KUPOVINE                                              */
/*==============================================================*/
create table KUPOVINE
(
   KUPOVINA_ID          int not null  comment '',
   DATUM_I_VREME_OBAVLJANJA datetime not null  comment '',
   IZNOS                float(20) not null  comment '',
   BROJ_RACUNA          int not null  comment '',
   METOD_PLACANJA       varchar(20)  comment '',
   primary key (KUPOVINA_ID)
);

/*==============================================================*/
/* Table: KUPOVINE_UZIVO                                        */
/*==============================================================*/
create table KUPOVINE_UZIVO
(
   KUPOVINA_ID          int not null  comment '',
   DATUM_I_VREME_OBAVLJANJA datetime not null  comment '',
   IZNOS                float(20) not null  comment '',
   BROJ_RACUNA          int not null  comment '',
   METOD_PLACANJA       varchar(20)  comment '',
   KUPAC_ID             int not null  comment '',
   ZAPOSLENI_ID         int not null  comment '',
   primary key (KUPOVINA_ID)
);

/*==============================================================*/
/* Table: MENADZERI_PRODAVNICA                                  */
/*==============================================================*/
create table MENADZERI_PRODAVNICA
(
   ZAPOSLENI_ID         int not null  comment '',
   IME                  varchar(20) not null  comment '',
   PREZIME              varchar(20) not null  comment '',
   BROJ_TELEFONA        int not null  comment '',
   EMAIL                varchar(20) not null  comment '',
   PRODAVNICA_ID        int not null  comment '',
   primary key (ZAPOSLENI_ID)
);

/*==============================================================*/
/* Table: ONLAJN_NARUDZBINE                                     */
/*==============================================================*/
create table ONLAJN_NARUDZBINE
(
   KUPOVINA_ID          int not null  comment '',
   IZNOS                float(20) not null  comment '',
   BROJ_RACUNA          int not null  comment '',
   METOD_PLACANJA       varchar(20)  comment '',
   ZAPOSLENI_ID         int not null  comment '',
   DATUM_I_VREME_OBAVLJANJA datetime not null  comment '',
   DRZAVA               varchar(20) not null  comment '',
   GRAD                 varchar(20) not null  comment '',
   ADRESA               varchar(20) not null  comment '',
   DATUM_VREME_ISPORUKE datetime not null  comment '',
   primary key (KUPOVINA_ID)
);

/*==============================================================*/
/* Table: POPUSTI                                               */
/*==============================================================*/
create table POPUSTI
(
   POPUST_ID            int not null  comment '',
   PROCENAT_SNIZENJA    float(2) not null  comment '',
   DATUM_POCETKA        date not null  comment '',
   DATUM_ISTEKA         date  comment '',
   primary key (POPUST_ID)
);

/*==============================================================*/
/* Table: PRODAVCI                                              */
/*==============================================================*/
create table PRODAVCI
(
   ZAPOSLENI_ID         int not null  comment '',
   MEN_ZAPOSLENI_ID     int not null  comment '',
   PRODAVNICA_ID        int not null  comment '',
   IME                  varchar(20) not null  comment '',
   PREZIME              varchar(20) not null  comment '',
   BROJ_TELEFONA        int not null  comment '',
   EMAIL                varchar(20) not null  comment '',
   primary key (ZAPOSLENI_ID)
);

/*==============================================================*/
/* Table: PRODAVNICE                                            */
/*==============================================================*/
create table PRODAVNICE
(
   PRODAVNICA_ID        int not null  comment '',
   ADRESA               varchar(20) not null  comment '',
   BROJ_TELEFONA        varchar(20) not null  comment '',
   primary key (PRODAVNICA_ID)
);

/*==============================================================*/
/* Table: PROIZVODI                                             */
/*==============================================================*/
create table PROIZVODI
(
   PROIZVOD_ID          int not null  comment '',
   POPUST_ID            int  comment '',
   KATEGORIJA_ID        int not null  comment '',
   GARANCIJA_ID         int  comment '',
   BREND_ID             int not null  comment '',
   CENA                 float not null  comment '',
   BREND                varchar(20) not null  comment '',
   OPIS                 varchar(240)  comment '',
   BARKOD               varchar(80) not null  comment '',
   primary key (PROIZVOD_ID)
);

/*==============================================================*/
/* Table: RECENZIJE                                             */
/*==============================================================*/
create table RECENZIJE
(
   PROIZVOD_ID          int not null  comment '',
   KUPAC_ID             int not null  comment '',
   DATUM_VREME_OCENE    datetime not null  comment '',
   OCENA                int not null  comment '',
   primary key (PROIZVOD_ID, KUPAC_ID, DATUM_VREME_OCENE)
);

/*==============================================================*/
/* Table: REKLAMACIJE                                           */
/*==============================================================*/
create table REKLAMACIJE
(
   KUPOVINA_ID          int not null  comment '',
   KUPAC_ID             int not null  comment '',
   DATUM_REKLAMACIJE    date not null  comment '',
   SERVISER_ID          int not null  comment '',
   STATUS               varchar(20) not null  comment '',
   OPIS                 varchar(120)  comment '',
   primary key (KUPOVINA_ID, KUPAC_ID, DATUM_REKLAMACIJE)
);

/*==============================================================*/
/* Table: SERVISERI                                             */
/*==============================================================*/
create table SERVISERI
(
   SERVISER_ID          int not null  comment '',
   BROJ_TELEFONA        varchar(20) not null  comment '',
   IME                  varchar(20) not null  comment '',
   PREZIME              varchar(20) not null  comment '',
   primary key (SERVISER_ID)
);

/*==============================================================*/
/* Table: STAVKE_PRODAVNICE                                     */
/*==============================================================*/
create table STAVKE_PRODAVNICE
(
   PROIZVOD_ID          int not null  comment '',
   REDNI_BROJ_STAVKE    int not null  comment '',
   PRODAVNICA_ID        int not null  comment '',
   DATUM_ISTEKA_GARANCIJE date  comment '',
   primary key (PROIZVOD_ID, REDNI_BROJ_STAVKE)
);

/*==============================================================*/
/* Table: VOZACI                                                */
/*==============================================================*/
create table VOZACI
(
   ZAPOSLENI_ID         int not null  comment '',
   PRODAVNICA_ID        int not null  comment '',
   IME                  varchar(20) not null  comment '',
   PREZIME              varchar(20) not null  comment '',
   BROJ_TELEFONA        int not null  comment '',
   EMAIL                varchar(20) not null  comment '',
   primary key (ZAPOSLENI_ID)
);

/*==============================================================*/
/* Table: VOZILA                                                */
/*==============================================================*/
create table VOZILA
(
   VOZILO_ID            int not null  comment '',
   ZAPOSLENI_ID         int  comment '',
   NAZIV                varchar(20) not null  comment '',
   VELICINA             varchar(20) not null  comment '',
   primary key (VOZILO_ID)
);

/*==============================================================*/
/* Table: ZAPOSLENI                                             */
/*==============================================================*/
create table ZAPOSLENI
(
   ZAPOSLENI_ID         int not null  comment '',
   PRODAVNICA_ID        int not null  comment '',
   IME                  varchar(20) not null  comment '',
   PREZIME              varchar(20) not null  comment '',
   BROJ_TELEFONA        int not null  comment '',
   EMAIL                varchar(20) not null  comment '',
   primary key (ZAPOSLENI_ID)
);

alter table KORPE add constraint FK_KORPE_KORPA_NAR_ONLAJN_N foreign key (KUPOVINA_ID)
      references ONLAJN_NARUDZBINE (KUPOVINA_ID) on delete restrict on update restrict;

alter table KORPE add constraint FK_KORPE_KUPAC_KOR_KUPCI foreign key (KUPAC_ID)
      references KUPCI (KUPAC_ID) on delete restrict on update restrict;

alter table KUPOVINE_UZIVO add constraint FK_KUPOVINE_EXTENDS_KUPOVINE foreign key (KUPOVINA_ID)
      references KUPOVINE (KUPOVINA_ID) on delete restrict on update restrict;

alter table KUPOVINE_UZIVO add constraint FK_KUPOVINE_KUPAC_KUP_KUPCI foreign key (KUPAC_ID)
      references KUPCI (KUPAC_ID) on delete restrict on update restrict;

alter table KUPOVINE_UZIVO add constraint FK_KUPOVINE_PRODAVAC__PRODAVCI foreign key (ZAPOSLENI_ID)
      references PRODAVCI (ZAPOSLENI_ID) on delete restrict on update restrict;

alter table MENADZERI_PRODAVNICA add constraint FK_MENADZER_NASLEDJUJ_ZAPOSLEN foreign key (ZAPOSLENI_ID)
      references ZAPOSLENI (ZAPOSLENI_ID) on delete restrict on update restrict;

alter table ONLAJN_NARUDZBINE add constraint FK_ONLAJN_N_EXTENDS2_KUPOVINE foreign key (KUPOVINA_ID)
      references KUPOVINE (KUPOVINA_ID) on delete restrict on update restrict;

alter table ONLAJN_NARUDZBINE add constraint FK_ONLAJN_N_VOZAC_ONL_VOZACI foreign key (ZAPOSLENI_ID)
      references VOZACI (ZAPOSLENI_ID) on delete restrict on update restrict;

alter table PRODAVCI add constraint FK_PRODAVCI_MENADZER__MENADZER foreign key (MEN_ZAPOSLENI_ID)
      references MENADZERI_PRODAVNICA (ZAPOSLENI_ID) on delete restrict on update restrict;

alter table PRODAVCI add constraint FK_PRODAVCI_NASLEDJUJ_ZAPOSLEN foreign key (ZAPOSLENI_ID)
      references ZAPOSLENI (ZAPOSLENI_ID) on delete restrict on update restrict;

alter table PROIZVODI add constraint FK_PROIZVOD_BREND_PRO_BRENDOVI foreign key (BREND_ID)
      references BRENDOVI (BREND_ID) on delete restrict on update restrict;

alter table PROIZVODI add constraint FK_PROIZVOD_GARANCIJA_GARANCIJ foreign key (GARANCIJA_ID)
      references GARANCIJE (GARANCIJA_ID) on delete restrict on update restrict;

alter table PROIZVODI add constraint FK_PROIZVOD_KATEGORIJ_KATEGORI foreign key (KATEGORIJA_ID)
      references KATEGORIJE (KATEGORIJA_ID) on delete restrict on update restrict;

alter table PROIZVODI add constraint FK_PROIZVOD_POPUST_PR_POPUSTI foreign key (POPUST_ID)
      references POPUSTI (POPUST_ID) on delete restrict on update restrict;

alter table RECENZIJE add constraint FK_RECENZIJ_KUPAC_REC_KUPCI foreign key (KUPAC_ID)
      references KUPCI (KUPAC_ID) on delete restrict on update restrict;

alter table RECENZIJE add constraint FK_RECENZIJ_PROIZVOD__PROIZVOD foreign key (PROIZVOD_ID)
      references PROIZVODI (PROIZVOD_ID) on delete restrict on update restrict;

alter table REKLAMACIJE add constraint FK_REKLAMAC_KUPAC_REK_KUPCI foreign key (KUPAC_ID)
      references KUPCI (KUPAC_ID) on delete restrict on update restrict;

alter table REKLAMACIJE add constraint FK_REKLAMAC_REKLAMACI_KUPOVINE foreign key (KUPOVINA_ID)
      references KUPOVINE (KUPOVINA_ID) on delete restrict on update restrict;

alter table REKLAMACIJE add constraint FK_REKLAMAC_SERVISER__SERVISER foreign key (SERVISER_ID)
      references SERVISERI (SERVISER_ID) on delete restrict on update restrict;

alter table STAVKE_PRODAVNICE add constraint FK_STAVKE_P_PRODAVNIC_PRODAVNI foreign key (PRODAVNICA_ID)
      references PRODAVNICE (PRODAVNICA_ID) on delete restrict on update restrict;

alter table STAVKE_PRODAVNICE add constraint FK_STAVKE_P_PROIZVOD__PROIZVOD foreign key (PROIZVOD_ID)
      references PROIZVODI (PROIZVOD_ID) on delete restrict on update restrict;

alter table VOZACI add constraint FK_VOZACI_NASLEDJUJ_ZAPOSLEN foreign key (ZAPOSLENI_ID)
      references ZAPOSLENI (ZAPOSLENI_ID) on delete restrict on update restrict;

alter table VOZILA add constraint FK_VOZILA_VOZILO_VO_VOZACI foreign key (ZAPOSLENI_ID)
      references VOZACI (ZAPOSLENI_ID) on delete restrict on update restrict;

alter table ZAPOSLENI add constraint FK_ZAPOSLEN_PRODAVNIC_PRODAVNI foreign key (PRODAVNICA_ID)
      references PRODAVNICE (PRODAVNICA_ID) on delete restrict on update restrict;

