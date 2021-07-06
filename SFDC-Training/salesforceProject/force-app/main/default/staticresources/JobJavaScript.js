function validate() {
    var type=document.getElementById("{!$Component.type}");
    var manager=document.getElementById("{!$Component.manager}");
    var position=document.getElementById("{!$Component.No_Of_Pos}");
    var ReqiredSkill=document.getElementById("{!$Component.Rid}");
	var Qualification=document.getElementById("{!$Component.QualificationId}");
	var certification=document.getElementById("{!$Component.certificationId}");
	var check=document.getElementById("{!$Component.check}");
	var date=document.getElementById("{!$Component.date}");
try
    {
        if(type == null && manager == null && position = = null && ReqiredSkill = = null && Qualification = = null && certification = = null  && check==null && date==null )
        {
            alert("all details are mandetory");
            return false;
        }
        return true;
		
    }
    catch(e)
    {
        alert(e);
        return false;
    }
}