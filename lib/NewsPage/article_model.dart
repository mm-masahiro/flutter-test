import 'dart:convert';
import 'package:flutter/material.dart';

class ArticleModel {
	
	String title;
	String author;
	String description;
	String url;
	String urlToImage;
	String content;
	DateTime publishedAt;

	ArticleModel({
		this.author,
		this.title,
		this.description,
		this.url,
		this.urlToImage,
		this.publishedAt,
		this.content,
	});
}
