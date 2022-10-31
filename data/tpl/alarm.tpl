
    <style>

        .email{
            border-top: 10px solid #ec0e0e;
            border-bottom: 1px solid #ec0e0e;
            border-left: 1px solid #ec0e0e;
            border-right: 1px solid #ec0e0e;
            border-radius: 7px;
            text-align: center;
            position: absolute;
            left: 0;
            right: 0;
            -moz-box-shadow: 2px 2px 10px #909090;
            -webkit-box-shadow: 2px 2px 10px #909090;
            box-shadow:2px 2px 10px #909090;
            padding: 30px;
            margin: auto;
            width: 500px;
            height: 400px;
        }
        .email i{

        }

        .email :focus {
            transition: all .35s;
            width: 100px;
            display: block;
            color: #fff;
            margin: 0 auto;
            margin-top: 20px;
            text-decoration: none;
            outline: none;
            border: 1px solid #fff;
            border-radius: 6px;
            text-align: center;
            line-height: 33px;
        }

        .email :hover {
            background: rgba(255, 255, 255, .2);
        }
    </style>

<div class="email">
    <h2>告警通知</h2>
    <div style="text-align: left">
    <span style="text-align:left;font-size:20px;font-weight:bold;"> 告警程序:</span>    ISM组态监控系统 <br>
    <span style=font-size:20px;font-weight:bold;> 告警主题:</span>  {{if eq  .DataName "device.DeviceStatus"}}
    设备状态
    {{else}}
    {{.DataName}}
    {{end}}
    <br>
    <span style=font-size:20px;font-weight:bold;> 告警设备:</span>    {{ .DeviceName }} <br>
    <span style=font-size:20px;font-weight:bold;> 告警级别:</span>
    {{if eq  .AlarmLevel 0}}
    提示
    {{else if eq  .AlarmLevel 1}}
    次要
    {{else if eq  .AlarmLevel 2}}
    重要
    {{else if eq  .AlarmLevel 3}}
    紧急
    {{else if eq  .AlarmLevel 4}}
    致命
    {{end}}
    <br>
    <span style=font-size:20px;font-weight:bold;> 告警详情:</span>

    {{if eq  .AlarmMessage "device.DeviceStatusOffline"}}
    设备离线
	{{else if eq  .AlarmMessage "device.DeviceStatusOnline"}}
	设备在线
    {{else}}
    {{ .AlarmMessage }}
    {{end}}
    <br>
    <span style=font-size:20px;font-weight:bold;> 故障时间:</span>    {{ .HappenTime.Format "2006-01-02 15:04:05"}}<br>
    <br>
    </div>

    <div>
        <div style=margin:40px>
            <p style=color:red;font-size:14px>
                (这是一封自动发送的邮件，请勿回复。)
            </p>
        </div>
        <div align=right style="margin:40px;border-top:solid 1px gray" id=bottomTime>
            <p style=margin-right:20px>
                ISM 组态监控系统
            </p>
        </div>
    </div>
</div>