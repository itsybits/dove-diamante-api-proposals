Implemented API
===============

Login
-----
Request:

```
Account
Password
```

Response:

```json
{
    "result": true
}
```

> Error message?

Register
--------

Request:

```
UserName
Email
Password
```

Response:

```json
{
    "result": true | <error_message>
}
```

PasswordRecovery
-----------------

Request:

```
Account
```

Reponse:

```json
{
    "result": true
}
```

GetUserDetail
---------------

Request:

```
UserName
```

Response:

```json
{
    "id"             : <int>,
    "username"       : <string>,
    "facebookId"     : <int?>,
    "address"        : <string?>,
    "district"       : <string?>,
    "province"       : <string?>,
    "email"          : <string>,
    "hairLength"     : <string?>,
    "phone"          : <string?>,
    "totalPoint"     : <int>,
    "isActived"      : <boolean>,
    "isDeleted"      : <boolean>,
    "createdDate"    : <date_string (dd/mm/yyyy hh:mm:ss AM/PM)>,
    "updatedDate"    : <date_string (dd/mm/yyyy hh:mm:ss AM/PM)>,
    "favouriteCount" : <int>,
    "photoCount"     : <int>,
    "followerCount"  : <int>,
    "followingCount" : <int>
}
```

EditProfile
------------
Request:

```
UserName
Password
ConfirmPassword ???
Email
Phone
Address
DistrictID ???
ProvinceID ???
HairLength
```

Response:

```json
{
    result: true | <error_msg?>
}
```

UpdateFacebookID
----------------
Request:

```
UserName
FacebookID
```

~~GetGlobalUsers~~
--------------------
Response:

```json
[
    {
        "id": <int>,
        "username": <string>,
        "facebookId": <int?>,
        "address": <string?>,
        "district": <string?>,
        "province": <string?>,
        "location": <string>,
        "email": <string>,
        "hairLength": <string?>,
        "password": <string?>, !!!
        "phone": <string?>,
        "totalPoint": <int>,
        "isActived": <boolean>,
        "isDeleted": <boolean>,
        "createdDate": <date_string (dd/mm/yyyy hh:mm:ss AM/PM)>,
        "updatedDate": <date_string (dd/mm/yyyy hh:mm:ss AM/PM)>
    },
    ...
]
```

~~FilterFriendlist~~
--------------------

FollowUser
-------------
Request:

```
UserName
UserNameFollowed
```

Response:

```json
{
    "result": <boolean> | "Errors": <error_msg> ???
}
```

~~GetFollowingUsers~~
-----------------
Response:

```json
[
    {
        "id": <int>,
        "username": <string>,
        "facebookId": <int?>,
        "address": <string?>,
        "district": <string?>,
        "province": <string?>,
        "location": <string>,
        "email": <string>,
        "hairLength": <string?>,
        "password": <string?>, !!!
        "phone": <string?>,
        "totalPoint": <int>,
        "isActived": <boolean>,
        "isDeleted": <boolean>,
        "createdDate": <date_string (dd/mm/yyyy hh:mm:ss AM/PM)>,
        "updatedDate": <date_string (dd/mm/yyyy hh:mm:ss AM/PM)>
    },
    ...
]
```

CreateCategory
--------------
Request:

```
Title
```

Response:

```json
{
    "result": true ?
}
```

DeleteCategory
--------------
Request:

```
CategoryID
```

Response:

```json
{
    "result": true ?
}
```

GetListCategory
---------------
Response:

```json
[
    {
        "id": <int>,
        "title": <string>,
        "createdDate": <"dd/mm/yy hh:mm:ss"> !!! mismatch date string format
    },
    ...
]
```

> TODO: Add more implemented API

GetFacebookFriends
------------------

**Obsolete:** `FilterFriendlist`

Request:

```
    UserName
```

Response:

```json
[
    {
        "facebook_name"        : <string>,
        "isDoveDiamanteUser"   : <boolean>,    // Was this user registered Dove Diamante app? (mainly for use with `facebook_friends` scope)
        < "username"           : <boolean>, >  // optional
        < "isFollowing"        : <boolean>, >  // optional
        < "isFollower"         : <boolean>  >  // optional
    }
]
```

Connections
-----------

**Obsolete these API:** `GetGlobalUsers`, `GetFollowingUsers`
Request:

```
UserName
Scope = "global" | "followers" | "following"
```

Response:

```json
[
    {
        "username"           : <string>,
        "isFollowing"        : <boolean>,     // Am I following this user?
        "isFollower"         : <boolean>      // Is this user one of my followers?
    },
    ...
]
```

Identify Connections
--------------------

**Obsolete API:** `GetFacebookFriends`

Request:

```
Username = <string>
Type = "facebookId" | "email"
Connections =
{
    "data": [
        {
            "email": <string> | "facebookId": <string>
        },
        ...
    ]
}
```

Response:

```json
[
    {
        "email" | "facebookId" : <string>,       // Corresponded to request
        "isFollowing"          : <boolean>,      // Am I following this user?
        "isFollower"           : <boolean>,      // Is this user one of my followers?
        "isDoveDiamanteUser"   : <boolean>
    },
    ...
]
```
