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
	
	factory ArticleModel.fromJson(Map<String, dynamic> json) {
		return ArticleModel(
			title: json['title'],
			author: json['author'],
			description: json['description'],
			urlToImage: json['urlToImage'],
			url: json['url'],
			content: json['content'],
			publishedAt: json['publishedAt']
		);
	}
}
