Implemented API
===============

Login
-----
Request:

    Account
    Password

Response:

    {
        "result": true
    }

> Error message?

Register
--------

Request:

    UserName
    Email
    Password

Response:
    
    {
        "result": true
    }

> Error messages?

PasswordRecovery
-----------------

Request:

    Account

Reponse:

    {
        "result": true
    }

GetUserDetail
---------------

Request:
    
    UserName

Response:

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
    }

EditProfile
------------
Request:

    UserName
    Password
    ConfirmPassword ???
    Email
    Phone
    Address
    DistrictID ???
    ProvinceID ???
    HairLength

Response:

    {
        result: true | <error_msg?>
    }

UpdateFacebookID
----------------
Request:

    UserName
    FacebookID

GetGlobalUsers
--------------------
Response:

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

FilterFriendlist
----------------

FollowUser
-------------
Request:
    
    UserName
    UserNameFollowed

Response:
    
    {
        "result": <boolean>
      | 
        "Errors": <error_msg> ???
    }

GetFollowingUsers
-----------------
Response:

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

CreateCategory
--------------
Request:
    
    Title

Response:

    {
        "result": true ?
    }

DeleteCategory
--------------
Request:

    CategoryID

Response:

    {
        "result": true ?
    }

GetListCategory
---------------
Response:
    
    [
        {
            "id": <int>,
            "title": <string>,
            "createdDate": <"dd/mm/yy hh:mm:ss"> !!! mismatch date string format
        }
    ]

> TODO: Add more implemented API

Unimplemented API
=================

Connections
-----------

**Obsolete these API**: `GetGlobalUsers`, `FilterFriendlist`, `GetFollowingUsers`

Request:
    
    UserName
    Scope = "global" | "followers" | "following" | "facebook_friends"

Response:

    [
        {
            "id": <int>,
            "username": <string>,
            "following": <boolean>,     // Am I following this user?
            "follower": <boolean>,      // Is this user one of my followers?
        },

        ...
    ]
