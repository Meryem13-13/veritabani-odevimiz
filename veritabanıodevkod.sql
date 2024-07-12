-- 	create table il(
-- 		il_id integer primary key not null,
-- 		il varchar(5)

-- 	)
-- 	create table belediye(
-- 		belediye_id integer primary key not null,
-- 		belediye_adi varchar(140) not null,
-- 		adres varchar(150),
-- 		yetkili_adsoyad varchar(50),
-- 		yetkili_telefon char(10),
-- 		yetkili_nail varchar(25),
-- 		x_koordinat varchar(50),
-- 		y_koordinat varchar(50),
-- 		il_id integer  references il(il_id)
-- 	)
--  create table kisiler(
--  	kisi_id integer primary key not null,
--  	kisi_adi varchar(25),
--  	kisi_soyad varchar(25),
--  	cinsiyet char(1) check(cinsiyet='E' or cinsiyet='K'),
--  	dogum_tarihi date ,
--  	fotograf varchar(130)
--  )
-- create table vasita_tur(
-- 	vtur_id integer primary key not null,
-- 	vtur varchar(75)
-- )
--  create table vasita (
--  	vasita_id integer primary key not null,
--  	plaka varchar(15) unique not null,
--  	marka varchar (50),
-- 	model varchar(50),
-- 	kapasite smallint default 0,
-- 	is_aktif integer,
-- 	is_arzali integer,
-- 	belediye_id integer references belediye (belediye_id),
-- 	vtur_id integer references vasita_tur (vtur_id)
	

--  )
-- create table surucu(
-- 	belediye_id integer references belediye (belediye_id),
-- 	sicil_no varchar(100) unique 
-- )INHERITS (kisiler);

-- create table surucuvasita(
-- 	sv_id integer primary key ,
-- 	kisi_id integer references kisiler(kisi_id),
-- 	vasita_id integer references vasita(vasita_id),
-- 	baslama_tarihi date,
-- 	bitis_tarihi date
-- )

-- create table vardiye (
-- 	vardiye_id integer primary key not null,
-- 	vardiye_tur char(1) check (vardiye_tur='S' or vardiye_tur='A'),
-- 	tarih date,
-- 	vbaslangıc_saat time,
-- 	vbitis_saat time

-- )

-- create table surucuvardiye(
-- 	svar_id integer primary key not null,
-- 	telefon char(10),
-- 	mail varchar(100),
-- 	adres varchar(130),
-- 	kisi_id integer unique references kisiler(kisi_id)
-- )
-- create table sikayet(
-- 	sikayet_id integer primary key not null,
-- 	olay_tarih date,
-- 	konu varchar(150),
-- 	icerik varchar (150),
-- 	adsoyad varchar(35),
-- 	telefon char(10),
-- 	mail varchar(100),
-- 	kisi_id integer references kisiler(kisi_id)
-- )
-- create table hat(
--  hat_id integer primary key not null,
-- 	hat_kodu varchar(7) unique not null,
-- 	hat varchar(50)
-- )

-- create table vasitahat(
--  vasitahat_id integer primary key not null,
-- 	vasita_id integer references vasita(vasita_id),
-- 	hat_id integer references hat(hat_id),
-- 	baslama_tarihi date,
-- 	bitis_tarih date
-- )
 
--  create table hareket(
-- 	 hareket_id integer primary key not null,
-- 	 tarih date,
-- 	 kakkis_saat time,
-- 	 vasitahat_id integer references vasitahat(vasitahat_id)
--  )
 
--  create table mahalle(
-- 	 mahalle_id integer primary key not null,
-- 	 mahalle_adi varchar(100),
-- 	 il_id integer references il(il_id)
--  )

-- create table durak(
--  durak_id integer primary key not null,
-- 	durak_kodu varchar(6) unique not null,
-- 	duark_adi varchar(50),
-- 	mahalle_id integer references mahalle (mahalle_id)
	
	
	
-- )

-- create table guzergah(
-- 	guzergah_id integer primary key not null,
-- 	durak_id integer references durak(durak_id),
--     hat_id integer references hat(hat_id)
-- )

-- create table kart_tur(
-- 	ktur_id integer primary key not null,
-- 	kart_tur varchar(30),
-- 	indirim float
	
-- )

-- create table kart(
--     kart_id integer primary key not null,
-- 	kartno varchar(15) unique not null,
-- 	bakiye float,
-- 	sonkt date,
-- 	is_aktis bit,
-- 	ktur_id integer references kart_tur(ktur_id)
	
-- )

-- create table yolcu(
-- 	kart_id integer references kart(kart_id)
    
-- )INHERITS (kisiler);

-- create table yolcuvasita(
--     yv_id integer primary key not null,
-- 	kisi_id integer references kisiler(kisi_id),
-- 	vasita_id integer references vasita(vasita_id),
-- 	ucret money
-- )

-- create table dolum_merkezi(
--     dmerkez_id integer primary key  not null,
-- 	merkez_adi varchar(200),
-- 	yetkili_adsoyad varchar(35),
-- 	yetkili_telefon varchar(10),
-- 	x_koordinat varchar(20),
-- 	y_koordinat varchar(20),
-- 	mahalle_id integer references mahalle(mahalle_id)
-- )

-- create table dolum(
--     dolum_id integer primary key not null,
-- 	fis_no varchar(30),
-- 	miktar money,
-- 	kart_id integer references kart(kart_id),
-- 	dmerkez_id integer references dolum_merkezi(dmerkez_id)
	
-- )