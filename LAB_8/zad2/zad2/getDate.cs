﻿using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class UserDefinedFunctions
{
    [Microsoft.SqlServer.Server.SqlFunction]
    public static SqlString lab8getDate(SqlString format)
    {
        return new SqlString(DateTime.Now.ToString(format.ToString()));
    }
};