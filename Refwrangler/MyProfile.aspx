<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" Title="Untitled Page" %>
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
    
    
    <script type="text/javascript">
        
        $(document).ready(function(){
            
            $("#tabs").tabs();
            $('#calendar').datepick({ 
                multiSelect: 999, multiSeparator: ', '
                });
        });
    </script>
    
    <style type="text/css">
        #profile-photo 
        {
        	padding:15px;
        	float:left;
        	margin-right:15px;
        	}
        	
        #tabs
        {
        	float:right;
        	width:650px;
        	}
        
        
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="profile-photo">
        <asp:Image Width="200px" ID="Image1" ImageUrl="~/images/referee.jpg" runat="server" />
    </div>
    
    <div id="tabs">
	    <ul>
		    <li><a href="#tabs-1">Information</a></li>
		    <li><a href="#tabs-2">Certifications</a></li>
		    <li><a href="#tabs-3">Availability</a></li>
		    <li><a href="#tabs-4">Partners</a></li>
		    <li><a href="#tabs-5">Game Log</a></li>
	    </ul>
	    <div id="tabs-1">
		    <label>Name: </label><label>Pierluigi Collina</label>
		    <br />
		    <label>Location: </label><label>Cincinnati, OH</label><br />
		    <label>Experience:</label><label>12 years</label><br />
		    <label>Organizations:</label>
		    <ul>
		        <li>Cincinnati Soccer Club</li>
		        <li>Warren County Athletic Association</li>
		    </ul>
		    
	    </div>
	    <div id="tabs-2">
		    <p>Soccer Grade F</p>
		    <p>Soccer Grade E</p>
		    <p>Basketball High School</p>
	    </div>
	    <div id="tabs-3">
	        <p>Blocked Dates:</p>
	        <div id="calendar">
	            
	        </div>
		</div>
	    <div id="tabs-4">
		    <div><img width="50px" src="images/reficon.png" alt="reficon" /><span>Tim Jackson</span></div> 
		    <div><img width="50px" src="images/reficon.png" alt="reficon" /><span>James Johnson</span></div> 
	    </div>
	    <div id="tabs-5">
		    <table border="1">
		        <tr>
		            <td>Date</td>
		            <td>Age Group</td>
		            <td>Venue</td>
		            <td>Home/Away</td>
		            <td>Officials</td>
		            <td>Status</td>
		        </tr>
		        <tr>
		            <td>7/1/11</td>
		            <td>12 Girls</td>
		            <td>Olympian Field 2</td>
		            <td>Panthers/Tigers</td>
		            <td>
		                Pierluigi Collina <br />
		                James Johnson
		            </td>
		            <td>
		                Assigned
		            </td>
		        </tr>
		        <tr>
		            <td>8/12/10</td>
		            <td>16 Boys</td>
		            <td>Olympian Field 4</td>
		            <td>Buckeyes/Bearcats</td>
		            <td>
		                Pierluigi Collina <br />
		                Pam Jackson
		            </td>
		            <td>
		                Finished
		            </td>
		        </tr>
		    </table>
	    </div>
    </div>
    
    
</asp:Content>

