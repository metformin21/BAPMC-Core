/* ----------------------------------------------------------------------------
	Function: vs_core_fnc_limitArsenal
	
	Description:
	Limits arsenal based on player rank
	
	Parameters:
	0: _player
	
	Returns:
	Nothing.
	
	Examples:
	[player] call vs_core_fnc_limitArsenal;
	
	Author:
	Met
	License GPL-2.0
---------------------------------------------------------------------------- */
params [["_player", player, [objNull]]];

if (isNull _player) exitWith {
	diag_log "[vs_core_fnc_limitArsenal] invalid player";
	false
};

private _ranks = [
	["rct", ["arifle_AK12_F"]]
];

private _playername = toLower name _player;
private _splitName = _playerName splitString ". ";

if (count _splitName < 2) exitWith {
	diag_log format ["[vs_core_fnc_limitArsenal] player name '%1' does not contain a rank.", _playerName];
	false
};

private _playerRank = _splitName select 0;

private _blacklistedItems = [];
{
	if (_x select 0 == _playerRank) then {
		_blacklistedItems = _x select 1;
	};
} forEach _ranks;

// to not conflict with other arsenal functions, its easier to remove items that certain ranks are not allowed
{
	if (!isNil {
		_x getVariable "ace_arsenal_virtualItems"
	}) then {
		[_x, _blacklistedItems, false] call ace_arsenal_fnc_removeVirtualItems;
		diag_log format ["Object %1 has ace_arsenal_virtualItems", _x];
	};
} forEach allMissionObjects "All";