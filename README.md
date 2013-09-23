Login
-----
Request:

    Account
    Password

Response:

    {
        "result": true | <error_msg>
    }

Register
--------

Request:

    UserName
    Email
    Password

Response:
    
    {
        "result": true | <error_msg>
    }

PasswordRecovery
-----------------

Request:

    Account

Reponse:

    {
        "result": true | <error_msg>
    }

GetUserDetail
---------------

Request:
    
    UserName

Response:

    {
        "id": <int>,
        "username": <string>
        "facebookId": <int?>,
        "address": <string?>,
        "district": <string?>,
        "province": <string?>,
        "location": <string>,
        "email": <string>,
        "hairLength": <string?>,
        "password": <string?> !!!
        "phone": <string?>,
        "totalPoint": <int>,
        "isActived": <boolean>,
        "isDeleted": <boolean>,
        "createdDate": <date_string (dd/mm/yyyy hh:mm:ss AM/PM)>,
        "updatedDate": <date_string (dd/mm/yyyy hh:mm:ss AM/PM)>,
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
# TODO

GetGlobalUsers
--------------------
Response:

    [
        {
            "id": <int>,
            "username": <string>
            "facebookId": <int?>,
            "address": <string?>,
            "district": <string?>,
            "province": <string?>,
            "location": <string>,
            "email": <string>,
            "hairLength": <string?>,
            "password": <string?> !!!
            "phone": <string?>,
            "totalPoint": <int>,
            "isActived": <boolean>,
            "isDeleted": <boolean>,
            "createdDate": <date_string (dd/mm/yyyy hh:mm:ss AM/PM)>,
            "updatedDate": <date_string (dd/mm/yyyy hh:mm:ss AM/PM)>,
        },

        ...
    ]

FilterFriendlist !!! mistypo
----------------
    ?

FollowerUser
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
            "username": <string>
            "facebookId": <int?>,
            "address": <string?>,
            "district": <string?>,
            "province": <string?>,
            "location": <string>,
            "email": <string>,
            "hairLength": <string?>,
            "password": <string?> !!!
            "phone": <string?>,
            "totalPoint": <int>,
            "isActived": <boolean>,
            "isDeleted": <boolean>,
            "createdDate": <date_string (dd/mm/yyyy hh:mm:ss AM/PM)>,
            "updatedDate": <date_string (dd/mm/yyyy hh:mm:ss AM/PM)>,
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
