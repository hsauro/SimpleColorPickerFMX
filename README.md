## Simple Color Picker for FMX ##


<img width="320"  alt="image" src="https://github.com/user-attachments/assets/8aaa1c6c-091d-441d-a286-2b27696b8af9" />


    // Declare variable
    FColorPicker: TColorPickerPopup;
    
    // Create once (e.g. FormCreate):
    FColorPicker := TColorPickerPopup.Create(Self);
    FColorPicker.OnColorChanged := HandleColorChanged;

    // Open it anchored to any control, for example a button
    FColorPicker.Color := claRed;
    FColorPicker.ShowAt(btnGetColor);

    // Read the result in the callback:
    procedure TfrmMain.HandleColorChanged(Sender: TObject);
    begin
      SelectedColor := FColorPicker.Color;
    end;
