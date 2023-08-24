---@meta

---@class PlayerIdentifiers
---@field license string
---@field license2 string Preferred identifier; should always refer to Rockstar Social Club ID.
---@field discord? string
---@field fivem? string
---@field steam? string

---@class OxServer
---@field GetIdentifiers fun(playerId: number): PlayerIdentifiers
---@field CallPlayerMethod fun(method: string, ...): any
---@field GetPlayerData fun(): table?
---@field GetPlayerExports fun(): table
---@field GetPlayer fun(playerId: number): OxPlayer?
---@field GetPlayerByFilter fun(filter: any): OxPlayer?
---@field GetPlayers fun(filter: any): OxPlayer[]
---@field GetPlayerRegistry fun(): table<number, OxPlayerProperties>
---@field GetVehicle fun(entityId: number): OxVehicle?
---@field GetVehicleFromNetId fun(netId: number): OxVehicle?
---@field GetVehicleFromVehicleId fun(vehicleId: number): OxVehicle?
---@field GetVehicleRegistry fun(): table<number, OxVehicleProperties>
---@field CreateVehicle fun(data: any, coords: vector3, heading?: number): OxVehicle?
---@field GetVehicles fun(): OxVehicle[]
---@field GetGroup fun(name: string): OxGroupProperties?
---@field GenerateStateId fun(): string
---@field SaveAllPlayers fun()
---@field GetVehicleExports fun(): table
---@field CallVehicleMethod fun(method: string, ...): any
---@field GeneratePlate fun(): string
---@field GenerateVin fun(vehicleModel: string): string
Ox = {}

---@class OxPlayerProperties
---@field source number
---@field userid number
---@field charid number
---@field stateid string
---@field ped number
---@field name string
---@field username string
---@field firstname string
---@field lastname string

---@class OxPlayer : OxPlayerProperties
---@field set fun(key: string, value: any, replicated?: boolean)
---@field get fun(key?: string): any
---@field setGroup fun(name: string, grade?: number)
---@field getGroup fun(name: string): number?
---@field getGroups fun(self: self): table<string, number>
---@field hasGroup fun(filter: string | string[] | table<string, number>): string?, number?
---@field setStatus fun(name: string, value: number): boolean?
---@field addStatus fun(name: string, value: number): boolean?
---@field removeStatus fun(name: string, value: number): boolean?
---@field getLicenses fun(self: self): table<string, { issued: string }>
---@field getLicense fun(name: string): { issued: string }
---@field addLicense fun(name: string): boolean?
---@field removeLicense fun(name: string): boolean?
---@field getPlayersInScope fun(self: self): table<number, true>
---@field isPlayerInScope fun(playerId: number): boolean
---@field triggerScopedEvent fun(eventName: string, ...: any)
---@field logout fun(dropped?: boolean)
---@field getState fun(): StateBag
---@field getCoords fun(): vector3

---@class OxVehicleProperties
---@field id number
---@field owner? number
---@field group? string
---@field netid number
---@field entity number
---@field model string
---@field plate string
---@field vin? string
---@field script string
---@field stored? string

---@class OxVehicle : OxVehicleProperties
---@field getCoords fun(): vector3
---@field get fun(key?: string): any
---@field set fun(key: string, value: any)
---@field getState fun(): StateBag
---@field despawn fun()
---@field delete fun()
---@field setStored fun(value: string, despawn?: boolean)
---@field setOwner fun(newOwner?: number)
---@field setGroup fun(newGroup?: string)
---@field setPlate fun(plate: string)
