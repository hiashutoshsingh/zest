class CityListResponse {
  List<CityItem> cityList;

  CityListResponse({
    this.cityList,
  });
}

class CityItem {
  String sId;
  String cityName;
  String publishedAt;
  CityImage cityImage;
  String createdAt;
  String updatedAt;
  int iV;
  String id;

  CityItem({this.sId, this.cityName, this.publishedAt, this.cityImage, this.createdAt, this.updatedAt, this.iV, this.id});

  CityItem.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    cityName = json['cityName'];
    publishedAt = json['published_at'];
    cityImage = json['cityImage'] != null ? CityImage.fromJson(json['cityImage']) : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['cityName'] = cityName;
    data['published_at'] = publishedAt;
    if (cityImage != null) {
      data['cityImage'] = cityImage.toJson();
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    data['id'] = id;
    return data;
  }
}

class CityImage {
  String sId;
  String alt;
  int iV;
  ImageItem image;
  String id;

  CityImage({this.sId, this.alt, this.iV, this.image, this.id});

  CityImage.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    alt = json['alt'];
    iV = json['__v'];
    image = json['image'] != null ? ImageItem.fromJson(json['image']) : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['alt'] = alt;
    data['__v'] = iV;
    if (image != null) {
      data['image'] = image.toJson();
    }
    data['id'] = id;
    return data;
  }
}

class ImageItem {
  String sId;
  String name;
  String alternativeText;
  String caption;
  String hash;
  String ext;
  String mime;
  double size;
  int width;
  int height;
  String url;
  Formats formats;
  String provider;
  List<String> related;
  String createdAt;
  String updatedAt;
  int iV;
  String id;

  ImageItem(
      {this.sId,
      this.name,
      this.alternativeText,
      this.caption,
      this.hash,
      this.ext,
      this.mime,
      this.size,
      this.width,
      this.height,
      this.url,
      this.formats,
      this.provider,
      this.related,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.id});

  ImageItem.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    alternativeText = json['alternativeText'];
    caption = json['caption'];
    hash = json['hash'];
    ext = json['ext'];
    mime = json['mime'];
    size = json['size'];
    width = json['width'];
    height = json['height'];
    url = json['url'];
    formats = json['formats'] != null ? Formats.fromJson(json['formats']) : null;
    provider = json['provider'];
    related = json['related'].cast<String>();
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['alternativeText'] = alternativeText;
    data['caption'] = caption;
    data['hash'] = hash;
    data['ext'] = ext;
    data['mime'] = mime;
    data['size'] = size;
    data['width'] = width;
    data['height'] = height;
    data['url'] = url;
    if (formats != null) {
      data['formats'] = formats.toJson();
    }
    data['provider'] = provider;
    data['related'] = related;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    data['id'] = id;
    return data;
  }
}

class Formats {
  Thumbnail thumbnail;
  Thumbnail large;
  Thumbnail medium;
  Thumbnail small;

  Formats({this.thumbnail, this.large, this.medium, this.small});

  Formats.fromJson(Map<String, dynamic> json) {
    thumbnail = json['thumbnail'] != null ? Thumbnail.fromJson(json['thumbnail']) : null;
    large = json['large'] != null ? Thumbnail.fromJson(json['large']) : null;
    medium = json['medium'] != null ? Thumbnail.fromJson(json['medium']) : null;
    small = json['small'] != null ? Thumbnail.fromJson(json['small']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (thumbnail != null) {
      data['thumbnail'] = thumbnail.toJson();
    }
    if (large != null) {
      data['large'] = large.toJson();
    }
    if (medium != null) {
      data['medium'] = medium.toJson();
    }
    if (small != null) {
      data['small'] = small.toJson();
    }
    return data;
  }
}

class Thumbnail {
  String name;
  String hash;
  String ext;
  String mime;
  int width;
  int height;
  double size;
  Null path;
  String url;

  Thumbnail({this.name, this.hash, this.ext, this.mime, this.width, this.height, this.size, this.path, this.url});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    hash = json['hash'];
    ext = json['ext'];
    mime = json['mime'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
    path = json['path'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['hash'] = hash;
    data['ext'] = ext;
    data['mime'] = mime;
    data['width'] = width;
    data['height'] = height;
    data['size'] = size;
    data['path'] = path;
    data['url'] = url;
    return data;
  }
}
