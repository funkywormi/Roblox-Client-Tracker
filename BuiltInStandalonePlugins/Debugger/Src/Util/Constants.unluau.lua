-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.CopySelected = "CopySelected"
var0.SelectAll = "SelectAll"
local var4 = "CopySelected"
local var5 = "SelectAll"
local var3 = {}
var3.DeleteWatch = "DeleteWatch"
var3.DeleteAllWatches = "DeleteAllWatches"
local var10 = "DeleteWatch"
local var11 = "DeleteAllWatches"
local var6 = {}
var6.EditLogpoint = "EditLogpoint"
var6.EnableLogpoint = "EnableLogpoint"
var6.DisableLogpoint = "DisableLogpoint"
var6.DeleteLogpoint = "DeleteLogpoint"
local var7 = {}
var7.EditBreakpoint = "EditBreakpoint"
var7.EnableBreakpoint = "EnableBreakpoint"
var7.DisableBreakpoint = "DisableBreakpoint"
var7.DeleteBreakpoint = "DeleteBreakpoint"
local var8 = {}
var8.GoToScript = "GoToScript"
local var25 = "EditLogpoint"
local var26 = "EnableLogpoint"
local var27 = "DisableLogpoint"
local var28 = "DeleteLogpoint"
local var29 = "GoToScript"
local var31 = "EditBreakpoint"
local var32 = "EnableBreakpoint"
local var33 = "DisableBreakpoint"
local var34 = "DeleteBreakpoint"
local var35 = "GoToScript"
local var19 = {}
var19.simulationResumeActionV2 = "simulationResumeActionV2"
var19.simulationPauseActionV2 = "simulationPauseActionV2"
var19.stepOverActionV2 = "stepOverActionV2"
var19.stepIntoActionV2 = "stepIntoActionV2"
var19.stepOutActionV2 = "stepOutActionV2"
local var20 = {}
var20.Client = "StudioGameStateType_PlayClient"
var20.Server = "StudioGameStateType_PlayServer"
var20.Edit = "StudioGameStateType_Edit"
local var21 = {}
var21.Unknown = "Enum.DebuggerPauseReason.Unknown"
var21.Requested = "Enum.DebuggerPauseReason.Requested"
var21.Breakpoint = "Enum.DebuggerPauseReason.Breakpoint"
var21.Exception = "Enum.DebuggerPauseReason.Exception"
var21.SingleStep = "Enum.DebuggerPauseReason.SingleStep"
var21.Entrypoint = "Enum.DebuggerPauseReason.Entrypoint"
local var22 = {}
var22.Success = "Enum.DebuggerStatus.Success"
var22.Timeout = "Enum.DebuggerStatus.Timeout"
var22.ConnectionLost = "Enum.DebuggerStatus.ConnectionLost"
var22.InvalidResponse = "Enum.DebuggerStatus.InvalidResponse"
var22.InternalError = "Enum.DebuggerStatus.InternalError"
var22.InvalidState = "Enum.DebuggerStatus.InvalidState"
var22.RpcError = "Enum.DebuggerStatus.RpcError"
var22.InvalidArgument = "Enum.DebuggerStatus.InvalidArgument"
var22.ConnectionClosed = "Enum.DebuggerStatus.ConnectionClosed"
local var23 = {}
var23.breakpointDisabled = "rbxasset://textures/Debugger/Breakpoints/" ... "breakpoint_disabled@2x.png"
var23.breakpointEnabled = "rbxasset://textures/Debugger/Breakpoints/" ... "breakpoint_enabled@2x.png"
var23.conditionalDisabled = "rbxasset://textures/Debugger/Breakpoints/" ... "conditional_disabled@2x.png"
var23.conditionalEnabled = "rbxasset://textures/Debugger/Breakpoints/" ... "conditional_enabled@2x.png"
var23.invalidBreakpoint = "rbxasset://textures/Debugger/Breakpoints/" ... "invalid_breakpoint@2x.png"
var23.invalidLogpoint = "rbxasset://textures/Debugger/Breakpoints/" ... "invalid_logpoint@2x.png"
var23.logpointDisabled = "rbxasset://textures/Debugger/Breakpoints/" ... "logpoint_disabled@2x.png"
var23.logpointEnabled = "rbxasset://textures/Debugger/Breakpoints/" ... "logpoint_enabled@2x.png"
var23.client = "rbxasset://textures/Debugger/Breakpoints/" ... "client@2x.png"
var23.server = "rbxasset://textures/Debugger/Breakpoints/" ... "server@2x.png"
local var24 = {}
var24.Breakpoint = "Breakpoint"
var24.Logpoint = "Logpoint"
local var25 = {}
var25.CallstackActionIds = var0
var25.WatchActionIds = var3
var25.LogpointActions = var6
var25.BreakpointActions = var7
var25.CommonActions = var8
var25.StepActionIds = var19
var25.HEADER_HEIGHT = 28
var25.ICON_SIZE = 16
var25.BUTTON_SIZE = 28
var25.BUTTON_PADDING = 2
var25.COLUMN_HEADER_HEIGHT = 24
var25.ROW_HEIGHT = 22
var25.DebugpointIconTable = var23
var25.SeparationToken = "_"
var25.GameStateTypes = var20
var25.DebugpointType = var24
var25.DebuggerPauseReason = var21
var25.DebuggerStatus = var22
function var25.GetIntForGST(arg1)
   local var0 = {}
   var0.StudioGameStateType_Edit = 0
   var0.StudioGameStateType_PlayClient = 1
   var0.StudioGameStateType_PlayServer = 2
   var0.StudioGameStateType_Standalone = 3
   return var0[arg1]
end

var25.LogpointActionsOrder = {}
var25.BreakpointActionsOrder = {}
var25.EnableKey = 2
var25.DisableKey = 3
var25.CallstackActionsOrder = {}
var25.WatchActionsOrder = {}
var25.ColumnSize = "ColumnSize"
var25.Tab = "Tab"
var25.ScopeFilter = "ScopeFilter"
var25.ColumnFilter = "ColumnFilter"
var25.ColumnSizeVariables = "ColumnSizeVariables"
var25.ColumnSizeMyWatches = "ColumnSizeMyWatches"
var25.WatchVariables = "WatchVariables"
var25.kInvalidDebuggerConnectionId = 65535
var25.DummyRowName = " "
var25.VariablesColumnFilter = "VariablesColumnFilter"
var25.MyWatchesColumnFilter = "MyWatchesColumnFilter"
return var25
