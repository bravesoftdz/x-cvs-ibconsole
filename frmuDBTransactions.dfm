object frmDBTransactions: TfrmDBTransactions
  Left = 179
  Top = 175
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsDialog
  Caption = 'Transaction Recovery'
  ClientHeight = 417
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblDatabase: TLabel
    Left = 10
    Top = 14
    Width = 49
    Height = 13
    Caption = 'Database:'
  end
  object lblRepairStatus: TLabel
    Left = 14
    Top = 398
    Width = 104
    Height = 13
    Caption = 'Repairing Transaction'
    Visible = False
  end
  object pgcMain: TPageControl
    Left = 0
    Top = 43
    Width = 421
    Height = 249
    ActivePage = tabTransactions
    TabOrder = 0
    OnChange = pgcMainChange
    OnChanging = pgcMainChanging
    object tabTransactions: TTabSheet
      Caption = 'Transactions'
      object lblConnectPath: TLabel
        Left = 8
        Top = 190
        Width = 105
        Height = 16
        AutoSize = False
        Caption = 'Connect &Path:'
        FocusControl = edtPath
      end
      object edtPath: TEdit
        Left = 112
        Top = 185
        Width = 296
        Height = 21
        TabOrder = 0
      end
      object lvTransactions: TListView
        Left = 0
        Top = 0
        Width = 413
        Height = 169
        Align = alTop
        Columns = <
          item
            AutoSize = True
            Caption = 'Transaction'
          end
          item
            Caption = 'ID'
            Width = 62
          end
          item
            Caption = 'Action'
            Width = 100
          end
          item
            Caption = 'Status'
            Width = 85
          end>
        ReadOnly = True
        RowSelect = True
        TabOrder = 1
        ViewStyle = vsReport
        OnSelectItem = lvTransactionsSelectItem
      end
    end
    object tabAdvice: TTabSheet
      Caption = 'Details'
      ImageIndex = 1
      object lblStatus: TLabel
        Left = 4
        Top = 11
        Width = 92
        Height = 13
        Caption = 'Transaction Status:'
      end
      object memAdvice: TMemo
        Left = 0
        Top = 32
        Width = 413
        Height = 189
        Align = alBottom
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
  end
  object stxDatabase: TStaticText
    Left = 81
    Top = 15
    Width = 334
    Height = 21
    AutoSize = False
    TabOrder = 1
  end
  object btnOK: TButton
    Left = 257
    Top = 389
    Width = 75
    Height = 25
    Caption = '&Repair'
    Default = True
    TabOrder = 2
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 340
    Top = 389
    Width = 75
    Height = 25
    Caption = '&Cancel'
    TabOrder = 3
    OnClick = btnCancelClick
  end
  object rgOptions: TRadioGroup
    Left = 5
    Top = 296
    Width = 408
    Height = 85
    Caption = 'Repair &Options'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      '&Perform recommended action'
      'Co&mmit all transactions'
      'R&oll back all transactions'
      'Use &Two-Phase Commit')
    TabOrder = 4
    OnClick = rgOptionsClick
  end
  object FValidation: TIBValidationService
    Protocol = TCP
    LoginPrompt = False
    TraceFlags = []
    Options = []
    GlobalAction = CommitGlobal
    Left = 268
  end
end
