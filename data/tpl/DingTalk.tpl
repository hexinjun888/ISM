告警程序:ISM组态监控系统 
告警主题:{{if eq  .DataName "device.DeviceStatus"}}设备状态{{else}}{{.DataName}}{{end}}
告警设备:{{ .DeviceName }}
告警级别:{{if eq  .AlarmLevel 0}}提示{{else if eq  .AlarmLevel 1}}次要{{else if eq  .AlarmLevel 2}}重要{{else if eq  .AlarmLevel 3}}紧急{{else if eq  .AlarmLevel 4}}致命{{end}}
告警详情:{{if eq  .Value "1"}}{{if eq  .AlarmMessage "device.DeviceStatusOffline"}}设备离线{{else if eq  .AlarmMessage "VideoManager.VideoOffline"}}视频设备离线{{else}}{{ .AlarmMessage }}{{end}}{{else}}{{if eq  .AlarmClearMessage "device.DeviceStatusOnline"}}设备在线{{else if eq  .AlarmClearMessage "VideoManager.VideoOnline"}}视频设备在线{{else}}{{ .AlarmClearMessage }}{{end}}{{end}}
故障时间:{{ .HappenTime.Format "2006-01-02 15:04:05"}}
