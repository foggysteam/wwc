<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="cc1" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <h1>WEEKLY WAGES CALCULATOR</h1>
            </div>
        </div>
        <div class="col-md-9">
            <div class="row">
                <div class="form-group col-md-3">
                    <div class="checkbox">
                        <label class="btn btn-default btnd">
                            <asp:CheckBox ID="IsMon" runat="server" Text="Monday" OnCheckedChanged="IsMon_CheckedChanged" AutoPostBack="true" />
                        </label>
                    </div>
                    <div runat="server" id="MonDiv" visible="false" class="floatCenter">
                        <div class="tpout">
                            <div class="col-md-3">
                                <asp:Label ID="Label3" runat="server" Text="Start"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <cc1:TimeSelector ID="TimeSelectorMonSt" runat="server" DisplaySeconds="false" DisplayButtons="true" CssClass="pickers">
                                </cc1:TimeSelector>
                            </div>
                        </div>
                        <div class="tpout">
                            <div class="col-md-3">
                                <asp:Label ID="Label4" runat="server" Text="End"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <cc1:TimeSelector ID="TimeSelectorMonEnd" runat="server" DisplaySeconds="false" DisplayButtons="true" CssClass="pickers">
                                </cc1:TimeSelector>
                            </div>
                        </div>
                        <div class="lunchB">
                            <div class="col-md-4" style="margin-top: 4%; padding-left: 4%;">
                                <asp:Label ID="Label2" runat="server" Text="Label">Break?</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="MonBrTxt" runat="server" Text="0" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div style="margin-top: 4%; padding-left: 0;" class="col-md-2">min</div>
                        </div>
                        <br />
                        <asp:Label ID="resultHourMon" runat="server" Text="Total Time:&emsp;&emsp;&emsp;00:00"></asp:Label><br />
                        <asp:Label ID="resultEarnMon" runat="server" Text="Total Earned:&emsp;£ 0"></asp:Label><br />
                        <asp:Label ID="resultMon" runat="server" Text="0" Visible="false"></asp:Label>
                    </div>
                </div>
                <div class="form-group col-md-3">
                    <div class="checkbox">
                        <label class="btn btn-default btnd">
                            <asp:CheckBox ID="IsTues" runat="server" Text="Tuesday" OnCheckedChanged="IsTues_CheckedChanged" AutoPostBack="true" />
                        </label>
                    </div>
                    <div runat="server" id="TueDiv" visible="false" class="floatCenter">
                        <div class="tpout">
                            <div class="col-md-3">
                                <asp:Label ID="Label1" runat="server" Text="Start"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <cc1:TimeSelector ID="TimeSelectorTueSt" runat="server" DisplaySeconds="false" DisplayButtons="true" CssClass="pickers">
                                </cc1:TimeSelector>
                            </div>
                        </div>
                        <div class="tpout">
                            <div class="col-md-3">
                                <asp:Label ID="Label5" runat="server" Text="End"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <cc1:TimeSelector ID="TimeSelectorTueEnd" runat="server" DisplaySeconds="false" DisplayButtons="true" CssClass="pickers">
                                </cc1:TimeSelector>
                            </div>
                        </div>
                        <div class="lunchB">
                            <div class="col-md-4" style="margin-top: 4%; padding-left: 4%;">
                                <asp:Label ID="Label6" runat="server" Text="Label">Break?</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TueBrTxt" runat="server" Text="0" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div style="margin-top: 4%; padding-left: 0;" class="col-md-2">min</div>
                        </div>
                        <br />
                        <asp:Label ID="resultHourTue" runat="server" Text="Total Time:&emsp;&emsp;&emsp;00:00"></asp:Label><br />
                        <asp:Label ID="resultEarnTue" runat="server" Text="Total Earned:&emsp;£ 0"></asp:Label><br />
                        <asp:Label ID="resultTue" runat="server" Text="0" Visible="false"></asp:Label>
                    </div>
                </div>

                <div class="form-group col-md-3">
                    <div class="checkbox">
                        <label class="btn btn-default btnd">
                            <asp:CheckBox ID="IsWed" runat="server" Text="Wednesday" OnCheckedChanged="IsWed_CheckedChanged" AutoPostBack="true" />
                        </label>
                    </div>
                    <div runat="server" id="WedDiv" visible="false" class="floatCenter">
                        <div class="tpout">
                            <div class="col-md-3">
                                <asp:Label ID="Label9" runat="server" Text="Start"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <cc1:TimeSelector ID="TimeSelectorWedSt" runat="server" DisplaySeconds="false" DisplayButtons="true" CssClass="pickers">
                                </cc1:TimeSelector>
                            </div>
                        </div>
                        <div class="tpout">
                            <div class="col-md-3">
                                <asp:Label ID="Label10" runat="server" Text="End"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <cc1:TimeSelector ID="TimeSelectorWedEnd" runat="server" DisplaySeconds="false" DisplayButtons="true" CssClass="pickers">
                                </cc1:TimeSelector>
                            </div>
                        </div>
                        <div class="lunchB">
                            <div class="col-md-4" style="margin-top: 4%; padding-left: 4%;">
                                <asp:Label ID="Label11" runat="server" Text="Label">Break?</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="WedBrTxt" runat="server" Text="0" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div style="margin-top: 4%; padding-left: 0;" class="col-md-2">min</div>
                        </div>
                        <br />
                        <asp:Label ID="resultHourWed" runat="server" Text="Total Time:&emsp;&emsp;&emsp;00:00"></asp:Label><br />
                        <asp:Label ID="resultEarnWed" runat="server" Text="Total Earned:&emsp;£ 0"></asp:Label><br />
                        <asp:Label ID="resultWed" runat="server" Text="0" Visible="false"></asp:Label>
                    </div>
                </div>
                <div class="form-group col-md-3">
                    <div class="checkbox">
                        <label class="btn btn-default btnd">
                            <asp:CheckBox ID="IsThur" runat="server" Text="Thursday" AutoPostBack="true" OnCheckedChanged="IsThur_CheckedChanged" />
                        </label>
                    </div>
                    <div runat="server" id="ThuDiv" visible="false" class="floatCenter">
                        <div class="tpout">
                            <div class="col-md-3">
                                <asp:Label ID="Label14" runat="server" Text="Start"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <cc1:TimeSelector ID="TimeSelectorThuSt" runat="server" DisplaySeconds="false" DisplayButtons="true" CssClass="pickers">
                                </cc1:TimeSelector>
                            </div>
                        </div>
                        <div class="tpout">
                            <div class="col-md-3">
                                <asp:Label ID="Label15" runat="server" Text="End"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <cc1:TimeSelector ID="TimeSelectorThuEnd" runat="server" DisplaySeconds="false" DisplayButtons="true" CssClass="pickers">
                                </cc1:TimeSelector>
                            </div>
                        </div>
                        <div class="lunchB">
                            <div class="col-md-4" style="margin-top: 4%; padding-left: 4%;">
                                <asp:Label ID="Label16" runat="server" Text="Label">Break?</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="ThuBrTxt" runat="server" Text="0" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div style="margin-top: 4%; padding-left: 0;" class="col-md-2">min</div>
                        </div>
                        <br />
                        <asp:Label ID="resultHourThu" runat="server" Text="Total Time:&emsp;&emsp;&emsp;00:00"></asp:Label><br />
                        <asp:Label ID="resultEarnThu" runat="server" Text="Total Earned:&emsp;£ 0"></asp:Label><br />
                        <asp:Label ID="resultThu" runat="server" Text="0" Visible="false"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-3">
                    <div class="checkbox">
                        <label class="btn btn-default btnd">
                            <asp:CheckBox ID="IsFri" runat="server" Text="Friday" AutoPostBack="true" OnCheckedChanged="IsFri_CheckedChanged" />
                        </label>
                    </div>
                    <div runat="server" id="FriDiv" visible="false" class="floatCenter">
                        <div class="tpout">
                            <div class="col-md-3">
                                <asp:Label ID="Label19" runat="server" Text="Start"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <cc1:TimeSelector ID="TimeSelectorFriSt" runat="server" DisplaySeconds="false" DisplayButtons="true" CssClass="pickers">
                                </cc1:TimeSelector>
                            </div>
                        </div>
                        <div class="tpout">
                            <div class="col-md-3">
                                <asp:Label ID="Label20" runat="server" Text="End"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <cc1:TimeSelector ID="TimeSelectorFriEnd" runat="server" DisplaySeconds="false" DisplayButtons="true" CssClass="pickers">
                                </cc1:TimeSelector>
                            </div>
                        </div>
                        <div class="lunchB">
                            <div class="col-md-4" style="margin-top: 4%; padding-left: 4%;">
                                <asp:Label ID="Label21" runat="server" Text="Label">Break?</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="FriBrTxt" runat="server" Text="0" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div style="margin-top: 4%; padding-left: 0;" class="col-md-2">min</div>
                        </div>
                        <br />
                        <asp:Label ID="resultHourFri" runat="server" Text="Total Time:&emsp;&emsp;&emsp;00:00"></asp:Label><br />
                        <asp:Label ID="resultEarnFri" runat="server" Text="Total Earned:&emsp;£ 0"></asp:Label><br />
                        <asp:Label ID="resultFri" runat="server" Text="0" Visible="false"></asp:Label>
                    </div>
                </div>
                <div class="form-group col-md-3">
                    <div class="checkbox">
                        <label class="btn btn-default btnd">
                            <asp:CheckBox ID="IsSat" runat="server"
                                Text="Saturday" AutoPostBack="true" OnCheckedChanged="IsSat_CheckedChanged" />
                        </label>
                    </div>
                    <div runat="server" id="SatDiv" visible="false" class="floatCenter">
                        <div class="tpout">
                            <div class="col-md-3">
                                <asp:Label ID="Label24" runat="server" Text="Start"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <cc1:TimeSelector ID="TimeSelectorSatSt" runat="server" DisplaySeconds="false" DisplayButtons="true" CssClass="pickers">
                                </cc1:TimeSelector>
                            </div>
                        </div>
                        <div class="tpout">
                            <div class="col-md-3">
                                <asp:Label ID="Label25" runat="server" Text="End"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <cc1:TimeSelector ID="TimeSelectorSatEnd" runat="server" DisplaySeconds="false" DisplayButtons="true" CssClass="pickers">
                                </cc1:TimeSelector>
                            </div>
                        </div>
                        <div class="lunchB">
                            <div class="col-md-4" style="margin-top: 4%; padding-left: 4%;">
                                <asp:Label ID="Label26" runat="server" Text="Label">Break?</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="SatBrTxt" runat="server" Text="0" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div style="margin-top: 4%; padding-left: 0;" class="col-md-2">min</div>
                        </div>
                        <br />
                        <asp:Label ID="resultHourSat" runat="server" Text="Total Time:&emsp;&emsp;&emsp;00:00"></asp:Label><br />
                        <asp:Label ID="resultEarnSat" runat="server" Text="Total Earned:&emsp;£ 0"></asp:Label><br />
                        <asp:Label ID="resultSat" runat="server" Text="0" Visible="false"></asp:Label>
                    </div>
                </div>
                <div class="form-group col-md-3">
                    <div class="checkbox">
                        <label class="btn btn-default btnd">
                            <asp:CheckBox ID="IsSun" runat="server"
                                Text="Sunday" AutoPostBack="true" OnCheckedChanged="IsSun_CheckedChanged" />
                        </label>
                    </div>
                    <div runat="server" id="SunDiv" visible="false" class="floatCenter">
                        <div class="tpout">
                            <div class="col-md-3">
                                <asp:Label ID="Label29" runat="server" Text="Start"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <cc1:TimeSelector ID="TimeSelectorSunSt" runat="server" DisplaySeconds="false" DisplayButtons="true" CssClass="pickers">
                                </cc1:TimeSelector>
                            </div>
                        </div>
                        <div class="tpout">
                            <div class="col-md-3">
                                <asp:Label ID="Label30" runat="server" Text="End"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <cc1:TimeSelector ID="TimeSelectorSunEnd" runat="server" DisplaySeconds="false" DisplayButtons="true" CssClass="pickers">
                                </cc1:TimeSelector>
                            </div>
                        </div>
                        <div class="lunchB">
                            <div class="col-md-4" style="margin-top: 4%; padding-left: 4%;">
                                <asp:Label ID="Label31" runat="server" Text="Label">Break?</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="SunBrTxt" runat="server" Text="0" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div style="margin-top: 4%; padding-left: 0;" class="col-md-2">min</div>
                        </div>
                        <br />
                        <asp:Label ID="resultHourSun" runat="server" Text="Total Time:&emsp;&emsp;&emsp;00:00"></asp:Label><br />
                        <asp:Label ID="resultEarnSun" runat="server" Text="Total Earned:&emsp;£ 0"></asp:Label><br />
                        <asp:Label ID="resultSun" runat="server" Text="0" Visible="false"></asp:Label>
                    </div>
                </div>

            </div>
            <div class="botdiv">
                <div class="col-md-offset-3 col-md-6">
                    <div class="row">
                        <hr />
                        <div class="col-md-offset-2 col-md-4">
                            <h5>Hourly Rate:</h5>
                        </div>
                        <div class="col-md-1">
                            <h5>£</h5>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="PerHourTxt" runat="server" Text="0" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-md-offset-3 col-md-6">
                    <br />
                    <div class="col-md-6">
                        <asp:Button ID="calctime" runat="server" Text="Calculate Hours" OnClick="calctime_Click" CssClass="btn btn-default btng" />
                    </div>
                    <div class="col-md-6">
                        <asp:Button ID="calcW" runat="server" Text="Calculate Earnings" OnClick="calcW_Click" CssClass="btn btn-default btng" /><br />
                    </div>
                    
                    <br />
                    <br />
                    <div id="resdiv" class="" runat="server">
                        <asp:Label ID="resHoursWBr" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="resHours" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="resEarned" runat="server" Text=""></asp:Label><br /><hr />
                        <asp:Button ID="reload" runat="server" Text="Reload/Cancel" OnClick="reload_Click" CssClass="btn btn-default btng" visible="false"/>
                    
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="logo">
                <img src="Content/Logo.png" />
            </div>
            <div class="alert-success infobox">
                <p>Get Started...</p>
                <ol>
                    <li>Pick Working Days.</li>
                    <li>Set Start time and End time for each day selected.</li>
                    <li>Enter Break duration in minutes if break time is not paid.</li>
                    <li>Press Calculate Hours to view hours per day.</li>
                    <li>Enter Hourly Rate in £.</li>
                    <li>Press Calculate Earnings.</li>
                </ol>
            </div>
        </div>
    </div>
</asp:Content>
