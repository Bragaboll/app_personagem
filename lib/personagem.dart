
class Personagem {
    int? id;
    String? name;
    String? status;
    String? species;
    String? type;
    String? gender;
    Origin? origin;
    Location? location;
    String? image;
    List<String>? episode;
    String? url;
    String? created;

    Personagem({this.id, this.name, this.status, this.species, this.type, this.gender, this.origin, this.location, this.image, this.episode, this.url, this.created});

    Personagem.fromJson(Map<String, dynamic> json) {
        this.id = json["id"];
        this.name = json["name"];
        this.status = json["status"];
        this.species = json["species"];
        this.type = json["type"];
        this.gender = json["gender"];
        this.origin = json["origin"] == null ? null : Origin.fromJson(json["origin"]);
        this.location = json["location"] == null ? null : Location.fromJson(json["location"]);
        this.image = json["image"];
        this.episode = json["episode"]==null ? null : List<String>.from(json["episode"]);
        this.url = json["url"];
        this.created = json["created"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["id"] = this.id;
        data["name"] = this.name;
        data["status"] = this.status;
        data["species"] = this.species;
        data["type"] = this.type;
        data["gender"] = this.gender;
        if(this.origin != null)
            data["origin"] = this.origin?.toJson();
        if(this.location != null)
            data["location"] = this.location?.toJson();
        data["image"] = this.image;
        if(this.episode != null)
            data["episode"] = this.episode;
        data["url"] = this.url;
        data["created"] = this.created;
        return data;
    }
}

class Location {
    String? name;
    String? url;

    Location({this.name, this.url});

    Location.fromJson(Map<String, dynamic> json) {
        this.name = json["name"];
        this.url = json["url"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["name"] = this.name;
        data["url"] = this.url;
        return data;
    }
}

class Origin {
    String? name;
    String? url;

    Origin({this.name, this.url});

    Origin.fromJson(Map<String, dynamic> json) {
        this.name = json["name"];
        this.url = json["url"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["name"] = this.name;
        data["url"] = this.url;
        return data;
    }
}