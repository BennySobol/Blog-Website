<%@ Control Language="C#" CodeFile="MultilineText_Edit.ascx.cs" Inherits="MultilineText_EditField" %>

<asp:TextBox ID="TextBox1" runat="server" CssClass="DDControl" TextMode="MultiLine" Text='<%# FieldValueEditString %>' Columns="80" Rows="5"></asp:TextBox>

<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" />