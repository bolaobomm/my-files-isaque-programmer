object frPrincipal: TfrPrincipal
  Left = 446
  Top = 162
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Ato Cotepe 17/04 - N.F. Paulista - Ver. 1.1'
  ClientHeight = 338
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 399
    Top = 304
    Width = 25
    Height = 25
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00D1A8A2FF9E4D44FE7B0D05FF881B0EFF84160CFF7100
      00FF933F3FFEC99F9FFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00F1E4E1FFA04939FE9E3516FFD16E31FFF79B48FFFFA44DFFFFA44DFFF69A
      47FFCA652DFF8B1D0DFF8A2F2FFEEDDFDFFFFF00FF00FF00FF00FF00FF00F2E5
      E1FF99381EFEC75F21FFFF9A38FFFF9A38FFFF9A38FFFF9A38FFFF9A38FFFF9A
      38FFFF9A38FFFF9A38FFB84B19FF780F0FFEEDDFDFFFFF00FF00FF00FF00AD5A
      3FFECC6019FFFF8F23FFFF8F23FFFFB976FFD2C5C0FFCCC3C0FFC9C2BFFFCAC2
      BFFFB15F16FFFF8F23FFFF8F23FFB84711FF8A2F2FFEFF00FF00DCB6A8FFB148
      13FFFF840FFFFF840FFFFF840FFFFF840FFFFFCA94FFFFFFFFFFFFFFFFFF9454
      17FFFF840FFFFF840FFFFF840FFFFF840FFF8B1702FFC99F9FFFBC7252FEDD68
      0AFFFF7F00FFFF7F00FFFF7F00FFFF7F00FFFFBE7FFFFFFFFFFFFFFFFFFF8E44
      02FFFF7F00FFFF7F00FFFF7F00FFFF7F00FFCA4F00FF933F3FFEAB4A1CFFFA7F
      04FFFF8403FFFF8403FFFF8303FFFF8303FFFFC080FFFFFFFFFFFFFFFFFF9A4A
      03FFFF8200FFFF8200FFFF8200FFFF8200FFF67900FF710000FFB9561AFFFF8E
      16FFFF911EFFFF911EFFFF911EFFFF911EFFFFC88EFFFFFFFFFFFFFFFFFFA851
      04FFFF8500FFFF8500FFFF8500FFFF8500FFFF8500FF831100FFBC5A1CFFFF9A
      2FFFFFA13FFFFFA13FFFFFA13FFFFFA13FFFFFD6AAFFFFFFFFFFFFFFFFFFB55A
      0FFFFF8500FFFF8500FFFF8500FFFF8500FFFF8500FF841301FFB65821FFFAA0
      44FFFFB161FFFFB161FFFFB161FFF7D4B2FFFFFFFFFFFFFFFFFFFFFFFFFFC577
      3CFFFFAD56FFFF9727FFFF8500FFFF8500FFF77D00FF760703FFC98359FEE58B
      3CFFFFC181FFFFC181FFFFC181FFFFC181FFFFC181FFEFB682FFEFBE93FFFFC1
      81FFFFC181FFFFC181FFFFBE7AFFFFB05CFFCF6924FF9B4742FEE5C3ACFFC765
      1CFFFFC88BFFFFD2A1FFFFD2A1FFFFD2A1FFFFE7CEFFEFE5E1FFC5A294FFD69C
      70FFFFD2A1FFFFD2A1FFFFD2A1FFFFCC96FF992E10FFCEA5A1FFFF00FF00C77C
      4CFEDD8134FFFFDBB2FFFFE1BFFFFFE1BFFFFFFBF7FFFFFFFFFFFFFFFFFFC591
      71FFFFE1BFFFFFE1BFFFFFE1BFFFC4724BFF9A4437FEFF00FF00FF00FF00F6EB
      E3FFBF6830FEDD8439FFFFE1BFFFFFEEDDFFFFF6ECFFFFFCF9FFF7EBE2FFFFEE
      DDFFFFEEDDFFFFE7CEFFC9774AFF93301CFEF0E2E0FFFF00FF00FF00FF00FF00
      FF00F6EBE3FFC67C4CFEC5631CFFE39E65FFFAD2A8FFFFDDB6FFFFDDB6FFF9D8
      B7FFDB9B71FFAD4A1EFFA7543DFEF1E4E1FFFF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00E5C2ACFFC88158FEB35420FFB9561AFFB55118FFA644
      19FFB76D50FED9B4A6FFFF00FF00FF00FF00FF00FF00FF00FF00}
    OnClick = SpeedButton1Click
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 8
    Width = 419
    Height = 145
    Caption = 'Dados Software House'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 56
      Width = 27
      Height = 13
      Caption = 'CNPJ'
    end
    object Label2: TLabel
      Left = 145
      Top = 56
      Width = 44
      Height = 13
      Caption = 'Insc. Est.'
    end
    object Label3: TLabel
      Left = 282
      Top = 56
      Width = 47
      Height = 13
      Caption = 'Insc.Mun.'
    end
    object Label4: TLabel
      Left = 8
      Top = 96
      Width = 77
      Height = 13
      Caption = 'Nome Aplicativo'
    end
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 63
      Height = 13
      Caption = 'Raz'#227'o Social'
    end
    object Label6: TLabel
      Left = 282
      Top = 96
      Width = 97
      Height = 13
      Caption = 'Vers'#227'o do Aplicativo'
    end
    object edtCNPJ: TEdit
      Left = 8
      Top = 72
      Width = 126
      Height = 21
      TabOrder = 0
    end
    object edtIE: TEdit
      Left = 145
      Top = 72
      Width = 126
      Height = 21
      TabOrder = 1
    end
    object edtIM: TEdit
      Left = 282
      Top = 72
      Width = 126
      Height = 21
      TabOrder = 2
    end
    object edtNomeAplic: TEdit
      Left = 8
      Top = 112
      Width = 262
      Height = 21
      TabOrder = 3
    end
    object edtRazao: TEdit
      Left = 8
      Top = 32
      Width = 401
      Height = 21
      TabOrder = 4
    end
    object edtVersao: TEdit
      Left = 282
      Top = 112
      Width = 126
      Height = 21
      TabOrder = 5
    end
  end
  object GroupBox2: TGroupBox
    Left = 7
    Top = 160
    Width = 419
    Height = 64
    Caption = 'Per'#237'odo do Download'
    TabOrder = 1
    object Label7: TLabel
      Left = 8
      Top = 16
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label8: TLabel
      Left = 221
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object edtDtIni: TDateTimePicker
      Left = 8
      Top = 32
      Width = 186
      Height = 21
      Date = 39479.395622465280000000
      Time = 39479.395622465280000000
      TabOrder = 0
    end
    object edtDtFim: TDateTimePicker
      Left = 221
      Top = 32
      Width = 186
      Height = 21
      Date = 39479.395622465280000000
      Time = 39479.395622465280000000
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 231
    Width = 417
    Height = 64
    Caption = 'Diret'#243'rios'
    TabOrder = 2
    object Label9: TLabel
      Left = 8
      Top = 16
      Width = 99
      Height = 13
      Caption = 'Diret'#243'rio de Trabalho'
    end
    object Label10: TLabel
      Left = 209
      Top = 16
      Width = 94
      Height = 13
      Caption = 'Diret'#243'rio de Backup'
    end
    object edtDirTrabalho: TEdit
      Left = 8
      Top = 32
      Width = 161
      Height = 21
      TabOrder = 0
    end
    object edtDirBackup: TEdit
      Left = 209
      Top = 32
      Width = 161
      Height = 21
      TabOrder = 1
    end
    object btnDirTrab: TBitBtn
      Left = 170
      Top = 32
      Width = 30
      Height = 21
      TabOrder = 2
      OnClick = btnDirTrabClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
        B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
        B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
        0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
        55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
        55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
        55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
        5555575FFF755555555557000075555555555577775555555555}
      NumGlyphs = 2
    end
    object btnDirBackup: TBitBtn
      Left = 371
      Top = 32
      Width = 30
      Height = 21
      TabOrder = 3
      OnClick = btnDirBackupClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
        B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
        B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
        0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
        55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
        55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
        55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
        5555575FFF755555555557000075555555555577775555555555}
      NumGlyphs = 2
    end
  end
  object btnGerar: TBitBtn
    Left = 95
    Top = 304
    Width = 115
    Height = 25
    Caption = 'Gerar'
    TabOrder = 3
    OnClick = btnGerarClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00000000FFFF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00001808FF086531FF000400FFFF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00001808FF39A66BFF6BEBB5FF39925AFF000800FFFF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00001800FF31A263FF39E39CFF18DB8CFF52E7ADFF398E5AFF000C
      00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00001C00FF219E52FF29D78CFF18CF84FF18D384FF18D784FF42DF9CFF318A
      4AFF000C00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00001C
      00FF109242FF18C773FF18C36BFF18C773FF18C77BFF18CB7BFF18CF7BFF29D7
      8CFF218642FF001000FFFF00FF00FF00FF00FF00FF00FF00FF00002400FF108E
      39FF18BA63FF18B663FF31C373FF42CB84FF42D38CFF4ACF8CFF39CB84FF29C7
      7BFF21CB7BFF108A39FF001800FFFF00FF00FF00FF00FF00FF00087129FF21B6
      5AFF52BE84FF73CF9CFF7BD7A5FF42BE7BFF107D42FF52CF94FF7BDBADFF73D7
      A5FF6BD39CFF42CB84FF108A31FF002000FFFF00FF00FF00FF00003010FF4AB2
      6BFF9CDBB5FF94DBB5FF42BA73FF003010FFFF00FF00084521FF5ACF8CFF9CDF
      BDFF94DBB5FF94DBB5FF5ACB8CFF108A31FF002800FFFF00FF00FF00FF000020
      08FF52AE73FF42AA6BFF001C08FFFF00FF00FF00FF00FF00FF00003010FF5ABE
      84FFB5E7CEFFB5E3C6FFB5E3C6FF73CF9CFF108629FF002C00FFFF00FF00FF00
      FF00001800FF001400FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF000020
      08FF52AE73FFD6F3DEFFCEEBDEFFDEEFE7FF94DBADFF085D18FFFF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00001400FF529E63FFEFFFF7FFDEF7E7FF42965AFF001000FFFF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000FF428E52FF39864AFF000000FFFF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000C00FF000C00FFFF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object btnFechar: TBitBtn
    Left = 223
    Top = 304
    Width = 115
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = btnFecharClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00101073FF000029FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000431FF10106BFFFF00FF00FF00FF00FF00FF000000
      8CFF3134F7FF0808CEFF000031FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000039FF080CCEFF3130EFFF00007BFFFF00FF00000063FF0808
      E7FF4A49F7FF4A4DF7FF0000C6FF000039FFFF00FF00FF00FF00FF00FF00FF00
      FF0000004AFF0004CEFF5A59EFFF5A59F7FF0808DEFF00004AFF000484FF2120
      FFFF3134FFFF5A59FFFF4A49EFFF0004C6FF000042FFFF00FF00FF00FF000000
      52FF0808CEFF5A59EFFF7371FFFF5255FFFF3134FFFF00046BFF000473FF181C
      FFFF2928FFFF3938FFFF5255FFFF4245EFFF0004C6FF00004AFF00005AFF0808
      CEFF5255EFFF6B69FFFF5251FFFF4241FFFF3130FFFF080C52FFFF00FF000808
      7BFF181CFFFF2928FFFF3134FFFF4A49FFFF3134EFFF0000BDFF0004C6FF4245
      EFFF5A59FFFF4245FFFF393CFFFF292CFFFF080C63FFFF00FF00FF00FF00FF00
      FF0008086BFF1818FFFF292CFFFF393CFFFF4A4DFFFF3130EFFF3134EFFF4A49
      FFFF3938FFFF3130FFFF2124F7FF08084AFFFF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000452FF393CEFFF6361FFFF6361FFFF6361FFFF6361FFFF6361
      FFFF5A59FFFF2928DEFF000439FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000048CFF393CF7FF6361FFFF6361FFFF6365FFFF6365
      FFFF3134EFFF000463FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000005AFF0000A5FF3130F7FF6B69FFFF6B69FFFF6B69FFFF6B69
      FFFF2120E7FF00009CFF000042FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000052FF0000A5FF3134F7FF7B79FFFF7B79FFFF7B79FFFF7B79FFFF7B79
      FFFF7375FFFF2124E7FF000094FF000039FFFF00FF00FF00FF00FF00FF000000
      52FF00009CFF4241F7FF8C8AFFFF8C8AFFFF8C8AFFFF3130C6FF4A49DEFF8C8E
      FFFF8C8AFFFF8486FFFF2928E7FF00008CFF000039FFFF00FF00000018FF0000
      9CFF4A49F7FF9C9AFFFF9C9AFFFF9C9AFFFF3134BDFFFF00FF00000021FF5255
      E7FF9C9EFFFF9C9AFFFF9496FFFF292CE7FF00007BFFFF00FF00000029FF5255
      FFFFADAEFFFFADAAFFFFADAAFFFF393CBDFFFF00FF00FF00FF00FF00FF000000
      29FF5A5DE7FFADAEFFFFADAAFFFFADAAFFFF3130DEFFFF00FF00FF00FF004245
      BDFFBDBAFFFFBDBAFFFF393CBDFFFF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000029FF6B69E7FFCECBFFFFA5A6FFFF21248CFFFF00FF00FF00FF00FF00
      FF00393CBDFF4241C6FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000029FF5A59E7FF181C7BFFFF00FF00FF00FF00}
  end
  object XPManifest1: TXPManifest
    Left = 392
    Top = 8
  end
end