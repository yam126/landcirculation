using System.Collections.Generic;

namespace LandCirculationWeb.Models.landModel
{
    //如果好用，请收藏地址，帮忙分享。
    public class TrackDraw
    {
        /// <summary>
        /// 
        /// </summary>
        public int LineClr { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int LineWidth { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int LineAlpha { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ShowType { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int LineType { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int CircleClr { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int CircleWidth { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int NeedDrawDetail { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int Close { get; set; }
    }

    public class ObjectDetail
    {
        /// <summary>
        /// 
        /// </summary>
        public int Gcj02 { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int OverlayIdx { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int TrackType { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ShowLevel { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ShowLevelMax { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int AltitudeColor { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ShowName { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int Edit { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public TrackDraw TrackDraw { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int Mtp { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public List<double> Latlng { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public List<int> Altitude { get; set; }
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
        public int Type { get; set; }
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
        public int Type { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ObjID { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string tmModify { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ParentID { get; set; }
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
        public int Child { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int LoadOk { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int SaveMerge { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int @Group { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int AutoLoad { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ShowLevel { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ShowLevelMax { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int Share { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int @ReadOnly { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int NotHotId { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int Bind { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int BindCheck { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int Link { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int LinkAutoCheck { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ChildiOverlay { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string LinkUrl { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int Relate { get; set; }
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
        public int Type { get; set; }
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
        public int Type { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ObjID { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string tmModify { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ParentID { get; set; }
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
        public int Child { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int LoadOk { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int SaveMerge { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int @Group { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int AutoLoad { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ShowLevel { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ShowLevelMax { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int Share { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int @ReadOnly { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int NotHotId { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int Bind { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int BindCheck { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int Link { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int LinkAutoCheck { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ChildiOverlay { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string LinkUrl { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int Relate { get; set; }
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
        public int Type { get; set; }
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
        public int Type { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ObjID { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int ParentID { get; set; }
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
        public int Type { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public List<ObjItemsItem> ObjItems { get; set; }
    }

}
