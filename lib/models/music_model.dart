class MusicModel {
  List<Result> _results = [];
  MusicModel.fromJson(dynamic parsedJson) {
    List<Result> temp = [];
    //print("the type is");
    List lst=parsedJson['message']['body']['track_list'];
    //print("the list length is "+ lst.length.toString());
    //print(parsedJson['message']);
    for (int i = 0;
        i < lst.length;//parsedJson['message']['body']['track_list'];
        i++) {
      Result result =
          Result(parsedJson['message']['body']['track_list'][i]['track']);
      temp.add(result);
    }
    _results = temp;
  }

  List<Result> get results => _results;
}

class Result {
  int _trackId;
  String _trackName;
  List<String> _trackNameTranslationList = [];
  int _trackRating;
  int _commonTrackId;
  int _instrumental;
  int _explicit;
  int _hasLyrics;
  int _hasSubtitles;
  int _hasRichSync;
  int _numFavourite;
  int _albumId;
  String _albumName;
  int _artistId;
  String _artistName;
  String _trackShareUrl;
  String _trackEditUrl;
  int _restricted;
  String _updatedTime;
//  List<_MusicGenre> _musicGenreList;
  Result(result) {
    _trackId = result['track_id'];
    _trackName = result['track_name'];
    for (int i = 0; i < result['track_name_translation_list'].length; i++) {
      _trackNameTranslationList.add(result['track_name_translation_list'][i]);
    }
    _trackRating = result['track_rating'];
    _commonTrackId = result['commontrack_id'];
    _instrumental = result['instrumental'];
    _explicit = result['explicit'];
    _hasLyrics = result['has_lyrics'];
    _hasSubtitles = result['has_subtitles'];
    _hasRichSync = result['has_richsync'];
    _numFavourite = result['num_favourite'];
    _albumId = result['album_id'];
    _albumName = result['album_name'];
    _artistId = result['artist_id'];
    _artistName = result['artist_name'];
    _trackShareUrl = result['track_share_url'];
    _trackEditUrl = result['track_edit_url'];
    _restricted = result['restricted'];
    _updatedTime = result['updated_time'];
//    for (int i = 0;
//        i < result['primary_genres']['music_genre_list'].length;
//        i++) {
//      _musicGenreList.add(result['primary_genres']['music_genre_list'][i]);
//    }
  }

  String get updatedTime => _updatedTime;

  int get restricted => _restricted;

  String get trackEditUrl => _trackEditUrl;

  String get trackShareUrl => _trackShareUrl;

  String get artistName => _artistName;

  int get artistId => _artistId;

  String get albumName => _albumName;

  int get albumId => _albumId;

  int get numFavourite => _numFavourite;

  int get hasRichSync => _hasRichSync;

  int get hasSubtitles => _hasSubtitles;

  int get hasLyrics => _hasLyrics;

  int get explicit => _explicit;

  int get instrumental => _instrumental;

  int get commonTrackId => _commonTrackId;

  int get trackRating => _trackRating;

  List<String> get trackNameTranslationList => _trackNameTranslationList;

  String get trackName => _trackName;

  int get trackId => _trackId;
}

//class _MusicGenre {
//  int _musicGenreId;
//  int _musicGenreParentId;
//  String _musicGenreName;
//  String _musicGenreNameExtended;
//  String _musicGenreVanity;
//  _MusicGenre(musicGenre) {
//    _musicGenreId = musicGenre['music_genre_id'];
//    _musicGenreParentId = musicGenre['music_genre_parent_id'];
//    _musicGenreName = musicGenre['music_genre_name'];
//    _musicGenreNameExtended = musicGenre['music_genre_name_extended'];
//    _musicGenreVanity = musicGenre['music_genre_vanity'];
//  }
//}


// class MusicModel {
//   Message message;
//
//   MusicModel({this.message});
//
//   MusicModel.fromJson(Map<String, dynamic> json) {
//     message =
//     json['message'] != null ? new Message.fromJson(json['message']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.message != null) {
//       data['message'] = this.message.toJson();
//     }
//     return data;
//   }
// }
//
// class Message {
//   Header header;
//   Body body;
//
//   Message({this.header, this.body});
//
//   Message.fromJson(Map<String, dynamic> json) {
//     header =
//     json['header'] != null ? new Header.fromJson(json['header']) : null;
//     body = json['body'] != null ? new Body.fromJson(json['body']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.header != null) {
//       data['header'] = this.header.toJson();
//     }
//     if (this.body != null) {
//       data['body'] = this.body.toJson();
//     }
//     return data;
//   }
// }
//
// class Header {
//   int statusCode;
//   double executeTime;
//
//   Header({this.statusCode, this.executeTime});
//
//   Header.fromJson(Map<String, dynamic> json) {
//     statusCode = json['status_code'];
//     executeTime = json['execute_time'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status_code'] = this.statusCode;
//     data['execute_time'] = this.executeTime;
//     return data;
//   }
// }
//
// class Body {
//   List<TrackList> trackList;
//
//   Body({this.trackList});
//
//   Body.fromJson(Map<String, dynamic> json) {
//     if (json['track_list'] != null) {
//       trackList = new List<TrackList>();
//       json['track_list'].forEach((v) {
//         trackList.add(new TrackList.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.trackList != null) {
//       data['track_list'] = this.trackList.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class TrackList {
//   Track track;
//
//   TrackList({this.track});
//
//   TrackList.fromJson(Map<String, dynamic> json) {
//     track = json['track'] != null ? new Track.fromJson(json['track']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.track != null) {
//       data['track'] = this.track.toJson();
//     }
//     return data;
//   }
// }
//
// class Track {
//   int trackId;
//   String trackName;
//   List<Null> trackNameTranslationList;
//   int trackRating;
//   int commontrackId;
//   int instrumental;
//   int explicit;
//   int hasLyrics;
//   int hasSubtitles;
//   int hasRichsync;
//   int numFavourite;
//   int albumId;
//   String albumName;
//   int artistId;
//   String artistName;
//   String trackShareUrl;
//   String trackEditUrl;
//   int restricted;
//   String updatedTime;
//   PrimaryGenres primaryGenres;
//
//   Track(
//       {this.trackId,
//         this.trackName,
//         this.trackNameTranslationList,
//         this.trackRating,
//         this.commontrackId,
//         this.instrumental,
//         this.explicit,
//         this.hasLyrics,
//         this.hasSubtitles,
//         this.hasRichsync,
//         this.numFavourite,
//         this.albumId,
//         this.albumName,
//         this.artistId,
//         this.artistName,
//         this.trackShareUrl,
//         this.trackEditUrl,
//         this.restricted,
//         this.updatedTime,
//         this.primaryGenres});
//
//   Track.fromJson(Map<String, dynamic> json) {
//     trackId = json['track_id'];
//     trackName = json['track_name'];
//     if (json['track_name_translation_list'] != null) {
//       trackNameTranslationList = new List<Null>();
//       json['track_name_translation_list'].forEach((v) {
//         trackNameTranslationList.add(new Null.fromJson(v));
//       });
//     }
//     trackRating = json['track_rating'];
//     commontrackId = json['commontrack_id'];
//     instrumental = json['instrumental'];
//     explicit = json['explicit'];
//     hasLyrics = json['has_lyrics'];
//     hasSubtitles = json['has_subtitles'];
//     hasRichsync = json['has_richsync'];
//     numFavourite = json['num_favourite'];
//     albumId = json['album_id'];
//     albumName = json['album_name'];
//     artistId = json['artist_id'];
//     artistName = json['artist_name'];
//     trackShareUrl = json['track_share_url'];
//     trackEditUrl = json['track_edit_url'];
//     restricted = json['restricted'];
//     updatedTime = json['updated_time'];
//     primaryGenres = json['primary_genres'] != null
//         ? new PrimaryGenres.fromJson(json['primary_genres'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['track_id'] = this.trackId;
//     data['track_name'] = this.trackName;
//     if (this.trackNameTranslationList != null) {
//       data['track_name_translation_list'] =
//           this.trackNameTranslationList.map((v) => v.toJson()).toList();
//     }
//     data['track_rating'] = this.trackRating;
//     data['commontrack_id'] = this.commontrackId;
//     data['instrumental'] = this.instrumental;
//     data['explicit'] = this.explicit;
//     data['has_lyrics'] = this.hasLyrics;
//     data['has_subtitles'] = this.hasSubtitles;
//     data['has_richsync'] = this.hasRichsync;
//     data['num_favourite'] = this.numFavourite;
//     data['album_id'] = this.albumId;
//     data['album_name'] = this.albumName;
//     data['artist_id'] = this.artistId;
//     data['artist_name'] = this.artistName;
//     data['track_share_url'] = this.trackShareUrl;
//     data['track_edit_url'] = this.trackEditUrl;
//     data['restricted'] = this.restricted;
//     data['updated_time'] = this.updatedTime;
//     if (this.primaryGenres != null) {
//       data['primary_genres'] = this.primaryGenres.toJson();
//     }
//     return data;
//   }
// }
//
// class PrimaryGenres {
//   List<MusicGenreList> musicGenreList;
//
//   PrimaryGenres({this.musicGenreList});
//
//   PrimaryGenres.fromJson(Map<String, dynamic> json) {
//     if (json['music_genre_list'] != null) {
//       musicGenreList = new List<MusicGenreList>();
//       json['music_genre_list'].forEach((v) {
//         musicGenreList.add(new MusicGenreList.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.musicGenreList != null) {
//       data['music_genre_list'] =
//           this.musicGenreList.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class MusicGenreList {
//   MusicGenre musicGenre;
//
//   MusicGenreList({this.musicGenre});
//
//   MusicGenreList.fromJson(Map<String, dynamic> json) {
//     musicGenre = json['music_genre'] != null
//         ? new MusicGenre.fromJson(json['music_genre'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.musicGenre != null) {
//       data['music_genre'] = this.musicGenre.toJson();
//     }
//     return data;
//   }
// }
//
// class MusicGenre {
//   int musicGenreId;
//   int musicGenreParentId;
//   String musicGenreName;
//   String musicGenreNameExtended;
//   String musicGenreVanity;
//
//   MusicGenre(
//       {this.musicGenreId,
//         this.musicGenreParentId,
//         this.musicGenreName,
//         this.musicGenreNameExtended,
//         this.musicGenreVanity});
//
//   MusicGenre.fromJson(Map<String, dynamic> json) {
//     musicGenreId = json['music_genre_id'];
//     musicGenreParentId = json['music_genre_parent_id'];
//     musicGenreName = json['music_genre_name'];
//     musicGenreNameExtended = json['music_genre_name_extended'];
//     musicGenreVanity = json['music_genre_vanity'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['music_genre_id'] = this.musicGenreId;
//     data['music_genre_parent_id'] = this.musicGenreParentId;
//     data['music_genre_name'] = this.musicGenreName;
//     data['music_genre_name_extended'] = this.musicGenreNameExtended;
//     data['music_genre_vanity'] = this.musicGenreVanity;
//     return data;
//   }
// }