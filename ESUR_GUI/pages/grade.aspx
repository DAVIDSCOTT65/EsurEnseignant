﻿<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="grade.aspx.cs" Inherits="ESUR_GUI.pages.grade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Grade
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Grade Registration</h1>
                            </div>
                        </header>


                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtDesign" CssClass="form-control" Enabled="true" runat="server" Placeholder="Designation type"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtAcro" CssClass="form-control" runat="server" Placeholder="Acronyme"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtDate" CssClass="form-control" Enabled="true" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                       <asp:Button ID="btnSave" runat="server" Text="Enregistrer" CssClass="btn btn-success" OnClick="btnSave_Click" ToolTip="Save the datas" Height="32px" style="margin-left: 554px" Width="213px" />
                                    &nbsp;
                                    </div>
                           </div>
                        </div>
                    </section>
                </div>
            </div>
            
        </section>
    </section>
           
</asp:Content>
