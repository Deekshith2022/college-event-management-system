using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
//using System.Windows.Forms;

/// <summary>
/// Summary description for DBClass
/// </summary>
public class DBClass
{
    private String strconn;
    private SqlConnection conn;
    private SqlCommand comm;
    private SqlDataReader reader;
    private SqlDataAdapter adapter;
    private DataSet ds;

    public DBClass()
    {
        strconn = @"Data Source=AARYA;Initial Catalog=EventManagementSystem;Integrated Security=True";
    }
    public SqlConnection getConn()
    {
        conn = null;
        try
        {
            conn = new SqlConnection(strconn);
            conn.Open();
        }
        catch (Exception ex)
        {
            
            Console.Write(ex.Message);
        }
        return conn;
    }

    public SqlDataReader GetReader(String sql)
    {
        conn = getConn();
        comm = new SqlCommand(sql, conn);
        reader = comm.ExecuteReader();
        return reader;
    }

    public SqlDataAdapter GetAdapter(String sql)
    {
        conn = getConn();
        adapter = new SqlDataAdapter(sql, conn);
        return adapter;
    }

    public DataSet GetDataSet(String sql, String tablename)
    {
        conn = getConn();
        adapter = new SqlDataAdapter(sql, conn);
        ds = new DataSet();
        adapter.Fill(ds, tablename);
        return ds;
    }

    public int ExecuteCommand(String sql)
    {
        conn = getConn();
        comm = new SqlCommand(sql, conn);
        return comm.ExecuteNonQuery();
    }
}