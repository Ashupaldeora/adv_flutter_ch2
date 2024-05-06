# adv_flutter_ch2

A new Flutter project.

<h3 align="center"><i>1. Date picker Android</i></h3>
<h1></h1>

## Date Picker

The DatePicker widget in Flutter allows users to select a date from a calendar-like interface. It provides a convenient way to capture date input from users in your Flutter applications.

## Key Features:
* Date Selection: Users can tap on dates to select them.
* Month and Year Navigation: Users can swipe horizontally to change months and vertically to change years.
* Date Range Selection: You can enable date range selection by setting the selectableDayPredicate property.
* Input Mode: Users can switch to an input mode where they can manually enter a date using the keyboard.
* Customization: You can customize the appearance of the date picker using the DatePickerColors and DatePickerEntryMode classes.



<div align="center">
  <img src="https://github.com/Ashupaldeora/adv_flutter_ch2/assets/143180848/19534fa3-9f5f-4453-a5f3-986ab945ae8b" height=500px hspace=20>
  <img src="https://github.com/Ashupaldeora/adv_flutter_ch2/assets/143180848/8722c56e-d917-4aa2-8cc4-aaf7557ac1d4" height=500px hspace=20>
</div>


###
<div align="center">
<a href="https://github.com/Ashupaldeora/adv_flutter_ch2/blob/master/lib/screens/date_picker/android/view/date_picker_screen.dart">-> See The Code <-</a>
</div>

###
###

<h3 align="center"><i>1. Time picker Android</i></h3>
<h1></h1>

## Time Picker

The TimePicker widget in Flutter allows users to select a time from a clock-like interface. It provides a convenient way to capture time input from users in your Flutter applications.

## Key Features:
* Time Selection: Users can tap on the clock face or use the up/down arrows to change the hour and minute values.
* AM/PM Toggle: The widget automatically displays an AM/PM toggle for 12-hour clocks.
* Input Mode: Users can switch to an input mode where they can manually enter a time using the keyboard.
* Customization: You can customize the appearance of the time picker using the TimePickerTheme class.

<div align="center">
  <img src="https://github.com/Ashupaldeora/adv_flutter_ch2/assets/143180848/1b78029e-b1c3-4823-b9ff-72f68665692b" height=500px hspace=20>
  <img src="https://github.com/Ashupaldeora/adv_flutter_ch2/assets/143180848/03297ad7-1640-4efc-841f-36e41feade96" height=500px hspace=20>
</div>


###
<div align="center">
<a href="https://github.com/Ashupaldeora/adv_flutter_ch2/blob/master/lib/screens/time_picker/android/view/time_picker.dart">-> See The Code <-</a>
</div>

<h3 align="center"><i>1. Dialog Box Android</i></h3>
<h1></h1>

## Dialog Box 

A dialog box is a secondary window that appears in front of the main application window to provide information, ask for user input, or display a message that requires the user's attention. Dialog boxes are typically used for modal interactions, meaning that the user must interact with the dialog box before they can continue using the main application.
## Features:
* Title: A brief description of the purpose of the dialog box.
* Message: The main content of the dialog box. This can include text, images, or other UI elements.
* Buttons: Buttons allow the user to interact with the dialog box. Common buttons include "OK", "Cancel", "Yes", and "No".
* Text Fields: Text fields allow the user to enter text input. This is useful for collecting information from the user, such as their name or email address.




<div align="center">
  <img src="https://github.com/Ashupaldeora/adv_flutter_ch2/assets/143180848/ede82873-df45-4f9c-a204-072519f54da2" height=500px hspace=20>
  <img src="https://github.com/Ashupaldeora/adv_flutter_ch2/assets/143180848/170a13f3-0ee7-4fe1-8c91-544520c0af54" height=500px hspace=20>
  
</div>


###
<div align="center">
<a href="https://github.com/Ashupaldeora/adv_flutter_ch2/tree/master/lib/screens/dialog_box/android">-> See The Code <-</a>
</div>


<h3 align="center"><i>1. Date Picker Ios</i></h3>
<h1></h1>

## Cupertino Date Picker 

The CupertinoDatePicker widget in Flutter provides a date picker in the style of Apple's iOS operating system. It allows users to select a date by rotating a wheel-based interface.
## Key Features:
* Date Selection: Users can rotate the wheel to select the desired date.
* Date Range Selection: You can enable date range selection by setting the minimumDate and maximumDate properties.
* Input Mode: Users can switch to an input mode where they can manually enter a date using the keyboard.
* Customization: You can customize the appearance of the date picker using the CupertinoDatePickerMode and CupertinoDatePickerStyle classes




<div align="center">
  <img src="https://github.com/Ashupaldeora/adv_flutter_ch2/assets/143180848/862d8ae9-9f7a-4904-bc7f-abdfcb53dd84" height=500px hspace=20>
 
  
</div>


###
<div align="center">
<a href="https://github.com/Ashupaldeora/adv_flutter_ch2/tree/master/lib/screens/date_picker/ios/view">-> See The Code <-</a>
</div>


<h3 align="center"><i>1. Time Picker Ios</i></h3>
<h1></h1>

## Cupertino Time Picker 

The CupertinoTimerPicker widget in Flutter provides a time picker in the style of Apple's iOS operating system. It allows users to select a time by rotating a wheel-based interface.
## Key Features:
* Time Selection: Users can rotate the wheels to select the desired hour, minute, and (optionally) second values.
* 24-Hour Format: You can toggle between 12-hour and 24-hour formats using the mode property.
* Input Mode: Users can switch to an input mode where they can manually enter a time using the keyboard.
* Customization: You can customize the appearance of the time picker using the CupertinoTimerPickerMode and CupertinoTimerPickerStyle classes.





<div align="center">
  <img src="https://github.com/Ashupaldeora/adv_flutter_ch2/assets/143180848/42877009-f734-4158-9063-aae773c3d7c3" height=500px hspace=20>
  <video src="https://github.com/Ashupaldeora/adv_flutter_ch2/assets/143180848/41490248-10e2-4d38-9e8d-ce3d04e35a00" height=500px hspace=20>
  
</div>


###
<div align="center">
<a href="https://github.com/Ashupaldeora/adv_flutter_ch2/tree/master/lib/screens/time_picker/ios">-> See The Code <-</a>
</div>

<h3 align="center"><i>1. Action Sheet Ios</i></h3>
<h1></h1>

## Cupertino Action Sheet 

The CupertinoActionSheet widget in Flutter provides an action sheet in the style of Apple's iOS operating system. It displays a list of options at the bottom of the screen, allowing users to choose an action.
## Key Features:
* Options: You can specify a list of options to display in the action sheet.
* Destructive Actions: You can mark certain options as destructive, which will change their appearance and behavior.
* Cancel Button: The action sheet automatically includes a cancel button.
* Customization: You can customize the appearance of the action sheet using the CupertinoActionSheetStyle class





<div align="center">
  <img src="https://github.com/Ashupaldeora/adv_flutter_ch2/assets/143180848/fa6ce0a5-bb2d-4496-9399-852c03954c82" height=500px hspace=20>
  
  
</div>


###
<div align="center">
<a href="https://github.com/Ashupaldeora/adv_flutter_ch2/tree/master/lib/screens/dialog_box/ios/view">-> See The Code <-</a>
</div>






