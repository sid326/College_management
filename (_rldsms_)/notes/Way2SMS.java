/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package way2sms;

/**
 *
 * @author Venkata
 */


import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.net.URLEncoder;

class  Credentials {
private ArrayList list = new ArrayList();

public void set(String name, String value) {
StringBuffer buffer = new StringBuffer();

buffer.append(name);
buffer.append("=");
buffer.append(getUTF8String(value));

add(buffer.toString());
}

public void append(String name, String value) {
StringBuffer buffer = new StringBuffer();

buffer.append("&");
buffer.append(name);
buffer.append("=");
buffer.append(getUTF8String(value));

add(buffer.toString());
}

private void add(String item) {
list.add(item);
}

private String getUTF8String(String value) {
String encodedValue = null;

try {
encodedValue = URLEncoder.encode(value, "UTF-8");
} catch(Exception exception) {
//
System.out.println("Encoding error");
//
}

return encodedValue;
}

public boolean isEmpty() {
return list.isEmpty();
}

public void reset() {
list.clear();
}

public String getUserCredentials() {
StringBuffer buffer = new StringBuffer();
int size = list.size();

for(int i = 0; i < size; i++)
buffer.append(list.get(i));

return buffer.toString();
}
}

//url connector


/*import java.net.URL;
import java.net.HttpURLConnection;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
 * */
 

class URLConnector {
private static HttpURLConnection connection;

public static void connect(String urlPath, boolean redirect, String method, String cookie, String credentials) throws IOException {
try {
URL url = new URL(urlPath);
connection = (HttpURLConnection) url.openConnection();

connection.setInstanceFollowRedirects(redirect);

if(cookie != null)
connection.setRequestProperty("Cookie", cookie);

if(method != null && method.equalsIgnoreCase("POST")) {
connection.setRequestMethod(method);
connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
}

connection.setUseCaches (false);
connection.setDoInput(true);
connection.setDoOutput(true);

if(credentials != null) {
DataOutputStream wr = new DataOutputStream (connection.getOutputStream ());
wr.writeBytes (credentials);
wr.flush ();
wr.close ();
}
} catch(Exception exception) {
//
System.out.println("Connection error");
//
}
}

public static String getCookie() {
String cookie = null;

if(connection != null) {
String headerName=null;

for (int i = 1; (headerName = connection.getHeaderFieldKey(i)) != null; i++) {
if (headerName.equals("Set-Cookie")) {
cookie = connection.getHeaderField(i).split(";")[0];
break;
}
}
}

return cookie;
}

public static int getResponseCode() {
int responseCode = -1;

if(connection != null) {
try {
responseCode = connection.getResponseCode();
} catch(Exception exception) {
//
System.out.println("Response code error");
//
}

}

return responseCode;
}

public static String getResponse() {
StringBuffer response = new StringBuffer();

if(connection != null) {
try {
InputStream is = connection.getInputStream();
BufferedReader rd = new BufferedReader(new InputStreamReader(is));

String line = null;
while((line = rd.readLine()) != null) {
response.append(line);
response.append('\r');
}

rd.close();
} catch(Exception exception) {
//
System.out.println("Response error");
//
}
}

return response.toString();
}

public static String getErrorMessage() {
StringBuffer errorMessage = new StringBuffer();

if(connection != null) {
try {
InputStream is = connection.getErrorStream();
BufferedReader rd = new BufferedReader(new InputStreamReader(is));

String line = null;
while((line = rd.readLine()) != null) {
errorMessage.append(line);
errorMessage.append('\r');
}

rd.close();
} catch(Exception exception) {
//
System.out.println("Error in getting error message");
//
}
}

return errorMessage.toString();
}

public static void disconnect() {
if(connection != null)
connection.disconnect();
}
}

//Way2Sms (entry point)
public class Way2SMS {
private static int responseCode = -1;
private static String userCredentials = null;
private static String cookie = null;
private static String actionStr = null;
private static Credentials credentials = new Credentials();

public static void main(String[] args) throws IOException {
login("7845537395", "W9643P");
sendSMS("7299575036", "hello");
System.out.println("Message has been sent successfully!");
}

private static void login(String uid, String pwd) throws IOException {
credentials.set("username", uid); //mobile no
credentials.append("password", pwd); //password
credentials.append("button", "Login");
userCredentials = credentials.getUserCredentials();

URLConnector.connect("http://site5.way2sms.com/Login1.action", false, "POST", null, userCredentials);
cookie = URLConnector.getCookie();
responseCode = URLConnector.getResponseCode();
if(responseCode != 302 && responseCode != 200)
exit(URLConnector.getErrorMessage());
URLConnector.disconnect();
}

private static void getActionString() throws IOException {
URLConnector.connect("http://site5.way2sms.com/jsp/InstantSMS.jsp", false, "GET", cookie, null);
responseCode = URLConnector.getResponseCode();
if(responseCode == 302 || responseCode == 200) {

String str = URLConnector.getResponse();

String aStr = "name=\"Action\" id=\"Action\"";
int aStrLen = aStr.length();
System.out.println(aStr);
int index = str.indexOf(aStr);
index=3;
if(index > 0) {
str = str.substring(index + aStrLen);
index = str.indexOf("\"");

if(index > 0) {
str = str.substring(index + 1);
index = str.indexOf("\"");
if(index > 0)
actionStr = str.substring(0, index);

}
}
} else {
exit(URLConnector.getErrorMessage());
}
URLConnector.disconnect();
}

private static void sendSMS(String receiversMobNo, String msg) throws IOException {
getActionString();

credentials.reset();
credentials.set("HiddenAction", "instantsms");
credentials.append("catnamedis", "Birthday");
if(actionStr != null)
credentials.append("Action", actionStr);
else
exit("Action string missing!");
credentials.append("chkall", "on");
credentials.append("MobNo", receiversMobNo); //receivers mobile no
credentials.append("textArea", msg); //actual message
credentials.append("bulidguid", "username");
credentials.append("bulidgpwd", "*******");
credentials.append("bulidyuid", "username");
credentials.append("bulidypwd", "*******");
credentials.append("guid1", "username");
credentials.append("gpwd1", "*******");
credentials.append("yuid1", "username");
credentials.append("ypwd1", "*******");

userCredentials = credentials.getUserCredentials();

URLConnector.connect("http://site5.way2sms.com/quicksms.action", true, "POST", cookie, userCredentials);
responseCode = URLConnector.getResponseCode();
if(responseCode != 302 && responseCode != 200)
exit(URLConnector.getErrorMessage());
URLConnector.disconnect();
}

private static void exit(String errorMsg) {
System.out.println(errorMsg);
System.exit(1);
}
}