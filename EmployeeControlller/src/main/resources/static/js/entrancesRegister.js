

function getDate(){
    let currentDate = new Date();
    let year = currentDate.getFullYear();
    let month = currentDate.getMonth() + 1;
    let day = currentDate.getDate();
    let HH = currentDate.getHours();
    let MM = currentDate.getMinutes();
    let SS = currentDate.getSeconds();
    let formattedDate = year + '-' + month.toString().padStart(2, '0') + '-' + day.toString().padStart(2, '0');
    let formattedTime = HH.toString().padStart(2, '0') + ':' + MM.toString().padStart(2, '0') + ':' + SS.toString().padStart(2, '0');
    console.log(formattedDate);
    console.log(formattedTime);
}