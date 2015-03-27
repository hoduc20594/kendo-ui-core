using Kendo.Mvc.Extensions;
using Microsoft.AspNet.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Kendo.Mvc.UI
{
    /// <summary>
    /// Kendo UI TreeListColumn class
    /// </summary>
    public partial class TreeListColumn<T> 
    {
        public IDictionary<string,object> Attributes { get; set; }

        public List<TreeListColumnCommand<T>> Command { get; set; } = new List<TreeListColumnCommand<T>>();

        public bool? Encoded { get; set; }

        public bool? Expandable { get; set; }

        public string Field { get; set; }

        public TreeListColumnFilterableSettings<T> Filterable { get; } = new TreeListColumnFilterableSettings<T>();

        public string FooterTemplate { get; set; }

        public string FooterTemplateId { get; set; }

        public string Format { get; set; }

        public IDictionary<string,object> HeaderAttributes { get; set; }

        public string HeaderTemplate { get; set; }

        public string HeaderTemplateId { get; set; }

        public TreeListColumnSortableSettings<T> Sortable { get; } = new TreeListColumnSortableSettings<T>();

        public string Template { get; set; }

        public string TemplateId { get; set; }

        public string Title { get; set; }

        public string Width { get; set; }

        public bool? Hidden { get; set; }

        public bool? Menu { get; set; }

        public bool? Locked { get; set; }

        public bool? Lockable { get; set; }

        public string IdPrefix { get; set; } = "#";

        protected Dictionary<string, object> SerializeSettings()
        {
            var settings = new Dictionary<string, object>();


            if (Attributes.Any())
            {
                settings["attributes"] = Attributes;
            }

            var command = Command.Select(i => i.Serialize());
            if (command.Any())
            {
                settings["command"] = command;
            }

            if (Encoded.HasValue)
            {
                settings["encoded"] = Encoded;
            }

            if (Expandable.HasValue)
            {
                settings["expandable"] = Expandable;
            }

            if (Field.HasValue())
            {
                settings["field"] = Field;
            }

            var filterable = Filterable.Serialize();
            if (filterable.Any())
            {
                settings["filterable"] = filterable;
            }
            else if (Filterable.Enabled == true)
            {
                settings["filterable"] = true;
            }

            if (FooterTemplateId.HasValue())
            {
                settings["footerTemplate"] = new ClientHandlerDescriptor {
                    HandlerName = string.Format(
                        "jQuery('{0}{1}').html()", IdPrefix, FooterTemplateId
                    )
                };
            }
            else if (FooterTemplate.HasValue())
            {
                settings["footerTemplate"] = FooterTemplate;
            }

            if (Format.HasValue())
            {
                settings["format"] = Format;
            }

            if (HeaderAttributes.Any())
            {
                settings["headerAttributes"] = HeaderAttributes;
            }

            if (HeaderTemplateId.HasValue())
            {
                settings["headerTemplate"] = new ClientHandlerDescriptor {
                    HandlerName = string.Format(
                        "jQuery('{0}{1}').html()", IdPrefix, HeaderTemplateId
                    )
                };
            }
            else if (HeaderTemplate.HasValue())
            {
                settings["headerTemplate"] = HeaderTemplate;
            }

            var sortable = Sortable.Serialize();
            if (sortable.Any())
            {
                settings["sortable"] = sortable;
            }
            else if (Sortable.Enabled == true)
            {
                settings["sortable"] = true;
            }

            if (TemplateId.HasValue())
            {
                settings["template"] = new ClientHandlerDescriptor {
                    HandlerName = string.Format(
                        "jQuery('{0}{1}').html()", IdPrefix, TemplateId
                    )
                };
            }
            else if (Template.HasValue())
            {
                settings["template"] = Template;
            }

            if (Title.HasValue())
            {
                settings["title"] = Title;
            }

            if (Width.HasValue())
            {
                settings["width"] = Width;
            }

            if (Hidden.HasValue)
            {
                settings["hidden"] = Hidden;
            }

            if (Menu.HasValue)
            {
                settings["menu"] = Menu;
            }

            if (Locked.HasValue)
            {
                settings["locked"] = Locked;
            }

            if (Lockable.HasValue)
            {
                settings["lockable"] = Lockable;
            }

            return settings;
        }

    }
}
