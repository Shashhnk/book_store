/// totalItems : 200
/// items : [{"volumeInfo":{"title":"Twenty-Six Men and a Girl","authors":["Maksim Gorky"],"publisher":"Library of Alexandria","publishedDate":"1906","description":"There were six-and-twenty of us Ñ six-and-twenty living machines in a damp, underground cellar, where from morning till night we kneaded dough and rolled it into kringels. Opposite the underground window of our cellar was a bricked area, green and mouldy with moisture. The window was protected from outside with a close iron grating, and the light of the sun could not pierce through the window panes, covered as they were with flour dust. Our employer had bars placed in front of the windows, so that we should not be able to give a bit of his bread to passing beggars, or to any of our fellows who were out of work and hungry. Our employer called us rogues, and gave us half-rotten tripe to eat for our mid-day meal, instead of meat. It was swelteringly close for us cooped up in that stone underground chamber, under the low, heavy, soot-blackened, cobwebby ceiling. Dreary and sickening was our life between its thick, dirty, mouldy walls. Unrefreshed, and with a feeling of not having had our sleep out, we used to get up at five oÕclock in the morning; and before six, we were already seated, worn out and apathetic, at the table, rolling out the dough which our mates had already prepared while we slept. The whole day, from ten in the early morning until ten at night, some of us sat round that table, working up in our hands the yielding paste, rolling it to and fro so that it should not get stiff; while the others kneaded the swelling mass of dough. And the whole day the simmering water in the kettle, where the kringels were being cooked, sang low and sadly; and the bakerÕs shovel scraped harshly over the oven floor, as he threw the slippery bits of dough out of the kettle on the heated bricks. Ê","imageLinks":{"thumbnail":"http://books.google.com/books/content?id=E62dBQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en"},"accessInfo":{"country":"IN","webReaderLink":"http://play.google.com/books/reader?id=E62dBQAAQBAJ&hl=&source=gbs_api"}}]

class BookModal {
  BookModal({
    num? totalItems,
    List<Items>? items,
  }) {
    _totalItems = totalItems;
    _items = items;
  }

  BookModal.fromJson(dynamic json) {
    _totalItems = json['totalItems'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
  }
  num? _totalItems;
  List<Items>? _items;
  BookModal copyWith({
    num? totalItems,
    List<Items>? items,
  }) =>
      BookModal(
        totalItems: totalItems ?? _totalItems,
        items: items ?? _items,
      );
  num? get totalItems => _totalItems;
  List<Items>? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalItems'] = _totalItems;
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// volumeInfo : {"title":"Twenty-Six Men and a Girl","authors":["Maksim Gorky"],"publisher":"Library of Alexandria","publishedDate":"1906","description":"There were six-and-twenty of us Ñ six-and-twenty living machines in a damp, underground cellar, where from morning till night we kneaded dough and rolled it into kringels. Opposite the underground window of our cellar was a bricked area, green and mouldy with moisture. The window was protected from outside with a close iron grating, and the light of the sun could not pierce through the window panes, covered as they were with flour dust. Our employer had bars placed in front of the windows, so that we should not be able to give a bit of his bread to passing beggars, or to any of our fellows who were out of work and hungry. Our employer called us rogues, and gave us half-rotten tripe to eat for our mid-day meal, instead of meat. It was swelteringly close for us cooped up in that stone underground chamber, under the low, heavy, soot-blackened, cobwebby ceiling. Dreary and sickening was our life between its thick, dirty, mouldy walls. Unrefreshed, and with a feeling of not having had our sleep out, we used to get up at five oÕclock in the morning; and before six, we were already seated, worn out and apathetic, at the table, rolling out the dough which our mates had already prepared while we slept. The whole day, from ten in the early morning until ten at night, some of us sat round that table, working up in our hands the yielding paste, rolling it to and fro so that it should not get stiff; while the others kneaded the swelling mass of dough. And the whole day the simmering water in the kettle, where the kringels were being cooked, sang low and sadly; and the bakerÕs shovel scraped harshly over the oven floor, as he threw the slippery bits of dough out of the kettle on the heated bricks. Ê","imageLinks":{"thumbnail":"http://books.google.com/books/content?id=E62dBQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en"}
/// accessInfo : {"country":"IN","webReaderLink":"http://play.google.com/books/reader?id=E62dBQAAQBAJ&hl=&source=gbs_api"}

class Items {
  Items({
    VolumeInfo? volumeInfo,
    AccessInfo? accessInfo,
  }) {
    _volumeInfo = volumeInfo;
    _accessInfo = accessInfo;
  }

  Items.fromJson(dynamic json) {
    _volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    _accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
  }
  VolumeInfo? _volumeInfo;
  AccessInfo? _accessInfo;
  Items copyWith({
    VolumeInfo? volumeInfo,
    AccessInfo? accessInfo,
  }) =>
      Items(
        volumeInfo: volumeInfo ?? _volumeInfo,
        accessInfo: accessInfo ?? _accessInfo,
      );
  VolumeInfo? get volumeInfo => _volumeInfo;
  AccessInfo? get accessInfo => _accessInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_volumeInfo != null) {
      map['volumeInfo'] = _volumeInfo?.toJson();
    }
    if (_accessInfo != null) {
      map['accessInfo'] = _accessInfo?.toJson();
    }
    return map;
  }
}

/// country : "IN"
/// webReaderLink : "http://play.google.com/books/reader?id=E62dBQAAQBAJ&hl=&source=gbs_api"

class AccessInfo {
  AccessInfo({
    String? country,
    String? webReaderLink,
  }) {
    _country = country;
    _webReaderLink = webReaderLink;
  }

  AccessInfo.fromJson(dynamic json) {
    _country = json['country'];
    _webReaderLink = json['webReaderLink'];
  }
  String? _country;
  String? _webReaderLink;
  AccessInfo copyWith({
    String? country,
    String? webReaderLink,
  }) =>
      AccessInfo(
        country: country ?? _country,
        webReaderLink: webReaderLink ?? _webReaderLink,
      );
  String? get country => _country;
  String? get webReaderLink => _webReaderLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['webReaderLink'] = _webReaderLink;
    return map;
  }
}

/// title : "Twenty-Six Men and a Girl"
/// authors : ["Maksim Gorky"]
/// publisher : "Library of Alexandria"
/// publishedDate : "1906"
/// description : "There were six-and-twenty of us Ñ six-and-twenty living machines in a damp, underground cellar, where from morning till night we kneaded dough and rolled it into kringels. Opposite the underground window of our cellar was a bricked area, green and mouldy with moisture. The window was protected from outside with a close iron grating, and the light of the sun could not pierce through the window panes, covered as they were with flour dust. Our employer had bars placed in front of the windows, so that we should not be able to give a bit of his bread to passing beggars, or to any of our fellows who were out of work and hungry. Our employer called us rogues, and gave us half-rotten tripe to eat for our mid-day meal, instead of meat. It was swelteringly close for us cooped up in that stone underground chamber, under the low, heavy, soot-blackened, cobwebby ceiling. Dreary and sickening was our life between its thick, dirty, mouldy walls. Unrefreshed, and with a feeling of not having had our sleep out, we used to get up at five oÕclock in the morning; and before six, we were already seated, worn out and apathetic, at the table, rolling out the dough which our mates had already prepared while we slept. The whole day, from ten in the early morning until ten at night, some of us sat round that table, working up in our hands the yielding paste, rolling it to and fro so that it should not get stiff; while the others kneaded the swelling mass of dough. And the whole day the simmering water in the kettle, where the kringels were being cooked, sang low and sadly; and the bakerÕs shovel scraped harshly over the oven floor, as he threw the slippery bits of dough out of the kettle on the heated bricks. Ê"
/// imageLinks : {"thumbnail":"http://books.google.com/books/content?id=E62dBQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"

class VolumeInfo {
  VolumeInfo({
    String? title,
    List<String>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    ImageLinks? imageLinks,
    String? language,
  }) {
    _title = title;
    _authors = authors;
    _publisher = publisher;
    _publishedDate = publishedDate;
    _description = description;
    _imageLinks = imageLinks;
    _language = language;
  }

  VolumeInfo.fromJson(dynamic json) {
    _title = json['title'];
    _authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    _publisher = json['publisher'];
    _publishedDate = json['publishedDate'];
    _description = json['description'];
    _imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
    _language = json['language'];
  }
  String? _title;
  List<String>? _authors;
  String? _publisher;
  String? _publishedDate;
  String? _description;
  ImageLinks? _imageLinks;
  String? _language;
  VolumeInfo copyWith({
    String? title,
    List<String>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    ImageLinks? imageLinks,
    String? language,
  }) =>
      VolumeInfo(
        title: title ?? _title,
        authors: authors ?? _authors,
        publisher: publisher ?? _publisher,
        publishedDate: publishedDate ?? _publishedDate,
        description: description ?? _description,
        imageLinks: imageLinks ?? _imageLinks,
        language: language ?? _language,
      );
  String? get title => _title;
  List<String>? get authors => _authors;
  String? get publisher => _publisher;
  String? get publishedDate => _publishedDate;
  String? get description => _description;
  ImageLinks? get imageLinks => _imageLinks;
  String? get language => _language;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['authors'] = _authors;
    map['publisher'] = _publisher;
    map['publishedDate'] = _publishedDate;
    map['description'] = _description;
    if (_imageLinks != null) {
      map['imageLinks'] = _imageLinks?.toJson();
    }
    map['language'] = _language;
    return map;
  }
}

/// thumbnail : "http://books.google.com/books/content?id=E62dBQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"

class ImageLinks {
  ImageLinks({
    String? thumbnail,
  }) {
    _thumbnail = thumbnail;
  }

  ImageLinks.fromJson(dynamic json) {
    _thumbnail = json['thumbnail'];
  }
  String? _thumbnail;
  ImageLinks copyWith({
    String? thumbnail,
  }) =>
      ImageLinks(
        thumbnail: thumbnail ?? _thumbnail,
      );
  String? get thumbnail => _thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['thumbnail'] = _thumbnail;
    return map;
  }
}
