class ActivityListResponse {
  List<ActivityItem> activityList;

  ActivityListResponse({
    this.activityList,
  });
}

class ActivityItem {
  bool isHavingMenu;
  String sId;
  String publishedAt;
  int rank;
  double rating;
  String activityName;
  Location location;
  ActivityImage activityImages;
  String createdAt;
  String updatedAt;
  int iV;
  Category category;
  City city;
  SubCategory subCategory;
  String description;
  String estimatedCost;
  String contact;
  String id;
  List<Timing> timing;
  List<ReviewTags> reviewTags;
  MenuImages menuImages;
  List<KeyFeatures> keyFeatures;

  ActivityItem({
    this.isHavingMenu,
    this.sId,
    this.publishedAt,
    this.rank,
    this.rating,
    this.activityName,
    this.location,
    this.activityImages,
    this.createdAt,
    this.updatedAt,
    this.iV,
    this.category,
    this.city,
    this.subCategory,
    this.description,
    this.estimatedCost,
    this.contact,
    this.id,
    this.timing,
    this.reviewTags,
    this.menuImages,
    this.keyFeatures,
  });

  ActivityItem.fromJson(Map<String, dynamic> json) {
    isHavingMenu = json['isHavingMenu'];
    sId = json['_id'];
    publishedAt = json['published_at'];
    rank = json['rank'];
    rating = json['rating'];
    activityName = json['activityName'];
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    activityImages = json['activityImages'] != null ? ActivityImage.fromJson(json['activityImages']) : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
    city = json['city'] != null ? City.fromJson(json['city']) : null;
    subCategory = json['subCategory'] != null ? SubCategory.fromJson(json['subCategory']) : null;
    description = json['description'];
    estimatedCost = json['estimatedCost'];
    contact = json['contact'];
    id = json['id'];
    if (json['timing'] != null) {
      timing = <Timing>[];
      json['timing'].forEach((v) {
        timing.add(Timing.fromJson(v));
      });
    }
    if (json['reviewTags'] != null) {
      reviewTags = <ReviewTags>[];
      json['reviewTags'].forEach((v) {
        reviewTags.add(ReviewTags.fromJson(v));
      });
    }
    menuImages = json['menuImages'] != null ? MenuImages.fromJson(json['menuImages']) : null;
    if (json['keyFeatures'] != null) {
      keyFeatures = <KeyFeatures>[];
      json['keyFeatures'].forEach((v) {
        keyFeatures.add(KeyFeatures.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isHavingMenu'] = isHavingMenu;
    data['_id'] = sId;
    data['published_at'] = publishedAt;
    data['rank'] = rank;
    data['rating'] = rating;
    data['activityName'] = activityName;
    if (location != null) {
      data['location'] = location.toJson();
    }
    if (activityImages != null) {
      data['activityImages'] = activityImages.toJson();
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    if (category != null) {
      data['category'] = category.toJson();
    }
    if (city != null) {
      data['city'] = city.toJson();
    }
    if (subCategory != null) {
      data['subCategory'] = subCategory.toJson();
    }
    data['description'] = description;
    data['estimatedCost'] = estimatedCost;
    data['contact'] = contact;
    data['id'] = id;
    if (timing != null) {
      data['timing'] = timing.map((v) => v.toJson()).toList();
    }
    if (reviewTags != null) {
      data['reviewTags'] = reviewTags.map((v) => v.toJson()).toList();
    }
    if (menuImages != null) {
      data['menuImages'] = menuImages.toJson();
    }
    if (keyFeatures != null) {
      data['keyFeatures'] = keyFeatures.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class KeyFeatures {
  String sId;
  String value;
  int iV;
  String id;

  KeyFeatures({this.sId, this.value, this.iV, this.id});

  KeyFeatures.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    value = json['value'];
    iV = json['__v'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['value'] = value;
    data['__v'] = iV;
    data['id'] = id;
    return data;
  }
}

class MenuImages {
  List<ActivityImageItem> image;
  String sId;
  String alt;
  int iV;
  String id;

  MenuImages({this.image, this.sId, this.alt, this.iV, this.id});

  MenuImages.fromJson(Map<String, dynamic> json) {
    if (json['image'] != null) {
      image = <ActivityImageItem>[];
      json['image'].forEach((v) {
        image.add(ActivityImageItem.fromJson(v));
      });
    }
    sId = json['_id'];
    alt = json['alt'];
    iV = json['__v'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (image != null) {
      data['image'] = image.map((v) => v.toJson()).toList();
    }
    data['_id'] = sId;
    data['alt'] = alt;
    data['__v'] = iV;
    data['id'] = id;
    return data;
  }
}

class ReviewTags {
  String sId;
  String value;
  int iV;
  String id;

  ReviewTags({this.sId, this.value, this.iV, this.id});

  ReviewTags.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    value = json['value'];
    iV = json['__v'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['value'] = value;
    data['__v'] = iV;
    data['id'] = id;
    return data;
  }
}

class Timing {
  String sId;
  String openingTime;
  String closingTime;
  String day;
  int iV;
  String id;

  Timing({this.sId, this.openingTime, this.closingTime, this.day, this.iV, this.id});

  Timing.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    openingTime = json['openingTime'];
    closingTime = json['closingTime'];
    day = json['day'];
    iV = json['__v'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['openingTime'] = openingTime;
    data['closingTime'] = closingTime;
    data['day'] = day;
    data['__v'] = iV;
    data['id'] = id;
    return data;
  }
}

class Location {
  String sId;
  GeoCoordinates geoCoordinates;
  double latitude;
  double longitude;
  String address;
  int iV;
  String id;

  Location({this.sId, this.geoCoordinates, this.latitude, this.longitude, this.address, this.iV, this.id});

  Location.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    geoCoordinates = json['geoCoordinates'] != null ? GeoCoordinates.fromJson(json['geoCoordinates']) : null;
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    iV = json['__v'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    if (geoCoordinates != null) {
      data['geoCoordinates'] = geoCoordinates.toJson();
    }
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['address'] = address;
    data['__v'] = iV;
    data['id'] = id;
    return data;
  }
}

class GeoCoordinates {
  String type;
  List<double> coordinates;

  GeoCoordinates({this.type, this.coordinates});

  GeoCoordinates.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coordinates = json['coordinates'] != null ? json['coordinates'].cast<double>() : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['coordinates'] = coordinates;
    return data;
  }
}

class ActivityImage {
  List<ActivityImageItem> image;
  String sId;
  String alt;
  int iV;
  String id;

  ActivityImage({this.image, this.sId, this.alt, this.iV, this.id});

  ActivityImage.fromJson(Map<String, dynamic> json) {
    if (json['image'] != null) {
      image = <ActivityImageItem>[];
      json['image'].forEach((v) {
        image.add(ActivityImageItem.fromJson(v));
      });
    }
    sId = json['_id'];
    alt = json['alt'];
    iV = json['__v'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (image != null) {
      data['image'] = image.map((v) => v.toJson()).toList();
    }
    data['_id'] = sId;
    data['alt'] = alt;
    data['__v'] = iV;
    data['id'] = id;
    return data;
  }
}

class ActivityImageItem {
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

  ActivityImageItem(
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

  ActivityImageItem.fromJson(Map<String, dynamic> json) {
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
    related = json['related'] != null ? json['related'].cast<String>() : null;
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
  Thumbnail medium;
  Thumbnail small;
  Thumbnail large;

  Formats({this.thumbnail, this.medium, this.small, this.large});

  Formats.fromJson(Map<String, dynamic> json) {
    thumbnail = json['thumbnail'] != null ? Thumbnail.fromJson(json['thumbnail']) : null;
    medium = json['medium'] != null ? Thumbnail.fromJson(json['medium']) : null;
    small = json['small'] != null ? Thumbnail.fromJson(json['small']) : null;
    large = json['large'] != null ? Thumbnail.fromJson(json['large']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (thumbnail != null) {
      data['thumbnail'] = thumbnail.toJson();
    }
    if (medium != null) {
      data['medium'] = medium.toJson();
    }
    if (small != null) {
      data['small'] = small.toJson();
    }
    if (large != null) {
      data['large'] = large.toJson();
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
  String path;
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

class Category {
  String sId;
  String categoryName;
  String publishedAt;
  CategoryImage categoryImage;
  String createdAt;
  String updatedAt;
  int iV;
  String id;

  Category({this.sId, this.categoryName, this.publishedAt, this.categoryImage, this.createdAt, this.updatedAt, this.iV, this.id});

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    categoryName = json['categoryName'];
    publishedAt = json['published_at'];
    categoryImage = json['categoryImage'] != null ? CategoryImage.fromJson(json['categoryImage']) : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['categoryName'] = categoryName;
    data['published_at'] = publishedAt;
    if (categoryImage != null) {
      data['categoryImage'] = categoryImage.toJson();
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    data['id'] = id;
    return data;
  }
}

class CategoryImage {
  String sId;
  String alt;
  int iV;
  ActivityImageItem image;
  String id;

  CategoryImage({this.sId, this.alt, this.iV, this.image, this.id});

  CategoryImage.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    alt = json['alt'];
    iV = json['__v'];
    image = json['image'] != null ? ActivityImageItem.fromJson(json['image']) : null;
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

class City {
  String sId;
  String cityName;
  String publishedAt;
  CategoryImage cityImage;
  String createdAt;
  String updatedAt;
  int iV;
  String id;

  City({this.sId, this.cityName, this.publishedAt, this.cityImage, this.createdAt, this.updatedAt, this.iV, this.id});

  City.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    cityName = json['cityName'];
    publishedAt = json['published_at'];
    cityImage = json['cityImage'] != null ? CategoryImage.fromJson(json['cityImage']) : null;
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

class SubCategory {
  List<String> categoryIds;
  String sId;
  String subCategoryName;
  String publishedAt;
  String createdAt;
  String updatedAt;
  int iV;
  String categoryId;
  List<String> categoryIdsList;
  String id;

  SubCategory(
      {this.categoryIds,
      this.sId,
      this.subCategoryName,
      this.publishedAt,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.categoryId,
      this.categoryIdsList,
      this.id});

  SubCategory.fromJson(Map<String, dynamic> json) {
    categoryIds = json['categoryIds'] != null ? json['categoryIds'].cast<String>() : null;
    sId = json['_id'];
    subCategoryName = json['subCategoryName'];
    publishedAt = json['published_at'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    categoryId = json['categoryId'];
    categoryIdsList = json['category_ids'] != null ? json['category_ids'].cast<String>() : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categoryIds'] = categoryIds;
    data['_id'] = sId;
    data['subCategoryName'] = subCategoryName;
    data['published_at'] = publishedAt;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    data['categoryId'] = categoryId;
    data['category_ids'] = categoryIdsList;
    data['id'] = id;
    return data;
  }
}
