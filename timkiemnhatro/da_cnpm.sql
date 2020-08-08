/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : da_cnpm

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 26/07/2020 17:09:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chiphish
-- ----------------------------
DROP TABLE IF EXISTS `chiphish`;
CREATE TABLE `chiphish`  (
  `MaCP` int NOT NULL AUTO_INCREMENT,
  `TenCP` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DonGia` int NOT NULL,
  `MaNT` int NOT NULL,
  PRIMARY KEY (`MaCP`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for datphong
-- ----------------------------
DROP TABLE IF EXISTS `datphong`;
CREATE TABLE `datphong`  (
  `MaDP` int NOT NULL AUTO_INCREMENT,
  `TenNguoiDat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SDT` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GhiChu` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MaNT` int NOT NULL,
  `NgayDat` date NOT NULL,
  PRIMARY KEY (`MaDP`) USING BTREE,
  INDEX `MaNT`(`MaNT`) USING BTREE,
  CONSTRAINT `datphong_ibfk_1` FOREIGN KEY (`MaNT`) REFERENCES `nhatro` (`MaNT`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dien
-- ----------------------------
DROP TABLE IF EXISTS `dien`;
CREATE TABLE `dien`  (
  `MaDien` int NOT NULL AUTO_INCREMENT,
  `MaPhong` int NOT NULL,
  `Thang` int NOT NULL,
  `Nam` int NOT NULL,
  `ChiSoCu` int NULL DEFAULT NULL,
  `ChiSoMoi` int NULL DEFAULT NULL,
  PRIMARY KEY (`MaDien`, `MaPhong`, `Thang`, `Nam`) USING BTREE,
  INDEX `phong`(`MaPhong`) USING BTREE,
  CONSTRAINT `dien_ibfk_1` FOREIGN KEY (`MaPhong`) REFERENCES `phongtro` (`MaPhong`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for district
-- ----------------------------
DROP TABLE IF EXISTS `district`;
CREATE TABLE `district`  (
  `districtid` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `provinceid` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`districtid`) USING BTREE,
  INDEX `provinceid`(`provinceid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hoadon
-- ----------------------------
DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE `hoadon`  (
  `MaHD` int NOT NULL AUTO_INCREMENT,
  `MaPhong` int NOT NULL,
  `NgayLap` date NOT NULL,
  `TongTien` int NULL DEFAULT NULL,
  `DaTra` int NULL DEFAULT NULL,
  `No` int NULL DEFAULT NULL,
  `ConLai` int NULL DEFAULT NULL,
  `NgayTra` date NULL DEFAULT NULL,
  PRIMARY KEY (`MaHD`, `MaPhong`, `NgayLap`) USING BTREE,
  INDEX `phong`(`MaPhong`) USING BTREE,
  CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaPhong`) REFERENCES `phongtro` (`MaPhong`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for loaiphong
-- ----------------------------
DROP TABLE IF EXISTS `loaiphong`;
CREATE TABLE `loaiphong`  (
  `MaLoaiPhong` int NOT NULL AUTO_INCREMENT,
  `TenLoaiPhong` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GiaPhong` int NOT NULL,
  `MaNT` int NOT NULL,
  PRIMARY KEY (`MaLoaiPhong`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for nhatro
-- ----------------------------
DROP TABLE IF EXISTS `nhatro`;
CREATE TABLE `nhatro`  (
  `MaNT` int NOT NULL AUTO_INCREMENT,
  `TenNT` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Password` varchar(30) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `DiaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SDT` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `SoLuongPhong` int NULL DEFAULT NULL,
  `TinhThanh` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `QuanHuyen` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ViDo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `KinhDo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DienTich` int NULL DEFAULT NULL,
  `HinhAnh` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MoTa` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MaNT`) USING BTREE,
  UNIQUE INDEX `Username`(`Username`) USING BTREE,
  UNIQUE INDEX `SDT`(`SDT`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for nuoc
-- ----------------------------
DROP TABLE IF EXISTS `nuoc`;
CREATE TABLE `nuoc`  (
  `MaNuoc` int NOT NULL AUTO_INCREMENT,
  `MaPhong` int NOT NULL,
  `Thang` int NOT NULL,
  `Nam` int NOT NULL,
  `ChiSoCu` int NULL DEFAULT NULL,
  `ChiSoMoi` int NULL DEFAULT NULL,
  PRIMARY KEY (`MaNuoc`, `MaPhong`, `Thang`, `Nam`) USING BTREE,
  INDEX `phong`(`MaPhong`) USING BTREE,
  CONSTRAINT `nuoc_ibfk_1` FOREIGN KEY (`MaPhong`) REFERENCES `phongtro` (`MaPhong`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for phongtro
-- ----------------------------
DROP TABLE IF EXISTS `phongtro`;
CREATE TABLE `phongtro`  (
  `MaPhong` int NOT NULL AUTO_INCREMENT,
  `NgayThue` date NULL DEFAULT NULL,
  `TinhTrang` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DuDinhTra` date NULL DEFAULT NULL,
  `MaLoaiPhong` int NOT NULL,
  `MaNT` int NOT NULL,
  `GhiChu` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MaPhong`) USING BTREE,
  INDEX `loaiphong`(`MaLoaiPhong`) USING BTREE,
  INDEX `nhatro`(`MaNT`) USING BTREE,
  CONSTRAINT `phongtro_ibfk_1` FOREIGN KEY (`MaLoaiPhong`) REFERENCES `loaiphong` (`MaLoaiPhong`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `phongtro_ibfk_2` FOREIGN KEY (`MaNT`) REFERENCES `nhatro` (`MaNT`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `provinceid` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`provinceid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for thanhvien
-- ----------------------------
DROP TABLE IF EXISTS `thanhvien`;
CREATE TABLE `thanhvien`  (
  `MaTV` int NOT NULL AUTO_INCREMENT,
  `TenTV` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Sdt` bigint NULL DEFAULT NULL,
  `CMND` int NULL DEFAULT NULL,
  `GioiTinh` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TinhTrang` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `MaPhong` int NOT NULL,
  `ChucVu` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NgayThue` date NULL DEFAULT NULL,
  `NgayTra` date NULL DEFAULT NULL,
  PRIMARY KEY (`MaTV`) USING BTREE,
  INDEX `phongtro`(`MaPhong`) USING BTREE,
  CONSTRAINT `thanhvien_ibfk_1` FOREIGN KEY (`MaPhong`) REFERENCES `phongtro` (`MaPhong`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
