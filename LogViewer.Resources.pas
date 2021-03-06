{
  Copyright (C) 2013-2016 Tim Sinaeve tim.sinaeve@gmail.com

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
}

unit LogViewer.Resources;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.Classes,

  DDuce.Logger.Interfaces;

type
  TVKSet = set of Byte;

var
  VK_EDIT_KEYS : TVKSet = [
    VK_DELETE,
    VK_BACK,
    VK_LEFT,
    VK_RIGHT,
    VK_HOME,
    VK_END,
    VK_SHIFT,
    VK_CONTROL,
    VK_SPACE,
    Ord('0')..Ord('9'),
    Ord('A')..Ord('Z'),
    VK_OEM_1..VK_OEM_102,
    VK_NUMPAD0..VK_DIVIDE
  ];

  VK_CTRL_EDIT_KEYS : TVKSet = [
    VK_INSERT,
    VK_DELETE,
    VK_LEFT,
    VK_RIGHT,
    VK_HOME,
    VK_END,
    Ord('C'),
    Ord('X'),
    Ord('V'),
    Ord('Z')
  ];

  VK_SHIFT_EDIT_KEYS : TVKSet = [
    VK_INSERT,
    VK_DELETE,
    VK_LEFT,
    VK_RIGHT,
    VK_HOME,
    VK_END
  ];

resourcestring
  STitle      = 'Title';
  SName       = 'Name';
  SValue      = 'Value';
  STimestamp  = 'Timestamp';
  SProcessName = 'ProcessName';

type
  TNodeData = record
    Title   : string;
    MsgType : TLogMessageType;
    MsgData : TStream;
    MsgTime : TDateTime;
    Index   : Integer;
    Name    : string;
    Value   : string;
  end;
  PNodeData = ^TNodeData;

//const
//  PixelFormatNames: array [TPixelFormat] of string =
//    (
//    'pfDevice',
//    'pf1bit',
//    'pf4bit',
//    'pf8bit',
//    'pf15bit',
//    'pf16bit',
//    'pf24bit',
//    'pf32bit',
//    'pfCustom'
//    );
//  HandleTypeNames: array [TBitmapHandleType] of string =
//    ('bmDIB',
//    'bmDDB');

const
  ALL_MESSAGES = [
    lmtInfo,
    lmtError,
    lmtWarning,
    lmtValue,
    lmtEnterMethod,
    lmtLeaveMethod,
    lmtConditional,
    lmtCheckpoint,
    lmtStrings,
    lmtCallStack,
    lmtObject,
    lmtException,
    lmtBitmap,
    lmtHeapInfo,
    lmtMemory,
    lmtCustomData,
    lmtWatch,
    lmtCounter
  ];

implementation

end.
