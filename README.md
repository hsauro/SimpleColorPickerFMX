## Simple Color Picker for FMX ##


<img width="429" height="498" alt="image" src="https://github.com/user-attachments/assets/8aaa1c6c-091d-441d-a286-2b27696b8af9" />


   // Create once (e.g. FormCreate):
    FColorPicker := TColorPickerPopup.Create(Self);
    FColorPicker.OnColorChanged := HandleColorChanged;

    // Open it anchored to any swatch control:
    FColorPicker.Color := ASpecies.Style.FillColor;
    FColorPicker.ShowAt(rectFillSwatch);

    // Read the result in the callback:
    procedure TfrmMain.HandleColorChanged(Sender: TObject);
    begin
      rectFillSwatch.Fill.Color    := FColorPicker.Color;
      ASpecies.Style.FillColor     := FColorPicker.Color;
      ASpecies.Style.HasCustomStyle := True;
      PaintBox.Redraw;
    end;
