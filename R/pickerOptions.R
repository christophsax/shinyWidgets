
#' @title Options for `pickerInput`
#'
#' @description Wrapper of options available here: https://developer.snapappointments.com/bootstrap-select/options/
#'
#' @param actionsBox When set to true, adds two buttons to the top of the dropdown menu (Select All & Deselect All). Type: boolean; Default: false.
#' @param container When set to a string, appends the select to a specific element or selector, e.g., container: 'body' | '.main-body' Type: string | false; Default: false.
#' @param countSelectedText Sets the format for the text displayed when selectedTextFormat is `count` or `count > #`. `{0}` is the selected amount. `{1}` is total available for selection. When set to a function, the first parameter is the number of selected options, and the second is the total number of options. The function must return a string. Type: string | function; Default: function.
#' @param deselectAllText The text on the button that deselects all options when actionsBox is enabled. Type: string; Default: 'Deselect All'.
#' @param dropdownAlignRight Align the menu to the right instead of the left. If set to 'auto', the menu will automatically align right if there isn't room for the menu's full width when aligned to the left. Type: boolean | 'auto'; Default: false.
#' @param dropupAuto checks to see which has more room, above or below. If the dropup has enough room to fully open normally, but there is more room above, the dropup still opens normally. Otherwise, it becomes a dropup. If dropupAuto is set to false, dropups must be called manually. Type: boolean; Default: true.
#' @param header adds a header to the top of the menu; includes a close button by default Type: string; Default: false.
#' @param hideDisabled removes disabled options and optgroups from the menu data-hide-disabled: true Type: boolean; Default: false.
#' @param iconBase Set the base to use a different icon font instead of Glyphicons. If changing iconBase, you might also want to change tickIcon, in case the new icon font uses a different naming scheme. Type: string; Default: 'glyphicon'.
#' @param liveSearch When set to true, adds a search box to the top of the selectpicker dropdown. Type: boolean; Default: false.
#' @param liveSearchNormalize Setting liveSearchNormalize to true allows for accent-insensitive searching. Type: boolean; Default: false.
#' @param liveSearchPlaceholder When set to a string, a placeholder attribute equal to the string will be added to the liveSearch input. Type: string; Default: null.
#' @param liveSearchStyle When set to 'contains', searching will reveal options that contain the searched text. For example, searching for pl with return both Apple, Plum, and Plantain. When set to 'startsWith', searching for pl will return only Plum and Plantain. Type: string; Default: 'contains'.
#' @param maxOptions When set to an integer and in a multi-select, the number of selected options cannot exceed the given value. This option can also exist as a data-attribute for an `<optgroup>`, in which case it only applies to that `<optgroup>`. Type: integer | false; Default: false.
#' @param maxOptionsText The text that is displayed when maxOptions is enabled and the maximum number of options for the given scenario have been selected. If a function is used, it must return an array. `array[0]` is the text used when maxOptions is applied to the entire select element. `array[1]` is the text used when maxOptions is used on an optgroup. If a string is used, the same text is used for both the element and the optgroup. Type: string | array | function; Default: function.
#' @param mobile When set to true, enables the device's native menu for select menus. Type: boolean; Default: false.
#' @param multipleSeparator Set the character displayed in the button that separates selected options. Type: string; Default: ', '.
#' @param noneSelectedText The text that is displayed when a multiple select has no selected options. Type: string; Default: 'Nothing selected'.
#' @param noneResultsText The text displayed when a search doesn't return any results. Type: string; Default: 'No results matched {0}'.
#' @param selectAllText The text on the button that selects all options when actionsBox is enabled. Type: string; Default: 'Select All'.
#' @param selectedTextFormat Specifies how the selection is displayed with a multiple select. 'values' displays a list of the selected options (separated by multipleSeparator. 'static' simply displays the select element's title. 'count' displays the total number of selected options. 'count > x' behaves like 'values' until the number of selected options is greater than x; after that, it behaves like 'count'. Type: 'values' | 'static' | 'count' | 'count > x' (where x is an integer); Default: 'values'.
#' @param selectOnTab When set to true, treats the tab character like the enter or space characters within the selectpicker dropdown. Type: boolean; Default: false.
#' @param showContent When set to true, display custom HTML associated with selected option(s) in the button. When set to false, the option value will be displayed instead. Type: boolean; Default: true.
#' @param showIcon When set to true, display icon(s) associated with selected option(s) in the button. Type: boolean; Default: true.
#' @param showSubtext When set to true, display subtext associated with a selected option in the button. Type: boolean; Default: false.
#' @param showTick Show checkmark on selected option (for items without multiple attribute). Type: boolean; Default: false.
#' @param size When set to 'auto', the menu always opens up to show as many items as the window will allow without being cut off. When set to an integer, the menu will show the given number of items, even if the dropdown is cut off. When set to false, the menu will always show all items. Type: 'auto' | integer | false; Default: 'auto'.
#' @param style When set to a string, add the value to the button's style. Type: string | null; Default: null.
#' @param tickIcon Set which icon to use to display as the "tick" next to selected options. Type: string; Default: 'glyphicon-ok'.
#' @param title The default title for the selectpicker. Type: string | null; Default: null.
#' @param virtualScroll If enabled, the items in the dropdown will be rendered using virtualization (i.e. only the items that are within the viewport will be rendered). This drastically improves performance for selects with a large number of options. Set to an integer to only use virtualization if the select has at least that number of options. Type: boolean | integer; Default: 600.
#' @param width When set to auto, the width of the selectpicker is automatically adjusted to accommodate the widest option. When set to a css-width, the width of the selectpicker is forced inline to the given value. When set to false, all width information is removed. Type: 'auto' | 'fit' | css-width | false (where css-width is a CSS width with units, e.g. 100px); Default: false.
#' @param windowPadding This is useful in cases where the window has areas that the dropdown menu should not cover - for instance a fixed header. When set to an integer, the same padding will be added to all sides. Alternatively, an array of integers can be used in the format `top, right, bottom, left`. Type: integer | array; Default: 0.
#' @param ... Other options not listed here.
#'
#' @note Documentation is from [Bootstrap-select onlin page](https://developer.snapappointments.com/bootstrap-select/options/).
#'
#' @export
#'
#' @examples
#'
#' if (interactive()) {
#'   library(shiny)
#'   library(shinyWidgets)
#'
#'   ui <- fluidPage(
#'     pickerInput(
#'       inputId = "month",
#'       label = "Select a month",
#'       choices = month.name,
#'       multiple = TRUE,
#'       options = pickerOptions(
#'         actionsBox = TRUE,
#'         title = "Please select a month",
#'         header = "This is a title"
#'       )
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'
#'   }
#'
#'   shinyApp(ui, server)
#' }
#'
pickerOptions <- function(actionsBox = NULL,
                          container = NULL,
                          countSelectedText = NULL,
                          deselectAllText = NULL,
                          dropdownAlignRight = NULL,
                          dropupAuto = NULL,
                          header = NULL,
                          hideDisabled = NULL,
                          iconBase = NULL,
                          liveSearch = NULL,
                          liveSearchNormalize = NULL,
                          liveSearchPlaceholder = NULL,
                          liveSearchStyle = NULL,
                          maxOptions = NULL,
                          maxOptionsText = NULL,
                          mobile = NULL,
                          multipleSeparator = NULL,
                          noneSelectedText = NULL,
                          noneResultsText = NULL,
                          selectAllText = NULL,
                          selectedTextFormat = NULL,
                          selectOnTab = NULL,
                          showContent = NULL,
                          showIcon = NULL,
                          showSubtext = NULL,
                          showTick = NULL,
                          size = NULL,
                          style = NULL,
                          tickIcon = NULL,
                          title = NULL,
                          virtualScroll = NULL,
                          width = NULL,
                          windowPadding = NULL,
                          ...) {
  params <- c(as.list(environment()), list(...))
  params <- dropNulls(params)
  names(params) <- convert_names(names(params))
  return(params)
}


convert_names <- function(x) {
  x <- gsub(pattern = "([A-Z])", replacement = "-\\1", x = x)
  tolower(x)
}


