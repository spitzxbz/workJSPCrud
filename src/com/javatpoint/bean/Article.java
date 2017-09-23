package com.javatpoint.bean;

public class Article 
{
	    private int idArticle ;
	    private String libelle ;
	    private String desc ;
	    private double prix ; 
	    private String category;
	    private String img ;
	    private int qte ;

	    public Article()
	    {
	    }
	    //需傳入4個形參產品名稱,描述,價格,圖片,數量
	    public Article(String libelle, String desc, double prix, String category, int qte, String img)
	    {
	        this.libelle = libelle;
	        this.desc = desc;
	        this.prix = prix;
	        this.category = category;
	        this.img = img;
	        this.qte = qte;
	    }

	    
	    
	    //需傳入7個形參:編號,產品名稱,描述,價格,圖片,數量
	    public Article(int idArticle, String libelle, String desc, double prix, String category, int qte, String img)
	    {
	        this.idArticle = idArticle;
	        this.libelle = libelle;
	        this.desc = desc;
	        this.prix = prix;
	        this.category = category;
	        this.img = img;
	        this.qte = qte;
	    }

	    
	    public int getIdArticle()
	    {
	        return idArticle;
	    }
	    public String getLibelle()
	    {
	        return libelle;
	    }
	    public String getDesc()
	    {
	        return desc;
	    }
	    public double getPrix()
	    {
	        return prix;
	    }
	    public String getCate()
	    {
	    	return category;
	    }
	    public String getImg()
	    {
	        return img;
	    }
	    public int getQte()
	    {
	        return qte;
	    }
	    public void setIdArticle(int idArticle)
	    {
	        this.idArticle = idArticle;
	    }
	    public void setLibelle(String libelle)
	    {
	        this.libelle = libelle;
	    }
	    public void setDesc(String desc)
	    {
	        this.desc = desc;
	    }
	    public void setPrix(double prix)
	    {
	        this.prix = prix;
	    }
	    public void setCate(String category)
	    {
	    	this.category = category;
	    }
	    public void setImg(String img)
	    {
	        this.img = img;
	    }
	    public void setQte(int qte)
	    {
	        this.qte = qte;
	    }
	    //覆寫java原生方法 toString() 並回傳格式化產品字串
	    @Override
	    public String toString()
	    {
	        return "Article{" + "idArticle=" + idArticle + ", libelle=" + libelle + ", desc=" + desc + ", prix=" + prix + ", img=" + img + ", qte=" + qte + " }";
	    }
}
