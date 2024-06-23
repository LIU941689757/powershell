# 添加对 System.Windows.Forms 程序集的引用
Add-Type -AssemblyName System.Windows.Forms
# 添加对 System.Drawing 程序集的引用
Add-Type -AssemblyName System.Drawing

# 创建一个新的窗体对象
$form = New-Object System.Windows.Forms.Form
$form.Text = 'Data Entry Form' # 设置窗体的标题
$form.Size = New-Object System.Drawing.Size(500,500) # 设置窗体的大小
$form.StartPosition = 'CenterScreen' # 设置窗体的启动位置为屏幕中央

# 创建“OK”按钮
$okButton = New-Object System.Windows.Forms.Button
$okButton.Location = New-Object System.Drawing.Point(75,120) # 设置按钮位置
$okButton.Size = New-Object System.Drawing.Size(75,23) # 设置按钮大小
$okButton.Text = 'OK' # 设置按钮文本
$okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK # 设置按钮的对话结果为“OK”
$form.AcceptButton = $okButton # 设置窗体的确认按钮为“OK”按钮
$form.Controls.Add($okButton) # 将按钮添加到窗体控件集合中

# 创建“Cancel”按钮
$cancelButton = New-Object System.Windows.Forms.Button
$cancelButton.Location = New-Object System.Drawing.Point(150,120) # 设置按钮位置
$cancelButton.Size = New-Object System.Drawing.Size(75,23) # 设置按钮大小
$cancelButton.Text = 'Cancel' # 设置按钮文本
$cancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel # 设置按钮的对话结果为“Cancel”
$form.CancelButton = $cancelButton # 设置窗体的取消按钮为“Cancel”按钮
$form.Controls.Add($cancelButton) # 将按钮添加到窗体控件集合中

# 创建标签
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10,20) # 设置标签位置
$label.Size = New-Object System.Drawing.Size(500,20) # 设置标签大小
$label.Text = '请在下面的空白处输入信息：' # 设置标签文本
$form.Controls.Add($label) # 将标签添加到窗体控件集合中

# 创建文本框
$textBox = New-Object System.Windows.Forms.TextBox
$textBox.Location = New-Object System.Drawing.Point(10,40) # 设置文本框位置
$textBox.Size = New-Object System.Drawing.Size(400,20) # 设置文本框大小
$form.Controls.Add($textBox) # 将文本框添加到窗体控件集合中

# 将窗体置顶
$form.Topmost = $true

# 在窗体显示时，选择文本框
$form.Add_Shown({$textBox.Select()})
# 显示窗体，并获取用户点击的按钮结果
$result = $form.ShowDialog()

# 判断用户点击的按钮是否为“OK”
if ($result -eq [System.Windows.Forms.DialogResult]::OK)
{
    # 获取文本框中的文本
    $x = $textBox.Text
    # 输出文本
    $x
}
