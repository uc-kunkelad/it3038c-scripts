var http = require("http");
var fs = require("fs");
var os = require("os");
var ip = require("ip");

var server = http.createServer(function(req, res){
    if (req.url === "/") {
        fs.readFile("./public/index.html", "UTF-8", function(err, body){
            res.writeHead(200, {"Content-Type":"text/html"});
            res.end(body);
        })
    }
    else if(req.url.match("/sysinfo")){
        myHostName=os.hostname();
        myOSUptime=os.uptime();
        totalSeconds=Math.floor(myOSUptime);
        days=Math.floor(totalSeconds/86400);
        hours=Math.floor((totalSeconds-days*86400)/3600);
        minutes=Math.floor((totalSeconds-(days*86400+hours*3600))/60);
        seconds=Math.floor(totalSeconds-(days*86400+hours*3600+minutes*60));
        myTotalMem=os.totalmem();
        totalMemMB=Math.floor(myTotalMem/1048576);
        myFreeMem=os.freemem();
        totalFreeMem=Math.floor(myFreeMem/1048576);
        numberofCPUs=os.cpus().length;
        html=`
        <!DOCTYPE html>
            <html>
            <head>
                <title>System Information</title>
            </head>
            <body>
                <p>Hostname: ${myHostName}</p>
                <p>IP: ${ip.address()}</p>
                <p>Server Uptime: ${days} Days, ${hours} Hours, ${minutes} minutes, and ${seconds} seconds</p>
                <p>Total Memory: ${totalMemMB} MB</p>
                <p>Free Memory: ${totalFreeMem} MB</p>
                <p>Number of CPUs: ${numberofCPUs} CPUs</p>
            </body>
            </html>
        `
        res.writeHead(200, {"Content-Type": "text/html"});
        res.end(html);
    }
    else {
        res.writeHead(404, {"Content-Type": "text/html"});
        res.end(`404 File Not Found at ${req.url}`);
    }
    //res.writeHead(200, {"Content-Type": "text/html"});
    //res.end(
});

server.listen(3000);
    
    console.log("Server listening on port 3000");