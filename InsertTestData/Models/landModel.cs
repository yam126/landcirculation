using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InsertTestData.Models
{
    //如果好用，请收藏地址，帮忙分享。
    public class TrackDraw
    {
        /// <summary>
        /// 
        /// </summary>
        public double LineClr { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double LineWidth { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double LineAlpha { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double ShowType { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double LineType { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double CircleClr { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double CircleWidth { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double NeedDrawDetail { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double Close { get; set; }
    }

    public class ObjectDetail
    {
        /// <summary>
        /// 
        /// </summary>
        public double Gcj02 { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double OverlayIdx { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double TrackType { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double ShowLevel { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double ShowLevelMax { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double AltitudeColor { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double ShowName { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double Edit { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public TrackDraw TrackDraw { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double Mtp { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public List<float> Latlng { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public List<float> Altitude { get; set; }
    }

    public class @Object
    {
        /// <summary>
        /// 
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double Type { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Comment { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public ObjectDetail ObjectDetail { get; set; }
    }

    public class ObjChildrenItem
    {
        /// <summary>
        /// 
        /// </summary>
        public double Type { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double ObjID { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string tmModify { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double ParentID { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public @Object @Object { get; set; }
    }

    public class ObjectDetail02
    {
        /// <summary>
        /// 
        /// </summary>
        public double Child { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double LoadOk { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double SaveMerge { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double @Group { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double AutoLoad { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double ShowLevel { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double ShowLevelMax { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double Share { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double @ReadOnly { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double NotHotId { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double Bind { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double BindCheck { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double Link { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double LinkAutoCheck { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double ChildiOverlay { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string LinkUrl { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double Relate { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public List<ObjChildrenItem> ObjChildren { get; set; }
    }

    public class @Object02
    {
        /// <summary>
        /// 
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double Type { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public ObjectDetail02 ObjectDetail { get; set; }
    }

    public class ObjChildrenItem01
    {
        /// <summary>
        /// 
        /// </summary>
        public double Type { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double ObjID { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string tmModify { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double ParentID { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public @Object02 @Object { get; set; }
    }

    public class ObjectDetail01
    {
        /// <summary>
        /// 
        /// </summary>
        public double Child { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double LoadOk { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double SaveMerge { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double @Group { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double AutoLoad { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double ShowLevel { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double ShowLevelMax { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double Share { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double @ReadOnly { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double NotHotId { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double Bind { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double BindCheck { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double Link { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double LinkAutoCheck { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double ChildiOverlay { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string LinkUrl { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double Relate { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public List<ObjChildrenItem01> ObjChildren { get; set; }
    }

    public class @Object01
    {
        /// <summary>
        /// 德平
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public double Type { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public ObjectDetail01 ObjectDetail { get; set; }
    }

    public class ObjItemsItem
    {
        /// <summary>
        /// 
        /// </summary>
        public double Type { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public double ObjID { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public double ParentID { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public string tmModify { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public Object01 @Object { get; set; }
    }

    public class Root
    {
        /// <summary>
        /// 
        /// </summary>
        public string Version { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public double Type { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public List<ObjItemsItem> ObjItems { get; set; }
    }
}
