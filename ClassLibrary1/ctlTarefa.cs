using System;
using System.Configuration;
using CamadaControle;
using CamadaModelo;
using System.Data;

namespace CamadaControle
{
    public class ctlTarefa
    {
        public bool Cadastrar(mdlTarefa _mdlTarefa)
        {
            try
            {
                string conecaoAccess = ConfigurationManager.ConnectionStrings["conexaoAccess"].ToString();
                OleDbConnection conexaodb = new OleDbConnection(conexaoAccess);
                conexaodb.Open();

                string query = "INSERT INTO tblTarefa (Tarefa, Prazo, Atividade) VALUES (@Tarefa, @Prazo, @Atividade)";
                OleDbCommand cmd = new OleDbCommand(query, conexaodb);


            }
        }
    }
}
