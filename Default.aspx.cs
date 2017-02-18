using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            DateTime dt = DateTime.Parse("00:00");
            MKB.TimePicker.TimeSelector.AmPmSpec am_pm;
            if (dt.ToString("tt") == "AM")
            {
                am_pm = MKB.TimePicker.TimeSelector.AmPmSpec.AM;
            }
            else
            {
                am_pm = MKB.TimePicker.TimeSelector.AmPmSpec.PM;
            }
            TimeSelectorMonSt.SetTime(dt.Hour, dt.Minute, am_pm);
            TimeSelectorMonEnd.SetTime(dt.Hour, dt.Minute, am_pm);
            TimeSelectorTueSt.SetTime(dt.Hour, dt.Minute, am_pm);
            TimeSelectorTueEnd.SetTime(dt.Hour, dt.Minute, am_pm);
            TimeSelectorWedSt.SetTime(dt.Hour, dt.Minute, am_pm);
            TimeSelectorWedEnd.SetTime(dt.Hour, dt.Minute, am_pm);
            TimeSelectorThuSt.SetTime(dt.Hour, dt.Minute, am_pm);
            TimeSelectorThuEnd.SetTime(dt.Hour, dt.Minute, am_pm);
            TimeSelectorFriSt.SetTime(dt.Hour, dt.Minute, am_pm);
            TimeSelectorFriEnd.SetTime(dt.Hour, dt.Minute, am_pm);
            TimeSelectorSatSt.SetTime(dt.Hour, dt.Minute, am_pm);
            TimeSelectorSatEnd.SetTime(dt.Hour, dt.Minute, am_pm);
            TimeSelectorSunSt.SetTime(dt.Hour, dt.Minute, am_pm);
            TimeSelectorSunEnd.SetTime(dt.Hour, dt.Minute, am_pm);
        }
    }

    protected void calctime_Click(object sender, EventArgs e)
    {
        DateTime MonSt = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelectorMonSt.Hour, TimeSelectorMonSt.Minute, TimeSelectorMonSt.Second, TimeSelectorMonSt.AmPm));
        DateTime MonEnd = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelectorMonEnd.Hour, TimeSelectorMonEnd.Minute, TimeSelectorMonEnd.Second, TimeSelectorMonEnd.AmPm));

        TimeSpan resMon = MonEnd - MonSt;
        double minutesPDMon = resMon.TotalMinutes;
        resultMon.Text = Convert.ToString(minutesPDMon);
        resultHourMon.Text = "Total Time:&emsp;&emsp;&emsp;" + string.Format("{0:00}:{1:00}", resMon.Hours, resMon.Minutes);


        DateTime TueSt = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelectorTueSt.Hour, TimeSelectorTueSt.Minute, TimeSelectorTueSt.Second, TimeSelectorTueSt.AmPm));
        DateTime TueEnd = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelectorTueEnd.Hour, TimeSelectorTueEnd.Minute, TimeSelectorTueEnd.Second, TimeSelectorTueEnd.AmPm));

        TimeSpan resTue = TueEnd - TueSt;
        double minutesPDTue = resTue.TotalMinutes;
        resultTue.Text = Convert.ToString(minutesPDTue);
        resultHourTue.Text = "Total Time:&emsp;&emsp;&emsp;" + string.Format("{0:00}:{1:00}", resTue.Hours, resTue.Minutes);


        DateTime WedSt = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelectorWedSt.Hour, TimeSelectorWedSt.Minute, TimeSelectorWedSt.Second, TimeSelectorWedSt.AmPm));
        DateTime WedEnd = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelectorWedEnd.Hour, TimeSelectorWedEnd.Minute, TimeSelectorWedEnd.Second, TimeSelectorWedEnd.AmPm));

        TimeSpan resWed = WedEnd - WedSt;
        double minutesPDWed = resWed.TotalMinutes;
        resultWed.Text = Convert.ToString(minutesPDWed);
        resultHourWed.Text = "Total Time:&emsp;&emsp;&emsp;" + string.Format("{0:00}:{1:00}", resWed.Hours, resWed.Minutes);


        DateTime ThuSt = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelectorThuSt.Hour, TimeSelectorThuSt.Minute, TimeSelectorThuSt.Second, TimeSelectorThuSt.AmPm));
        DateTime ThuEnd = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelectorThuEnd.Hour, TimeSelectorThuEnd.Minute, TimeSelectorThuEnd.Second, TimeSelectorThuEnd.AmPm));

        TimeSpan resThu = ThuEnd - ThuSt;
        double minutesPDThu = resThu.TotalMinutes;
        resultThu.Text = Convert.ToString(minutesPDThu);
        resultHourThu.Text = "Total Time:&emsp;&emsp;&emsp;" + string.Format("{0:00}:{1:00}", resThu.Hours, resThu.Minutes);


        DateTime FriSt = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelectorFriSt.Hour, TimeSelectorFriSt.Minute, TimeSelectorFriSt.Second, TimeSelectorFriSt.AmPm));
        DateTime FriEnd = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelectorFriEnd.Hour, TimeSelectorFriEnd.Minute, TimeSelectorFriEnd.Second, TimeSelectorFriEnd.AmPm));

        TimeSpan resFri = FriEnd - FriSt;
        double minutesPDFri = resFri.TotalMinutes;
        resultFri.Text = Convert.ToString(minutesPDFri);
        resultHourFri.Text = "Total Time:&emsp;&emsp;&emsp;" + string.Format("{0:00}:{1:00}", resFri.Hours, resFri.Minutes);


        DateTime SatSt = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelectorSatSt.Hour, TimeSelectorSatSt.Minute, TimeSelectorSatSt.Second, TimeSelectorSatSt.AmPm));
        DateTime SatEnd = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelectorSatEnd.Hour, TimeSelectorSatEnd.Minute, TimeSelectorSatEnd.Second, TimeSelectorSatEnd.AmPm));

        TimeSpan resSat = SatEnd - SatSt;
        double minutesPDSat = resSat.TotalMinutes;
        resultSat.Text = Convert.ToString(minutesPDSat);
        resultHourSat.Text = "Total Time:&emsp;&emsp;&emsp;" + string.Format("{0:00}:{1:00}", resSat.Hours, resSat.Minutes);


        DateTime SunSt = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelectorSunSt.Hour, TimeSelectorSunSt.Minute, TimeSelectorSunSt.Second, TimeSelectorSunSt.AmPm));
        DateTime SunEnd = DateTime.Parse(string.Format("{0}:{1}:{2} {3}", TimeSelectorSunEnd.Hour, TimeSelectorSunEnd.Minute, TimeSelectorSunEnd.Second, TimeSelectorSunEnd.AmPm));

        TimeSpan resSun = SunEnd - SunSt;
        double minutesPDSun = resSun.TotalMinutes;
        resultSun.Text = Convert.ToString(minutesPDSun);
        resultHourSun.Text = "Total Time:&emsp;&emsp;&emsp;" + string.Format("{0:00}:{1:00}", resSun.Hours, resSun.Minutes);

    }



    protected void calcW_Click(object sender, EventArgs e)
    {
        double perHour = Convert.ToDouble(PerHourTxt.Text);

        double breakDurationMon = Convert.ToDouble(MonBrTxt.Text);
        double minutesMon = Convert.ToDouble(resultMon.Text);
        double resMon = ((minutesMon - breakDurationMon) / 60) * perHour;
        resultEarnMon.Text = "Total Earned:&emsp;£ " + (resMon = System.Math.Round(resMon, 2)).ToString();

        double breakDurationTue = Convert.ToDouble(TueBrTxt.Text);
        double minutesTue = Convert.ToDouble(resultTue.Text);
        double resTue = ((minutesTue - breakDurationTue) / 60) * perHour;
        resultEarnTue.Text = "Total Earned:&emsp;£ " + (resTue = System.Math.Round(resTue, 2)).ToString();

        double breakDurationWed = Convert.ToDouble(WedBrTxt.Text);
        double minutesWed = Convert.ToDouble(resultWed.Text);
        double resWed = ((minutesWed - breakDurationWed) / 60) * perHour;
        resultEarnWed.Text = "Total Earned:&emsp;£ " + (resWed = System.Math.Round(resWed, 2)).ToString();

        double breakDurationThu = Convert.ToDouble(ThuBrTxt.Text);
        double minutesThu = Convert.ToDouble(resultThu.Text);
        double resThu = ((minutesThu - breakDurationThu) / 60) * perHour;
        resultEarnThu.Text = "Total Earned:&emsp;£ " + (resThu = System.Math.Round(resThu, 2)).ToString();

        double breakDurationFri = Convert.ToDouble(FriBrTxt.Text);
        double minutesFri = Convert.ToDouble(resultFri.Text);
        double resFri = ((minutesFri - breakDurationFri) / 60) * perHour;
        resultEarnFri.Text = "Total Earned:&emsp;£ " + (resFri = System.Math.Round(resFri, 2)).ToString();

        double breakDurationSat = Convert.ToDouble(SatBrTxt.Text);
        double minutesSat = Convert.ToDouble(resultSat.Text);
        double resSat = ((minutesSat - breakDurationSat) / 60) * perHour;
        resultEarnSat.Text = "Total Earned:&emsp;£ " + (resSat = System.Math.Round(resSat, 2)).ToString();

        double breakDurationSun = Convert.ToDouble(SunBrTxt.Text);
        double minutesSun = Convert.ToDouble(resultSun.Text);
        double resSun = ((minutesSun - breakDurationSun) / 60) * perHour;
        resultEarnSun.Text = "Total Earned:&emsp;£ " + (resSun = System.Math.Round(resSun, 2)).ToString();


        double totalMinPerWeek = (minutesMon + minutesTue + minutesWed + minutesThu + minutesFri + minutesSat + minutesSun);
        double totalBrPerWeek = (breakDurationMon + breakDurationTue + breakDurationWed + breakDurationThu + breakDurationFri + breakDurationSat + breakDurationSun);
        double totalHoursPerWeek = ((totalMinPerWeek - totalBrPerWeek) / 60);
        double totalHoursPerWeekWBr = (totalMinPerWeek / 60);
        double totalEarnPerWeek = totalHoursPerWeek * perHour;

        resdiv.Attributes["class"] = "alert-success";

        resHoursWBr.Text = "Total Hours Per Week plus Breaks:&emsp;&emsp;" + (totalHoursPerWeekWBr = System.Math.Round(totalHoursPerWeekWBr, 2)).ToString() + " Hours";
        resHours.Text = "Total Work Hours Per Week:&emsp;&emsp;" + (totalHoursPerWeek = System.Math.Round(totalHoursPerWeek, 2)).ToString() + " Hours";
        resEarned.Text = "Total Earned Per Week:&emsp;&emsp;£ " + (totalEarnPerWeek = System.Math.Round(totalEarnPerWeek, 2)).ToString();
        reload.Visible = true;
    }



    protected void IsMon_CheckedChanged(object sender, EventArgs e)
    {
        if (IsMon.Checked)
        {
            MonDiv.Visible = true;
        }
        if (!IsMon.Checked)
        {
            MonDiv.Visible = false;
        }

    }

    protected void IsTues_CheckedChanged(object sender, EventArgs e)
    {
        if (IsTues.Checked)
        {
            TueDiv.Visible = true;
        }
        if (!IsTues.Checked)
        {
            TueDiv.Visible = false;
        }
    }

    protected void IsWed_CheckedChanged(object sender, EventArgs e)
    {
        if (IsWed.Checked)
        {
            WedDiv.Visible = true;
        }
        if (!IsWed.Checked)
        {
            WedDiv.Visible = false;
        }
    }

    protected void IsThur_CheckedChanged(object sender, EventArgs e)
    {
        if (IsThur.Checked)
        {
            ThuDiv.Visible = true;
        }
        if (!IsThur.Checked)
        {
            ThuDiv.Visible = false;
        }
    }

    protected void IsFri_CheckedChanged(object sender, EventArgs e)
    {
        if (IsFri.Checked)
        {
            FriDiv.Visible = true;
        }
        if (!IsFri.Checked)
        {
            FriDiv.Visible = false;
        }
    }

    protected void IsSat_CheckedChanged(object sender, EventArgs e)
    {
        if (IsSat.Checked)
        {
            SatDiv.Visible = true;
        }
        if (!IsSat.Checked)
        {
            SatDiv.Visible = false;
        }
    }

    protected void IsSun_CheckedChanged(object sender, EventArgs e)
    {
        if (IsSun.Checked)
        {
            SunDiv.Visible = true;
        }
        if (!IsSun.Checked)
        {
            SunDiv.Visible = false;
        }
    }

    protected void reload_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);
    }
}