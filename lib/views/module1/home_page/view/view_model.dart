import 'package:stacked/stacked.dart';

class ViewModel extends BaseViewModel {
  int noOfTabs = 3;

// ======================================= TEXT ===========================================================

  List textDataDriven = [
    '•	Try to add incorrect input in a field (e.g., letters in a text field).',
    '•	Is it okay to have blank/empty fields? What if you insert a space and try to save?',
    '•	Test if the field is case sensitive.',
    '•	Which values are to be used define with some text or use placeholders for numeric fields.',
    '•	Single line of numeric, multiple lines of numeric, numeric, yes/no, dropdown, choice, lookup, datetime, IP address , calculated value, etc.',
    '•	Verify textbox can take the maximum length of text for which it is designed.',
    '•	Verify if the user can clear or delete the text written in the textbox.',
    '•	Check the font size and color of the text entered in the textbox as per the requirement.',
    '•	Check whether the user can enter text in the textbox.',
    '•	Check with the requirement whether it will accept numeric.',
    '•	Card Number is a numeric field then it should only accept numbers.',
    '•	Verify if the field accepts numbers only.',
    '•	Verify if the field accepts symbols for currency.',
    '•	Verify if the field accepts text character in the text.',
    '•	Verify if the field allows floating point for currency value.',
    '•	Check if the field accepts coma for 7 figure numbers.',
    '•	Check if the field accepts more than 10-digit value within the text box.',
    '•	Check if the field accepts zero as value in a text field.',
    '•	Verify if the field accepts negative number.',
    '•	Check if the field accepts number less than zero in floating point.',
    '•	Check if the field accepts dollar sign before or after the number.',
    '•	Check if the field accepts currency sign other than dollar in the text field.',
    '•	Check if the field takes brackets within the text field.',
    '•	Check if the field takes plus sign within the text field.',
    '•	Enter continuous characters still it stops to enter any character and measure width of the Text Box. It should stop you and width should be as per requirement.',
    '•	Check for spaces and its combination with any characters. It should not allow only spaces. ',
    '•	Check for numbers and special characters like 1, 2, #, +, - etc.  ',
    '•	Check for combination of alphabets, numeric, signs and special characters.',
  ];

  List textStepDriven = [
    '•	Is it okay to have blank/empty fields? What if you insert a space and try to save?',
    '•	Display hint text in fields (text box). Hide after the first character is added. Show hint text again if all characters in the field are deleted.',
    '•	Verify textbox can take the maximum length of text for which it is designed.',
    '•	Verify if the user can clear or delete the text written in the textbox.',
    '•	Verify if a user can enter any characters required by the user in the textbox.',
    '•	Test With Boundary value conditions.',
    '•	Name field should not accept the numeric content.',
    '•	Card Number is a numeric field then it should only accept numbers.',
    '•	Check if the text field accepts no input and still proceeds to next step in the process.',
    '•	Check if the payment goes to checkout with random characters and number in the field.',
    '•	Enter valid value in mandatory Text Box and save the window. Again, come to same window and delete that value and test if it asks for value as it is mandatory.',
    '•	If value is coming from DB, then check if you can edit same.',
    '•	If value is coming from DB, then check if the value is correct and populating correctly.',
  ];

  List textGuidelineDriven = [
    '•	When should long text be truncated? ',
    '•	Invalid prompt when use special characters like &, ‘, %, æ, etc.',
    '•	Does the text box have a minimum or maximum length? ',
    '•	Does the text box get highlighted if the cursor moves over it?',
    '•	Check whether the textbox gives any hint/placeholder for the user regarding what to enter in the textbox.',
    '•	Verify text entered in the textbox is visible to the user.',
    '•	Verify whether the size of the textbox is as per the requirement.',
    '•	Check whether the textbox is properly visible and in proportion with the UI.',
    '•	Check the input that would be numeric.',
    '•	User ID, credit card number accepts numeric value.',
    '•	Check the datatype.',
    '•	Check the length of numeric(Text Box)',
    '•	Text Box numeric will accept int datatype. e.g., not float value such as 40.1.',
    '•	Check if the text field automatically selects the type of the currency to include in the field.',
    '•	Check if any pre-populated value should be displayed as per requirement. ',
    '•	Check if you cannot edit disabled Text Box. ',
    '•	Check for conditions when that Text Box should be enabled. ',
    '•	Disabled textbox should not accept any value.',
    '•	Check for cursor should not be displayed in disabled Text Box. ',
    '•	Disabled Text Box should be grayed out. ',
    '•	Check for pre-population of any value or BLANK value as per requirement. ',
    '•	Check for blinking cursor when get focused. ',
    '•	Check for RED asterisk for mandatory fields. (As per requirements) ',
  ];
  // ================================= TEXTFIELD =================================================

  List textFieldDataDriven = [
    '•	Check whether Search box is properly visible and in proportion with the UI.',
    '•	Verify whether the size of the Search box is as per the requirement.',
    '•	Check whether the user can enter the required text in the search box.',
    '•	Verify whether the search box is giving any autosuggestions for text to be searched.',
    '•	Check the font size and color of the text entered in the search box per the requirement.',
    '•	Verify text entered in the search box is visible to the user.',
    '•	Check whether the search box gives any hint/placeholder for the user regarding what to search in the search box.',
    '•	Verify if a user can enter any characters required by the user in the search box.',
    '•	Verify if a user can clear or delete the text written in the search box.',
    '•	Verify the user can select any specific auto-search result populated in the search box.',
    '•	Check whether the search box takes a maximum length of text for which it is designed.',
  ];

// ================================= Radio Button =================================================

  List radioDataDriven = [
    '•	Check whether the user can select the radio button.',
    '•	Verify proper description of the radio button is given.',
    '•	Verify the font size and font color of the description.',
    '•	Verify if the description of the radio button is present next to or close to that radio button only.',
    '•	Check if the radio control button gets selected using mouse cursor action or TAB keyboard key selection.',
    '•	Check if the multiple radio button on the form gets selected or not.',
    '•	Check if the user response of Yes is saved in the right database column.',
    '•	Check if the user response of No is saved in the right database column.',
    '•	Check if the database gets updated with either radio control choice being made.',
    '•	Is there a maximum of seven radio buttons in any group?',
  ];

  List radioStepDriven = [
    '•	Verify if the user selects the radio button and then the page is refreshed, then still that radio button is selected.',
    '•	Click the radio control button and see if the page gets redirected to the next page.',
    '•	Don’t click on the radio buttons and see if clicking on the submit button generates warning “to make a choice” is shown or not.',
    '•	Click on ‘Yes’ radio button control and hit submit to see if it redirects to the specific page.',
    '•	Click on ‘No’ radio button control and hit submit to see if it redirects to the specific page.',
    '•	Is the current selection or the default indicated when a window is first displayed? Is the same mechanism used as when an item is selected?',
  ];

  List radioGuidelineDriven = [
    '•	Check whether Radio button is properly visible and in proportion with the UI.',
    '•	Verify whether the size of the Radio button is as per the requirement.',
    '•	Verify the user is not able to select more than one radio button from one particular radio group.',
    '•	Verify one radio button does not collide with another radio button in the group.',
    '•	Check the alignment of the radio button control on the form.',
    '•	Check the CSS style, size and color of the radio button is as per the specification.',
    '•	Are radio buttons disabled when they do not apply to the current state of the window?',
    '•	Is the textual description spelled out in mixed case letters with the first letter of each significant word capitalized?',
    '•	Are radio buttons always grouped in sets of two or more mutually exclusive choices within a group box with an appropriate title (e.g., Paper Size)?',
    '•	Is there a visual indication of which of the radio buttons is currently selected? In Microsoft Windows, radio buttons are circles, and the current selection is denoted with a smaller blackened circle inside the circular radio button.',
    '•	 Check Apply the checked = “checked“ attribute (provided by the department of redundancy department) to one of the elements so it will start out checked. If you don’t preselect one radio button, any programs attached to your form will get confused.',
  ];

// ================================= Text Button =================================================

  List textButtonDataDriven = [
    '•	Verify if a user can click the link.',
    '•	On hover to link check, the mouse cursor changes from tip to hand.',
    '•	Check if the mouse link is displayed on the bottom left of the browser when hovering over that link.',
    '•	Test to check if there are any blank page to link.',
    '•	Ensure that a hand icon is displayed when mouse pointer is hovered over the link.',
    '•	Check whether shared link is getting opened properly.',
  ];

  List textButtonStepDriven = [
    '•	Verify the user is navigated to some page or the desired location.',
    '•	Verify if the link is clicked then the page opens in the same tab or a different tab as per the requirement.',
    '•	Check whether all external links are opening in new window with proper URL.',
    '•	Test all internal links are navigating within application as per requirement.',
    '•	Test links jumping on the same pages.',
    '•	Check whether email address link opening the mail instance like outlook.',
  ];

  List textButtonGuidelineDriven = [
    '•	Verify link is visible to the user and is in proportion with the UI.',
    '•	Verify font color and text are as per the requirement.',
    '•	Verify text of the link is as per the requirement.',
    '•	Tool tips text should be available and meaningful.',
    '•	Test Links opening in another tab /window as per requirement.',
    '•	Compatibility Testing for all links on other browsers.',
    '•	Ensure that color of links change after the page is visited once. (This can vary as per the design).',
    '•	Ensure that the link color is as per the specification.',
    '•	Check loading time for internal links as per requirement. ',
    '•	Check whether shared link is getting shared properly with correct address.',
  ];

// ================================= Dropdown =================================================

  List dropDownDataDriven = [
    '•	Verify on click on the dropdown it should display a list containing values.',
    '•	Verify that the dropdown displays all values or not as the user clicks on the dropdown.',
    '•	Verify scroll down functionality working in the dropdown list or not.',
    '•	Verify that the drop-down list should be scrolled down by pressing the down arrow key on the keyboard.',
    '•	Verify that the by default selected value is shown on the dropdown or not.',
    '•	Verify that the dropdown should not be editable.',
    '•	Verify that the dropdown values should be accessible and selected by clicking on the alphabet from the keyboard.',
    '•	Test dropdown list design should not be disturbed on all browsers.',
    '•	Verify on mouse hover mouse pointer change from a pointer to hand or not. ',
    '•	Verify mouse hover effect is added for the dropdown list or not.',
    '•	Check the text length for the maximum char or words shown or not in the dropdown.',
    '•	Verify that the user can choose any value from the dropdown by clicking on the tab button from the keyboard.',
    '•	Drop down should be scrolled down by clicking down arrow key of the keyboard.',
    '•	When down arrow of the drop-down is selected all the items should be listed in its expected sequence.',
    '•	Selected item of the drop-down list should be highlighted.',
    '•	When keyboard alphabets are pressed, items started with respective alphabet should be display.',
  ];

  List dropDownStepDriven = [
    '•	Verify scroll down functionality working in the dropdown list or not.',
    '•	Verify that the drop-down list should be scrolled down by pressing the down arrow key on the keyboard.',
    '•	Verify that the dropdown should not be editable.',
    '•	Verify that the dropdown values should be accessible and selected by clicking on the alphabet from the keyboard.',
    '•	Test dropdown list design should not be disturbed on all browsers.',
    '•	Verify that the user can choose any value from the dropdown by clicking on the tab button from the keyboard.',
    '•	Default item should be display when user visit the page first time.',
    '•	If the list of drop-down is controlled by some other selection (like when we select an item from drop-down “A” is binding the values in drop-down “B”) then the correctness of the items listed in dependent drop-down should be proper.',
    '•	If the selection in the drop-down is controlling some other controls (enabling/disabling) then check the proper action.',
  ];

  List dropDownGuidelineDriven = [
    '•	Verify all values added in the dropdown list or not.',
    '•	Verify that the label text for the dropdown should be as per requirements and aligned or not.',
    '•	Check the order of the values in the dropdown list same as the requirement or not.',
    '•	Check that there should not be any blank value shown in the dropdown list.',
    '•	Verify dropdown values case sensitive or not as a system required.',
    '•	Test dropdown list design should not be disturbed on all browsers.',
    '•	Check the spelling for the values in the dropdown list.',
    '•	Verify all the values in the Dropdown align or not.',
    '•	Verify that proper spacing is added on the dropdown values or not.',
    '•	Design of the drop-down should be proper. It should be aligned with other items of the page on all browsers.',
    '•	Drop down design should be handled for the longest text in its list.',
    '•	Drop down should have proper title.',
    '•	Ensure the spelling, text font, text size of the items should be consistent.',
    '•	Loading time of the drop-down list should not take too much time to load.',
    '•	Select all and select none button should be available for user.',
    '•	Design of the drop-down may change on various browsers which is common problem, browsers compatibility of the drop-down should be consistent in all browsers.',
  ];

// ================================= Checkbox =================================================

  List checkboxDataDriven = [
    '•	Check if the checkbox is selectable or not.',
    '•	Check if the checkbox selection enables the specific element as selected by mouse pointer or keyboard selection.',
    '•	Check if the checkbox is selected and pressing submit redirects to the option as per the choice made.',
    '•	Check if the checkbox selection is properly recorded in database or for browser redirection.',
    '•	Uncheck one checkbox and select another and click on submit and verify if different choice is considered in redirection.',
    '•	Check if the multiple checkboxes can be selected or not.',
    '•	Verify if the selection control is inactive when the page is loaded.',
  ];

  List checkboxStepDriven = [
    '•	Click on the checkbox and check whether it is selectable or not.',
    '•	Click on the checkbox and check whether clicking on the checkbox enables the specific element or not.',
    '•	Click on the checkbox and check after clicking the submit button it redirects the options as per the choice made.',
    '•	Click on the other checkbox and uncheck the previous one and check and click on the submit button and check if different choices is considered in redirection.',
    '•	Check whether the checkboxes alignment is proper or not on the form page.',
    '•	Click on the multiple checkboxes and check whether multiple checkboxes are selectable or not.',
  ];

  List checkboxGuidelineDriven = [
    '•	Selection control should be inactive when page is loaded.',
    '•	Check if the checkbox alignment on the form page is proper or not.',
    '•	Check if the label for the checkbox is properly aligned.',
    '•	Check if the checkboxes selected one at a time or multiple at a time are as per the requirement of the application.',
    '•	Check if the corresponding data is selected by the database based on the selection.',
    '•	Check if the validation controls enabled or triggered if no user action is done on the choices.',
    '•	Verify if the initial focus of the checkbox is on the first checkbox.',
    '•	Verify if the checkboxes are placed in an order.',
    '•	Verify the physical location of the checkboxes (X.Y Coordinates, Height, Length, Width).',
  ];
}

// ================================= Slidebar =================================================

List slidebarDataDriven = [
  "•	Will this component accept input?",
  "•	The direction in which the slider’s value will increase when the handle is dragged. The options are Left to Right, Right To Left, Bottom To Top and Top To Bottom",
  "•	The value of the slider when the handle is at its extreme lower end must achieve its minimum limit (determined by the Direction property).",
  "•	The value of the slider when the handle is at its extreme upper end must achieve its maximum limit (determined by the Direction property).",
  "•	How much space can we afford for the slider, and how do we make it work well on small and large screens?",
  "•	Should the slider be continuous or discrete?",
  "•	How do we choose the slider scale: linear or non-linear?",
  "•	What icon do we use for the thumb, if any?",
  "•	How and where do we display the current value?",
  "•	Should the slider be complemented with a precise input (for example, an input field)? If yes, how do we indicate that a numeric input is editable?",
  "•	How should the slider track change with thumb movements?",
  "•	With a double slider, what happens if the user moves the end thumb over the left thumb, or the other way around? What happens if the user taps or clicks on an area between two thumbs? Should the UI adjust the lower or the upper boundary? Or should this action be disabled altogether?",
  "•	Are there any values on a slider that shouldn’t be accepted?",
];

List slidebarStepDriven = [
  "•	Check for the range and indicator on the control.",
  "•	Try to set or adjust the value on a continuous range using the bar.",
  "•	Drag the control using mouse.",
  "•	Drag the control using keys.",
  "•	Check for the tab functionality, access key for the text in the label.",
  "•	Check for the length, height of the slide indicator and slide bar component.",
  "•	Check for the increments of the slider and tick mark on the control.",
  "•	Check for the label position of the control.",
  "•	Check for the Label style of the control.",
  "•	Ensure whether administrator (or role who has permission to configure/manage the values) is able to change the values of the slider.",
  "•	Check the limit by giving maximum and minimum values.",
];

List slidebarGuidelineDriven = [
  "•	Is a slider the right solution for this problem, or should we use radio buttons or checkboxes instead?",
  "•	Slider thumb should be at roughly 50%.",
  "•	Ensure slider thumb and title are displayed same which required.",
  "•	Slider under the thumb should be a different colour than the slider above the thumb.",
  "•	Volume button should get a darker background.",
  "•	Vertical volume slider at should appear above Volume button.",
  "•	For touchscreens, consider where the user’s finger will be placed on the screen—and what areas of the screen will thus be covered—while manipulating the slider.",
  "•	Ensure the design of the slider on all browsers (browser compatibility).",
  "•	Ensure the smoothness and automatic loading of the slides.",
  "•	The graphic used for the fill area of the control.",
  "•	The graphic used for the sliding “handle” part of the control.",
];

// ================================= Tooltip =================================================

List tooltipDataDriven = [
  "•	Verify that the accurate text shown on the mouse hover on the tooltip or not.",
  "•	Verify on the mouse hover color on the icon changed or not.",
  "•	Verify on the mouse hover, mouse pointer changes or not.",
  "•	Verify text for the maximum length on the tooltip should not be trim.",
];

List tooltipStepDriven = [
  "•	Verify as the user move pointer from the icon or link tooltip text should be hidden or not.",
  "•	Verify that the information that is displayed is correct.",
];

List tooltipGuidelineDriven = [
  "•	Verify tooltip width and height should be aligned or not.",
  "•	Make sure that the text shown on the tooltip is aligned or not.",
  "•	Verify icon aligned with the label text on which tooltip implemented.",
  "•	Verify that the tooltip text should be relevant and well explained to the user.",
  "•	Verify there should not be any spelling mistake for the content added on the tooltip.",
  "•	Give hint about required field.",
  "•	Indicate if a user is confused regarding input.",
  "•	Hints functionality in Window desktop app.",
];

// ================================= Menu / Hamburger: =================================================

List menupDataDriven = [
  "•	Check on Mouse hover or click a down arrow is opening or not with the menu item, displays the mega panel.",
  "•	Check the browser compatibility of the mega menu.",
  "•	Check that the mega menu is responsive on different mobile applications.",
];

List menupStepDriven = [
  "•	Click on command/option in menu bar one after another. With short time span in between. Verify the speed of switching form one option to another with standard speed.",
  "•	Click on the links to read more. See if more content to is displayed. Verify that read more buttons/links directs the user to its corresponding details page.",
  "•	Click on an item in menu bar. Verify if the list of sub item is displayed. And if yes, ensure they are of common functionality/type. Example, design contains different themes, color, font etc. And help contains help, feedback, contact support.",
  "•	Click on an item in menu bar. Verify form the database that the names are correct.",
  "•	Hover over the item, it should only highlight the item. Click on item, it Should display subitems, on next click preforms the action associated to it.",
  "•	Hover over the items. verify by seeing if it displays a short description or not."
];

List menupGuidelineDriven = [
  "•	Ensure the alignment, and spacing among the contents, the content on the menu bar is not congested and properly displayed.",
  "•	See if links to read more are given with each and every command available in menu.",
  "•	See and ensure if menu bar contains only cascading buttons.",
  "•	Ensue common menu operations are on standard.",
  "•	Standard menu bar entries should be presented in the following order: File Edit View Options Help.",
  "•	See if Unavailable options aren’t visible or are grayed out.",
  "•	The menu bar should be center aligned.",
  "•	Keep dropdown options no less than 7 and no more than 15.",
  "•	Stay under two levels deep.",
  "•	Exit or Close should be located on the first (leftmost) menu of your menu bar. ",
  "•	Check the user-friendliness of the mega menu."
];
