using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CamadaModelo;
using CamadaControle;
using System.Data;

namespace ProjetoFacuS
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendario.SelectedDate = DateTime.Now;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtDataInicio_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TxtDataFim_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnCadastrar_Click(object sender, EventArgs e)
        {
            int dia = 0, mes = 0, ano = 0;
            mdlTarefa _mdlTarefa = new mdlTarefa();
            ctlTarefa _ctlTarefa = new ctlTarefa();
            dia = Calendario.SelectedDate.Day;
            mes = Calendario.SelectedDate.Month;
            ano = Calendario.SelectedDate.Year;
            _mdlTarefa.Tarefa = TxtTarefa.Text;
            //lblResultado.Text = Calendario.SelectedDate.ToString();
            _mdlTarefa.Prazo = Calendario.SelectedDate.Date;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void TxtTarefa_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Calendario_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}