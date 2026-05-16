'开发一个监控程序，按一定频率监听U盘的状态
'如果发现有U盘，且可用，则将U盘中的数据（文件+文件夹）全部自动拷贝到电脑的指定
目录。
'单向同步,静默传输
set fos=createobject("scripting.filesystemobject")
dim uPan
uPan=""
for each drive in fos.Drives
	if drive.IsReady And then
		wscript.echo "盘符："&drive.DriveLetter
		wscript.echo"类型："&drive.DriveType
		wscript.echo"路径："&drive.Path
	end if
next
