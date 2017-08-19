<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MC-Certificate.aspx.cs" Inherits="WebApplication1.MC_Certificate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
/* Full-width input fields */
input[type=text], input[type=password], textarea {
    width: 90%;
    /*padding: 12px 20px;*/
    /*margin: 8px 0;*/
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    /*float: right;*/ 
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: left;
    width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
        .auto-style1 {
            text-align: right;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: left;
            background-color: lightgray;
        }
        .th{background-color:lightgray;}
        
        .auto-style4 {
            background-color: lightgray;
            width: 151px;
        }
        .auto-style5 {
            width: 151px;
        }
        
    </style>
<body>
    <h2>Mechanical Completion Certificate</h2>

    <form id="form1" runat="server" style="border:1px solid #ccc">
    <div class="container">
        <div class="auto-style1">
    <label><b>Project No.:</b></label>     
    <input type="text" name="email" required="required"/><br />

    <label><b>Plant:</b></label>
    <input type="text" name="psw" required/><br />

    <label><b>System/Sub-System:</b></label>
    <input type="text" name="psw-repeat" required/><br />
    
    <label><b>Equipment:</b></label>
    <input type="text" name="psw-repeat" required/><br />

    <label><b>Discipline:</b></label>
    <input type="text" name="psw-repeat" required/><br />

    <label><b>Date:</b></label>
    <input type="text" name="psw-repeat" required/><br />

    <label><b>Description:</b></label>
    <textarea id="subject" name="subject" style="height:200px"></textarea>
        </div><br />
        <div class="auto-style3">
                <label><b>List of work pending:</b></label>             
        </div>
                <table class="auto-style2">
                    <tr><th class="th">No. Item</th>
                        <th class="th">Description</th>
                        <th class="th">No. Item</th>
                        <th class="th">Description</th>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox2" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox3" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox4" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TextBox5" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox6" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox7" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox8" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TextBox9" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox10" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox11" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox12" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TextBox13" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox14" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox15" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox16" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TextBox17" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox18" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox19" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox20" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="TextBox21" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox22" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox23" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox24" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    
                </table>
            <table class="auto-style2">
                    <tr><th class="auto-style4"></th>
                        <th class="th">Responsible by Constructor:</th>
                        <th class="th">Responsible by commissioning:</th>
                        <th class="th">Accepted by:</th>
                    </tr>
                    <tr>
                        <td class="auto-style5"><label><b>Company:</b></label></td>
                        <td><asp:TextBox ID="TextBox26" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox27" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox28" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><label><b>Job Title:</b></label></td>
                        <td><asp:TextBox ID="TextBox30" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox31" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox32" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><label><b>Name:</b></label></td>
                        <td><asp:TextBox ID="TextBox34" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox35" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox36" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><label><b>Sign:</b></label></td>
                        <td><asp:TextBox ID="TextBox38" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox39" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox40" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    
                </table>

            <table class="auto-style2">
                    <tr><th class="auto-style4"></th>
                        <th class="th">Prepared by:</th>
                        <th class="th">Approved by:</th>
                    </tr>
                    <tr>
                        <td class="auto-style5"><label><b>Company:</b></label></td>
                        <td><asp:TextBox ID="TextBox25" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox29" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><label><b>Job Title:</b></label></td>
                        <td><asp:TextBox ID="TextBox37" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox41" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><label><b>Name:</b></label></td>
                        <td ><asp:TextBox ID="TextBox43" runat="server" Width="100%"></asp:TextBox></td>
                        <td ><asp:TextBox ID="TextBox44" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><label><b>Sign:</b></label></td>
                        <td><asp:TextBox ID="TextBox46" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox47" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><label><b>Date:</b></label></td>
                        <td><asp:TextBox ID="TextBox49" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox50" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    
                </table>
        <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Submit</button>
        </div>
    </div>
            
    </form>
Annex: Distribution List of this document: Name, Organization and Position</body>
</html>
