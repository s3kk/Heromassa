accountManager = "yes"
namelockManager = "no"
newPlayerChooseVoc = "yes"
newPlayerSpawnPosX = 10160
newPlayerSpawnPosY = 10054
newPlayerSpawnPosZ = 7
newPlayerTownId = 1
newPlayerLevel = 8
newPlayerMagicLevel = 4
generateAccountNumber = "no"
enableCast = false
healthHealingColor = COLOR_GREEN -- [podendo alterar a cor].
manaHealingColor = COLOR_DARKPURPLE -- [podendo alterar a cor].

redSkullLength = 4 * 17 * 17 * 17
blackSkullLength = 4 * 24 * 60 * 60
dailyFragsToRedSkull = 10
weeklyFragsToRedSkull = 20
monthlyFragsToRedSkull = 100
dailyFragsToBlackSkull = dailyFragsToRedSkull
weeklyFragsToBlackSkull = weeklyFragsToRedSkull
monthlyFragsToBlackSkull = monthlyFragsToRedSkull
dailyFragsToBanishment = dailyFragsToRedSkull
weeklyFragsToBanishment = weeklyFragsToRedSkull
monthlyFragsToBanishment = monthlyFragsToRedSkull
blackSkulledDeathHealth = 100
blackSkulledDeathMana = 35
useBlackSkull = true
useFragHandler = true
advancedFragList = false

notationsToBan = 3
warningsToFinalBan = 3
warningsToDeletion = 2
banLength = 1 * 24 * 60 * 60
killsBanLength = 1 * 24 * 60 * 60
finalBanLength = 1 * 24 * 60 * 60
ipBanishmentLength = 1 * 24 * 60 * 60
broadcastBanishments = false
maxVioltionCommentSize = 200
violationNameReportActionType = 2
worldType = "open"
protectionLevel = 100
pvpTileIgnoreLevelAndVocationProtection = false
pzLocked = 30 * 500
huntingDuration = 60 * 1000
criticalHitChance = 5
criticalHitMultiplier = 1
displayCriticalHitNotify = false
removeWeaponAmmunition = false
removeWeaponCharges = false
removeRuneCharges = "no"
whiteSkullTime = 15 * 60 * 100
noDamageToSameLookfeet = false
showHealingDamage = true
showHealingDamageForMonsters = true
fieldOwnershipDuration = 5 * 1000
stopAttackingAtExit = false
oldConditionAccuracy = false
loginProtectionPeriod = 10 * 10
deathLostPercent = 10
stairhopDelay = 0 * 1000
pushCreatureDelay = 1 * 1000
deathContainerId = 11237
gainExperienceColor = 220
addManaSpentInPvPZone = true
squareColor = 0
allowFightback = true

worldId = 0
ip = "127.0.0.1"
bindOnlyConfiguredIpAddress = false
loginPort = 7171
gamePort = 7172
adminPort = 7171
statusPort = 7171
loginTries = 5
retryTimeout = 30 * 30
loginTimeout = 30 * 30
maxPlayers = 1000
motd = ""
displayOnOrOffAtCharlist = false
onePlayerOnlinePerAccount = false
allowClones = false
serverName = ""
loginMessage = ""
statusTimeout = 5 * 40 * 50
replaceKickOnLogin = true
forceSlowConnectionsToDisconnect = false
loginOnlyWithLoginServer = false
premiumPlayerSkipWaitList = true

sqlType = "mysql"
sqlHost = "10.0.0.4"
sqlPort = 3306
sqlUser = "tibia"
sqlPass = "tibia"
sqlDatabase = "tibia"
sqlFile = "massa.s3db"
sqlKeepAlive = 0
mysqlReadTimeout = 10
mysqlWriteTimeout = 10
encryptionType = "plain"

deathListEnabled = true
deathListRequiredTime = 1 * 60 * 1000
deathAssistCount = 19
maxDeathRecords = 5

ingameGuildManagement = true
levelToFormGuild = 100
premiumDaysToFormGuild = 0
guildNameMinLength = 1
guildNameMaxLength = 200

highscoreDisplayPlayers = 100
updateHighscoresAfterMinutes = 1

buyableAndSellableHouses = true
houseNeedPremium = false
bedsRequirePremium = false
levelToBuyHouse = 200
housesPerAccount = 2
houseRentAsPrice = false
housePriceAsRent = false
housePriceEachSquare = 1000
houseRentPeriod = "never"
houseCleanOld = 0
guildHalls = false

timeBetweenActions = 120
timeBetweenExActions = 500
checkCorpseOwner = true
hotkeyAimbotEnabled = true
maximumDoorLevel = 0

mapName = "hero.otbm"
mapAuthor = "HeroServer"
randomizeTiles = true
useHouseDataStorage = false
storeTrash = true
cleanProtectedZones = true
mailboxDisabledTowns = "-1"

defaultPriority = "high"
niceLevel = 5
coresUsed = "-1"
optimizeDatabaseAtStartup = true
removePremiumOnInit = true
confirmOutdatedVersion = false

maxMessageBuffer = 10000
bufferMutedOnSpellFailure = false

dataDirectory = "data/"
allowChangeOutfit = true
allowChangeColors = true
allowChangeAddons = true
addonsOnlyPremium = false
disableOutfitsForPrivilegedPlayers = false
bankSystem = true
saveGlobalStorage = true
displaySkillLevelOnAdvance = true
spellNameInsteadOfWords = false
emoteSpells = true
promptExceptionTracerErrorBox = true
storePlayerDirection = false
monsterLootMessage = 3
monsterLootMessageType = 24
separateViplistPerCharacter = false

ghostModeInvisibleEffect = false    
ghostModeSpellEffects = true

idleWarningTime = 30 * 60 * 1000
idleKickTime = 15 * 60 * 1000
expireReportsAfterReads = 1
playerQueryDeepness = 2
maxItemsPerPZTile = 0
maxItemsPerHouseTile = 0

freePremium = false
premiumForPromotion = false

blessingOnlyPremium = false
blessingReductionBase = 30
blessingReductionDecreament = 5
eachBlessReduction = 10

experienceStages = "yes"
rateExperience = 500
rateExperienceFromPlayers = 0
rateSkill = 400
rateMagic = 200
rateLoot = 10
rateSpawn = 2

rateMonsterHealth = 1.0
rateMonsterMana = 1.0
rateMonsterAttack = 1.0
rateMonsterDefense = 1.0

minLevelThresholdForKilledPlayer = 0
maxLevelThresholdForKilledPlayer = 0

rateStaminaLoss = 0.5
rateStaminaGain = 3
rateStaminaThresholdGain = 24
staminaRatingLimitTop = 99 * 60
staminaRatingLimitBottom = 14 * 60
staminaLootLimit = 14 * 60
rateStaminaAboveNormal = 1.0
rateStaminaUnderNormal = 0.5
staminaThresholdOnlyPremium = true

experienceShareRadiusX = 30
experienceShareRadiusY = 30
experienceShareRadiusZ = 1
experienceShareLevelDifference = 1 / 3
extraPartyExperienceLimit = 20
extraPartyExperiencePercent = 10
experienceShareActivity = 20 * 600 * 10000

globalSaveEnabled = false
globalSaveHour = 8
shutdownAtGlobalSave = true
cleanMapAtGlobalSave = true

deSpawnRange = 2
deSpawnRadius = 50

maxPlayerSummons = 2
teleportAllSummons = true
teleportPlayerSummons = true

serverNameInScroll = "HeroServer"
hostNameInScroll = "Sekk"

Account = ""
Password = ""
IpHost = ""

Account = ""
Password = ""
Name = ""
ID = ""
Health = ""

ownerName = "hero"
ownerEmail = ""
url = ""
location = "Brazil"
displayGamemastersWithOnlineCommand = true
adminLogsEnabled = true
displayPlayersLogging = true
prefixChannelLogs = ""
runFile = ""
outLogName = ""
errorLogName = ""
truncateLogsOnStartup = false
