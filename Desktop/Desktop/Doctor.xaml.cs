using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Desktop
{
    /// <summary>
    /// Interaction logic for Doctor.xaml
    /// </summary>
    public partial class Doctor : Page
    {
        HospitalEntities db = new HospitalEntities();
        public Doctor()
        {
            InitializeComponent();
            Dg_name.ItemsSource=db.Patients.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Dg_name.ItemsSource = db.Patients.ToList();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Patient pat =new Patient();
            int idfromtxt = int .Parse(id_txt.Text);
            pat=db.Patients.FirstOrDefault(x=>x.id == idfromtxt);
            pat.Room_Number = int.Parse( Room_txt.Text);
            db.Patients.AddOrUpdate( pat );
            MessageBox.Show("Updated Succ");
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Patient pat = new Patient();
            int idfromtxt = int.Parse(id_txt.Text);
            pat = db.Patients.FirstOrDefault(x => x.id == idfromtxt);
            db.Patients.Remove( pat );
            db.SaveChanges();
            MessageBox.Show("Record Delected");
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            if (id_txt.Text != "" && Room_txt.Text != "")
            {
                Patient pa = new Patient();
                int hh = int.Parse(id_txt.Text);
                int kk = int.Parse(Room_txt.Text);
                Dg_name.ItemsSource = db.Patients.Where(x => x.id == hh && x.Room_Number == kk).ToList();
            }
            else if (id_txt.Text != "" && Room_txt.Text == "")
            {
                Patient p = new Patient();
                int id = int.Parse(id_txt.Text);
                Dg_name.ItemsSource = db.Patients.Where(x => x.id == id).ToList();
            }
            else if (id_txt.Text == "" && Room_txt.Text != "")
            {
                Patient l = new Patient();
                int pp = int.Parse(Room_txt.Text);
                Dg_name.ItemsSource = db.Patients.Where(x => x.Room_Number == pp).ToList();
            }
            else if (name_txt.Text!="" && id_txt.Text=="" && Room_txt.Text=="")
            {
                Patient l = new Patient();
                Dg_name.ItemsSource = db.Patients.Where(x=>x.Fname.Contains ( name_txt.Text)).ToList();
            }
            else
                MessageBox.Show("Please enter id or room number");
        }
    }
}
