<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="GameEntry.aspx.cs" Inherits="GameEntry" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/main.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
       <script src="javascript/jquery-ui-1.8.12.custom/js/jquery-1.5.1.min.js" type="text/javascript"></script>
    <script src="javascript/jquery-ui-1.8.12.custom/js/jquery-ui-1.8.12.custom.min.js"
        type="text/javascript"></script>

    <script src="javascript/jquery.datepick.min.js" type="text/javascript"></script>

    <link href="styles/jquery.datepick.css" rel="stylesheet" type="text/css" />
    <link href="styles/ui-dot-luv.datepick.css" rel="stylesheet" type="text/css" />
    <link href="javascript/jquery-ui-1.8.12.custom/development-bundle/themes/blue-stripe/jquery.ui.all.css"
        rel="stylesheet" type="text/css" />
        
    <link href="styles/jquery.timeentry.css" rel="stylesheet" type="text/css" />
    <script src="javascript/jquery.timeentry.js" type="text/javascript"></script>
   
    <script type="text/javascript">
	$(function() {
		$( "#accordion" ).accordion({
			collapsible: true
		});
		
	});
	$(document).ready(function(){
            
            
            $('#calendar').datepick({ 
                multiSelect: 999, multiSeparator: ', '
                });
        $('#spinnerText').timeEntry({spinnerImage: 'images/spinnerText.png', 
            spinnerSize: [30, 20, 8], spinnerBigSize: [60, 40, 16]});
        
        $('.timeEntry_control').live("mouseover", function() { 
            
            
            
            $('.spinners').each(function() { 
                console.log($(this));
                $(this).timeEntry('change', 
                    {spinnerBigImage: 'images/' + this.id + 'Big.png'}); 
            }); 
        }); 
            
            
        
    });
	</script>
	
	<style type="text/css">
	    .listbox
	    {
	    	float:left;
	    	}
	    #venues-list
	    {
	        	
	    }
	    #venue
	    {
	    	float:left;
	    	margin-right:15px;
	    	}
	    #entry-container
	    {
	    	width:450px;
	    	border:solid 1px white;
	    	float:right;
	    	margin-right:25px;
	    	}
	    
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     

<div id="accordion" style="width:400px;float:left;margin-right:15px;">
	<h3><a href="#">Venues</a></h3>
	<div>
	    <div id="venues-list" >
            <asp:ListBox CssClass="listbox" ID="ListBox1" runat="server">
                <asp:ListItem>Hillside Sports Club</asp:ListItem>
                <asp:ListItem>Valley Athletic Association</asp:ListItem>
                <asp:ListItem>Lakeridge Soccer Club</asp:ListItem>
            </asp:ListBox>
            <asp:Button ID="Button1" runat="server" Text="<" />
            <asp:Button ID="Button2" runat="server" Text=">" /><br />
            <asp:Button ID="Button3" runat="server" Text="Delete" />
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server">+Add Venue</asp:LinkButton>
            
	    </div>
	    <div id="fields-list" >
	        <p>Fields</p>
            <asp:ListBox CssClass="listbox" ID="ListBox5" runat="server">
                <asp:ListItem>Field 1</asp:ListItem>
                <asp:ListItem>Field 2</asp:ListItem>
                <asp:ListItem>Field 3</asp:ListItem>
            </asp:ListBox>
            <asp:Button ID="Button10" runat="server" Text="<" />
            <asp:Button ID="Button11" runat="server" Text=">" /><br />
            <asp:Button ID="Button12" runat="server" Text="Delete" />
            <br />
            <asp:LinkButton ID="LinkButton5" runat="server">+Add Field</asp:LinkButton>
            
	    </div>
	</div>
	<h3><a href="#">Age Groups</a></h3>
	<div id="age-lists" >
        <asp:ListBox CssClass="listbox" ID="ListBox2" runat="server">
            <asp:ListItem>Under 12</asp:ListItem>
            <asp:ListItem>Under 14</asp:ListItem>
            <asp:ListItem>Under 16</asp:ListItem>
            <asp:ListItem>Adult</asp:ListItem>
        </asp:ListBox>
        <asp:Button ID="Remove" runat="server" Text="<" />
        <asp:Button ID="Insert" runat="server" Text=">" /><br />
        <asp:Button ID="Delete" runat="server" Text="Delete" />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server">+Add Age Group</asp:LinkButton>
        
	</div>
	<h3><a href="#">Teams</a></h3>
	<div id="team-list" >
	    <div>
	       <p>Home</p>
	       
        <asp:ListBox CssClass="listbox" ID="ListBox3" runat="server">
            <asp:ListItem>Thundercats</asp:ListItem>
            <asp:ListItem>Smurfs</asp:ListItem>
            <asp:ListItem>Snorks</asp:ListItem>
            <asp:ListItem>Gnomes</asp:ListItem>
        </asp:ListBox>
        <asp:Button ID="Button4" runat="server" Text="<" />
        <asp:Button ID="Button5" runat="server" Text=">" /><br />
        <asp:Button ID="Button6" runat="server" Text="Delete" />
        <br />
        <asp:LinkButton ID="LinkButton3" runat="server">+Add Team</asp:LinkButton>
        
	    </div>
	    
        <div id="team-away-list" >
	         <p>Away</p>
        <asp:ListBox CssClass="listbox" ID="ListBox4" runat="server">
            <asp:ListItem>Under 12</asp:ListItem>
            <asp:ListItem>Under 14</asp:ListItem>
            <asp:ListItem>Under 16</asp:ListItem>
            <asp:ListItem>Adult</asp:ListItem>
        </asp:ListBox>
        <asp:Button ID="Button7" runat="server" Text="<" />
        <asp:Button ID="Button8" runat="server" Text=">" /><br />
        <asp:Button ID="Button9" runat="server" Text="Delete" />
        <br />
        <asp:LinkButton ID="LinkButton4" runat="server">+Add Team</asp:LinkButton>
        
	    </div>
	</div>
	
	<h3><a href="#">Date/Time</a></h3>
	<div>
		<div id="calendar">
		
		</div>
		<input type="text" class="spinners" id="spinnerText" /><div id="expand" style="position:absolute;left: 769px; top: 439.017px; width: 60px; height: 40px; background:url('images/spinnerTextBig.png') no-repeat scroll 0px 0px transparent; z-index: 10;" title="Decrement"></div>
	</div>
</div>

      <div></div>
      <div id="entry-container">
             <div id="venue">
                    Hillside Sports Club <br />
                    Field 1                 <br />
                    5/30/11 1:00 PM     <br />
            </div>
            <div id="age">
                Adult
            </div>
            <div id="home">
                Home: Thundercats
            </div>
            <div id="away">
                Visitors: Smurfs
            </div>
          <asp:Button ID="Button13" runat="server" Text="Add This Game" />
      </div>
 
 <div id="game-table" style="clear:right;margin-left:489px;padding-top:25px;">
    <table border="1">
        <tr>
            <td>
                Venue
            </td>
            <td>Field</td>
            <td>Date</td>
            <td>Time</td>
            <td>Home</td>
            <td>Away</td>
            <td>Number of Officials</td>
        </tr>
        <tr>
            <td>
                Valley Athletic Association
            </td>
            <td>Field 2</td>
            <td>5/14/11</td>
            <td>4:00 PM</td>
            <td>Transformers</td>
            <td>Snorks</td>
            <td>2</td>
        </tr>
    </table>
 
 </div>
</asp:Content>

