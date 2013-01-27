/*
  jlikert: a jQuery plugin which provides a likert scale.
  Copyright (C) 2011 Craig Carr, Euan Freeman

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
(function ($) {
        /*
         * Turns an element into a likert scale.
         *
         * Parameters:
         *     question := Question to be shown above the likert scale.
         *     params (optional) := {
         *         label_left: Label to the left of the scale.
         *         label_right: Label to the right of the scale.
         *         values: Labels describing each value on the scale.
         *         length: Number of options on the scale.
         *     }
         */
        $.fn.likert = function (question, params) {
                /* Allow optional parameters. */
                params = $.extend({ max_width : -1, label_left : 'min', label_right : 'max', values : [], length : 5, use_default : 'false', default_val : 3}, params);
                
                /* Fetch parent ID */
                var parent_id = $(this).attr('id');
                
                /* Radio button group is uniquely identified by the parent id. */
                var group = "radio_" + parent_id;
                
                /* Create a string containing the appropriate number of radio buttons. */
                var scale = function() {
                        var str = "<ul class='likert-scale-container'>";
                        
                        if (params.values.length != 0) {
                                /* Values provided; use these as labels. */
                                for (i = 0; i < params.values.length; i++) {
                                        str +=
                                                "<li class='likert-button'>" +
                                                "<div style='text-align: center;'>" + params.values[i] + "</div>" +
                                                "<div><input type='radio' name='" + group + "' value='" + params.values[i] + "'";
                                                
                                        if (params.use_default && params.default_val == (i+1)) {
                                                str += " checked";
                                        }
                                        
                                        str += 
                                                " /></div>" +
                                                "</li>";
                                }
                        } else {
                                /* No values provided, use radio buttons without labels. */
                                for (i = 0; i < params.length; i++) {
                                        str +=
                                                "<li class='likert-button'>" +
                                                "<div><input type='radio' name='" + group + "' value='" + (i+1) + "'";
                                                
                                        if (params.use_default && params.default_val == (i+1)) {
                                                str += " checked";
                                        }
                                        
                                        str +=
                                                " /></div>" +
                                                "</li>";
                                }
                        }
                        
                        str += "</ul>";
                        
                        return str;
                };
                
                var label_left = "";
                var label_right = "";
                
                if (params.label_left != "") {
                        label_left = "<div class='likert-scale-start'>" + params.label_left + "</div>";
                }
                
                if (params.label_right != "") {
                        label_right = "<div class='likert-scale-end'>" + params.label_right + "</div>";
                }
                
                this.each(function() {
                        $(this).append(
                                "<div class='likert'>" +
                                "       <div class='likert-question-icon'>?</div>" +
                                
                                "       <div class='likert-container'>" +
                                "               <div class='likert-question-text'>" + question + "</div>" +
                                "               <div class='likert-scale'>" +
                                                        label_left +
                                                        scale() +
                                                        label_right +
                                "               </div>" +
                                "       </div>" +
                                "</div>"
                        );
                });
                
                return this;
        }
})( jQuery );