
#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    LabelDesigner.cs
 * CreatedOn:   2008-04-23
 * CreatedBy:   sanshi.ustc@gmail.com
 * 
 * 
 * Description：
 *      ->
 *   
 * History：
 *      ->
 * 
 * 
 * 
 * 
 */

#endregion

using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.Design;
using System.Web;

namespace FineUI
{
    /// <summary>
    /// 按钮设计时
    /// </summary>
    public class LabelDesigner : ControlBaseDesigner
    {

        public override string GetDesignTimeHtml()
        {
            Label control = CurrentControl as Label;

            return control.GetDesignTimeHtml(control.Text);
        }

        
    }
}
