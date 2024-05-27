using System;
using System.Collections.Generic;
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
    /// Interaction logic for Patient.xaml
    /// </summary>
    public partial class Patient : Page
    {
        HospitalEntities db = new HospitalEntities();
        public Patient()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Patient pat = new Patient();
            pat.Fname=name_txt.Text;
            pat.Age = int.Parse (Age_txt.Text);
            pat.Room_Number= int.Parse(Room_txt.Text);
            pat.Lname = Last_txt.Text;
            db.Patients.Add(pat);
            db.SaveChanges();
            MessageBox.Show("Added Succ");
        }
    }
}
