///
/// Modelo do Usuário
///
/// [author: Bruno Eduardo]
///
class Usuario {
  Usuario({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
    this.name,
    this.company,
    this.blog,
    this.location,
    this.email,
    this.hireable,
    this.bio,
    this.publicRepos,
    this.publicGists,
    this.followers,
    this.following,
    this.createdAt,
    this.updatedAt,
  });

  final String login;
  final int id;
  final String nodeId;
  final String avatarUrl;
  final String gravatarId;
  final String url;
  final String htmlUrl;
  final String followersUrl;
  final String followingUrl;
  final String gistsUrl;
  final String starredUrl;
  final String subscriptionsUrl;
  final String organizationsUrl;
  final String reposUrl;
  final String eventsUrl;
  final String receivedEventsUrl;
  final String type;
  final bool siteAdmin;
  final String name;
  final String company;
  final String blog;
  final String location;
  final String email;
  final bool hireable;
  final String bio;
  final int publicRepos;
  final int publicGists;
  final int followers;
  final int following;
  final String createdAt;
  final String updatedAt;

  /// Construtor com dados a partir de um [Map]
  factory Usuario.fromMap(Map map) {
    if (map != null) {
      return Usuario(
        login: map['login'],
        id: map['id'],
        nodeId: map['nodeId'],
        avatarUrl: map['avatarUrl'],
        gravatarId: map['gravatarId'],
        url: map['url'],
        htmlUrl: map['htmlUrl'],
        followersUrl: map['followersUrl'],
        followingUrl: map['followingUrl'],
        gistsUrl: map['gistsUrl'],
        starredUrl: map['starredUrl'],
        subscriptionsUrl: map['subscriptionsUrl'],
        organizationsUrl: map['organizationsUrl'],
        reposUrl: map['reposUrl'],
        eventsUrl: map['eventsUrl'],
        receivedEventsUrl: map['receivedEventsUrl'],
        type: map['type'],
        siteAdmin: map['siteAdmin'],
        name: map['name'],
        company: map['company'],
        blog: map['blog'],
        location: map['location'],
        email: map['email'],
        hireable: map['hireable'],
        bio: map['bio'],
        publicRepos: map['publicRepos'],
        publicGists: map['publicGists'],
        followers: map['followers'],
        following: map['following'],
        createdAt: map['createdAt'],
        updatedAt: map['updatedAt'],
      );
    } else {
      return Usuario();
    }
  }

  /// Construtor com dados a partir de um [Map] com padrão da API
  factory Usuario.fromAPI(Map map) {
    if (map != null) {
      return Usuario(
        login: map['login'],
        id: map['id'],
        nodeId: map['node_id'],
        avatarUrl: map['avatar_url'],
        gravatarId: map['gravatar_id'],
        url: map['url'],
        htmlUrl: map['html_url'],
        followersUrl: map['followers_url'],
        followingUrl: map['followin_url'],
        gistsUrl: map['gists_url'],
        starredUrl: map['starred_url'],
        subscriptionsUrl: map['subscriptions_url'],
        organizationsUrl: map['organizations_url'],
        reposUrl: map['repos_url'],
        eventsUrl: map['events_url'],
        receivedEventsUrl: map['received_events_url'],
        type: map['type'],
        siteAdmin: map['site_admin'],
        name: map['name'],
        company: map['company'],
        blog: map['blog'],
        location: map['location'],
        email: map['email'],
        hireable: map['hireable'],
        bio: map['bio'],
        publicRepos: map['public_repos'],
        publicGists: map['public_gists'],
        followers: map['followers'],
        following: map['following'],
        createdAt: map['created_at'],
        updatedAt: map['updated_at'],
      );
    } else {
      return Usuario();
    }
  }

  /// Dados instânciados para um [Map]
  Map<String, dynamic> get toMap => {
        "login": login,
        "id": id,
        "nodeId": nodeId,
        "avatarUrl": avatarUrl,
        "gravatarId": gravatarId,
        "url": url,
        "htmlUrl": htmlUrl,
        "followersUrl": followersUrl,
        "followingUrl": followingUrl,
        "gistsUrl": gistsUrl,
        "starredUrl": starredUrl,
        "subscriptionsUrl": subscriptionsUrl,
        "organizationsUrl": organizationsUrl,
        "reposUrl": reposUrl,
        "eventsUrl": eventsUrl,
        "receivedEventsUrl": receivedEventsUrl,
        "type": type,
        "siteAdmin": siteAdmin,
        "name": name,
        "company": company,
        "blog": blog,
        "location": location,
        "email": email,
        "hireable": hireable,
        "bio": bio,
        "publicRepos": publicRepos,
        "publicGists": publicGists,
        "followers": followers,
        "following": following,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };

  /// Dados instânciados para um [Map] no padrão da API
  Map<String, dynamic> get toAPI => {
        "login": login,
        "id": id,
        "node_id": nodeId,
        "avatar_url": avatarUrl,
        "gravatar_id": gravatarId,
        "url": url,
        "html_url": htmlUrl,
        "followers_url": followersUrl,
        "following_url": followingUrl,
        "gists_url": gistsUrl,
        "starred_url": starredUrl,
        "subscriptions_url": subscriptionsUrl,
        "organizations_url": organizationsUrl,
        "repos_url": reposUrl,
        "events_url": eventsUrl,
        "received_events_url": receivedEventsUrl,
        "type": type,
        "site_admin": siteAdmin,
        "name": name,
        "company": company,
        "blog": blog,
        "location": location,
        "email": email,
        "hireable": hireable,
        "bio": bio,
        "public_repos": publicRepos,
        "public_gists": publicGists,
        "followers": followers,
        "following": following,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
