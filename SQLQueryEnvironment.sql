create database Kampus

create table Prodi(
id_prodi varchar (10) primary key,
nama_prodi varchar (50)
) 

create table Mahasiswa(
nim varchar (20) primary key,
nama_mahasiswa varchar (50),
jenis_kelamin char (1),
alamat varchar (100),
tgl_lahir varchar (10),
id_prodi varchar (10) foreign key references Prodi(id_prodi)
)

create table Status_mahasiswa(
id_status varchar (20) primary key,
nim varchar (20) foreign key references Mahasiswa(nim),
status_mahasiswa varchar (10),
tahun_masuk varchar (10)
)