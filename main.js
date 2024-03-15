function doGet(e) {
    return HtmlService.createHtmlOutputFromFile('TimeTracker');
  }
  
  function getEmployees() { 
    var ss= SpreadsheetApp.getActiveSpreadsheet();
    var employeeSheet = ss.getSheetByName("Data"); 
    var getLastRow = employeeSheet.getLastRow();  
    return employeeSheet.getRange(2, 1, getLastRow - 1, 1).getValues();  
  }
  
  
  function clockIn(employee,title,kitsRemoved) {
    
    //DEFINE ALL ACTIVE SHEETS
    var ss = SpreadsheetApp.getActiveSpreadsheet();
    
    //DEFINE MAIN SHEET          
    var mainSheet = ss.getSheetByName("Tracker");
  
    //LAST ROW ON MAIN SHEET
    var lastRow = mainSheet.getLastRow();
    
    //Define Return Variables
    var return_date = '';
    var error = 'SUCCESS';
    var return_array = [];
  
    for (var j = 2; j <= lastRow; j++)
    {
      // CHECK CLOCK IN
      if(employee ==  mainSheet.getRange(j, 1).getValue() && mainSheet.getRange(j,6).getValue() == '')
      {
        error = 'Need to Clock Out before Clocking In';
        return_array.push([error, return_date, employee]);
        return return_array;
      }
      
    }
    
    var new_date = new Date();
    return_date = getDate(new_date);
    
    // ADD CLOCK IN RECORD
    mainSheet.getRange(lastRow+1,1).setValue(employee)
    .setFontSize(10);
    mainSheet.getRange(lastRow + 1, 2).setValue(title)
    .setFontSize(10);
     mainSheet.getRange(lastRow + 1, 3).setValue(kitsRemoved)
    .setFontSize(10);
    mainSheet.getRange(lastRow+1,4).setValue(new_date)
    .setNumberFormat("MM/dd/yyyy hh:mm:ss A/P")
    .setHorizontalAlignment("left")
    .setFontSize(10);
    
    return_array.push([error, return_date, employee]);
    return return_array;
    
  }
  
  function addZero(i) {
    if (i < 10) {
      i = "0" + i;
    }
    return i;
  }
  
  function getDate(date_in)
  {
    var currentDate = date_in;
    var currentMonth = currentDate.getMonth()+1;
    var currentYear = currentDate.getFullYear();
    var currentHours = (addZero(currentDate.getHours()) > 12) ? addZero(currentDate.getHours()) - 12 : addZero(currentDate.getHours());
    var currentMinutes = addZero(currentDate.getMinutes());
    var currentSeconds = addZero(currentDate.getSeconds());
    var suffix = (addZero(currentDate.getHours()) >= 12)? 'PM' : 'AM';
    var date = currentMonth.toString() + '/' + currentDate.getDate().toString() + '/' + 
               currentYear.toString() + ' ' + currentHours.toString() + ':' +
               currentMinutes.toString() + ':' + currentSeconds.toString() + ' ' + suffix;
    
    return date;
  }
  
  function getEmployeesClockOut() { 
    var ss= SpreadsheetApp.getActiveSpreadsheet();
    var employeeSheet = ss.getSheetByName("Data"); 
    var getLastRow = employeeSheet.getLastRow();  
    return employeeSheet.getRange(2, 1, getLastRow - 1, 1).getValues();  
    
  }
  
   
  function clockOut(employee,hoursWorked) {
    
    //DEFINE ALL ACTIVE SHEETS
    var ss = SpreadsheetApp.getActiveSpreadsheet();
    
    //DEFINE MAIN SHEET          
    var mainSheet = ss.getSheetByName("Tracker");
  
    //LAST ROW ON MAIN SHEET
    var lastRow = mainSheet.getLastRow();
    
    var foundRecord = false;
    
    var new_date = new Date();
    var return_date = getDate(new_date);
    var error = 'SUCCESS';
    var return_array = [];
    
    for (var j = 2; j <= lastRow; j++)
    {
      // FIND CLOCK OUT RECORD
      if(employee ==  mainSheet.getRange(j, 1).getValue() && mainSheet.getRange(j,6).getValue() == '')
      {
        // UPDATE CLOCK OUT RECORD
  mainSheet.getRange(j,5).setValue(hoursWorked)
  .setHorizontalAlignment("left")
    .setFontSize(10);
        mainSheet.getRange(j,6)
        .setValue(new_date)
        .setNumberFormat("MM/dd/yyyy hh:mm:ss A/P")
        .setHorizontalAlignment("left")
        .setFontSize(10);
        var totalTime = (mainSheet.getRange(j,6).getValue() - mainSheet.getRange(j,4).getValue()) /(60*60*1000);
        mainSheet.getRange(j,7).setValue(totalTime.toFixed(2))
        .setNumberFormat("#0.00")
        .setHorizontalAlignment("left")
        .setFontSize(10);  
        foundRecord = true;     
      }
      
    }
    
    // IF NO CLOCK IN RECORD
    if(foundRecord == false)
    {
      return_array.push(['Need to Clock In First', '', employee]);
      return return_array; 
    }
    
    // CALL TOTAL HOURS
    // TotalHours();
    
    return_array.push([error, return_date, employee]);
    return return_array;
  }