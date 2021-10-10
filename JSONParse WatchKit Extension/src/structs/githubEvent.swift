//
//  githubEvent.swift
//  JSONParse WatchKit Extension
//
//  Created by Paul Zamshin on 10.10.2021.
//

import Foundation

struct GithubEvent {
    var id: String;
    var type: String;
    var actor: GithubEventActor;
    var repo: GithubEventRepo;
    var payload: GithubEventPayload;
}

struct GithubEventActor {
    var id: Int;
    var login: String;
    var display_login: String;
    var gravatar_id: String;
    var url: String;
    var avatar_url: String;
}

struct GithubEventRepo {
    var id: Int;
    var name: String;
    var url: String;
}

struct GithubEventPayload {
    var push_id: Int;
    var size: Int;
    var distinct_size: Int;
    var ref: String;
    var head: String;
    var before: String;
    var commits: [GithubEventPayloadCommit];
}

struct GithubEventPayloadCommit {
    var sha: String;
    var author: GithubEventPayloadCommitAuthor;
    var message: String;
    var distinct: Bool;
    var url: String;
}

struct GithubEventPayloadCommitAuthor {
    var email: String;
    var name: String;
}
