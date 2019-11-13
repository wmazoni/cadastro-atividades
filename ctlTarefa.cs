using System;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using CamadaControle;
using CamadaModelo;

namespace CamadaControle
{
    public class ctlTarefa
    {
        public bool Cadastrar(mdlTarefa _mdlTarefa)
        {
            try
            {
                string conecaoAccess = ConfigurationManager.ConnectionStrings["conexaoAccess"].ToString();
                OleDbConnection conexaodb = new OleDbConnection(conecaoAccess);
                conexaodb.Open();

                string query = "INSERT INTO tblTarefa (Tarefa, Prazo, Atividade) VALUES (@Tarefa, @Prazo, @Atividade)";
                OleDbCommand cmd = new OleDbCommand(query, conexaodb);

                var pmtTarefa = cmd.CreateParameter();
                pmtTarefa.ParameterName = "@Tarefa";
                pmtTarefa.DbType = DbType.String;
                pmtTarefa.Value = _mdlTarefa.Tarefa;
                cmd.Parameters.Add(pmtTarefa);

                var pmtPrazo = cmd.CreateParameter();
                pmtPrazo.ParameterName = "@Prazo";
                pmtPrazo.DbType = DbType.DateTime;
                pmtPrazo.Value = _mdlTarefa.Prazo;
                cmd.Parameters.Add(pmtPrazo);

                var pmtAtividade = cmd.CreateParameter();
                pmtAtividade.ParameterName = "@Atividade";
                pmtAtividade.DbType = DbType.String;
                pmtAtividade.Value = _mdlTarefa.Atividade;
                cmd.Parameters.Add(pmtAtividade);

                if (cmd.ExecuteNonQuery() > 0)
                {
                    conexaodb.Close();
                    return true;
                }
                else
                {
                    conexaodb.Close();
                    return false;
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}
