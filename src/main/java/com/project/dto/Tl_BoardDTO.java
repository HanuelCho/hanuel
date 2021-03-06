package com.project.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Tl_BoardDTO {
   
   private int tl_board_seq;
   private String tl_title;
   private String tl_contents;
   private String tl_writer;
   private Date tl_writedate;
   private String tl_formatdate;
   private int tl_viewcount;
   private int tl_likecount;
   private int likestatus;
   private MultipartFile tl_image;
   private String tl_imgaddr;
   
   public Tl_BoardDTO() {
      super();
   }

   public Tl_BoardDTO(int tl_board_seq, String tl_title, String tl_contents, String tl_writer, Date tl_writedate,
         String tl_formatdate, int tl_viewcount, int tl_likecount, int likestatus, MultipartFile tl_image,
         String tl_imgaddr) {
      super();
      this.tl_board_seq = tl_board_seq;
      this.tl_title = tl_title;
      this.tl_contents = tl_contents;
      this.tl_writer = tl_writer;
      this.tl_writedate = tl_writedate;
      this.tl_formatdate = tl_formatdate;
      this.tl_viewcount = tl_viewcount;
      this.tl_likecount = tl_likecount;
      this.likestatus = likestatus;
      this.tl_image = tl_image;
      this.tl_imgaddr = tl_imgaddr;
   }

   public int getTl_board_seq() {
      return tl_board_seq;
   }

   public void setTl_board_seq(int tl_board_seq) {
      this.tl_board_seq = tl_board_seq;
   }

   public String getTl_title() {
      return tl_title;
   }

   public void setTl_title(String tl_title) {
      this.tl_title = tl_title;
   }

   public String getTl_contents() {
      return tl_contents;
   }

   public void setTl_contents(String tl_contents) {
      this.tl_contents = tl_contents;
   }

   public String getTl_writer() {
      return tl_writer;
   }

   public void setTl_writer(String tl_writer) {
      this.tl_writer = tl_writer;
   }

   public Date getTl_writedate() {
      return tl_writedate;
   }

   public void setTl_writedate(Date tl_writedate) {
      this.tl_writedate = tl_writedate;
   }

   public String getTl_formatdate() {
      return tl_formatdate;
   }

   public void setTl_formatdate(String tl_formatdate) {
      this.tl_formatdate = tl_formatdate;
   }

   public int getTl_viewcount() {
      return tl_viewcount;
   }

   public void setTl_viewcount(int tl_viewcount) {
      this.tl_viewcount = tl_viewcount;
   }

   public int getTl_likecount() {
      return tl_likecount;
   }

   public void setTl_likecount(int tl_likecount) {
      this.tl_likecount = tl_likecount;
   }

   public int getLikestatus() {
      return likestatus;
   }

   public void setLikestatus(int likestatus) {
      this.likestatus = likestatus;
   }

   public MultipartFile getTl_image() {
      return tl_image;
   }

   public void setTl_image(MultipartFile tl_image) {
      this.tl_image = tl_image;
   }

   public String getTl_imgaddr() {
      return tl_imgaddr;
   }

   public void setTl_imgaddr(String tl_imgaddr) {
      this.tl_imgaddr = tl_imgaddr;
   }

   
   

   
   
   
   
   
   
}