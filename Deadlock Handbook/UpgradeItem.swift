//
//  UpgradeItem.swift
//  Deadlock Handbook
//
//  Michael Ha
//  CSC 680
//
//  I generated this with the help of quicktype.io using the JSON schema
//  from the API call. This stores a single UpgradeItem, and all the data.

import Foundation

// MARK: - UpgradeItemElement
struct UpgradeItemElement: Codable, Identifiable {
    let id: Int?
    let className, name: String?
    let startTrained: Bool?
    let image: String?
    let imageWebp: String?
    let updateTime: Int?
    let properties: Properties?
    let weaponInfo: WeaponInfo?
    let type: TypeEnum?
    let itemSlotType: ItemSlotType?
    let itemTier: Int?
    let disabled: Bool?
    let description: ItemDescription?
    let activation: Activation?
    let componentItems: [String]?
    let isActiveItem, shopable: Bool?
    let cost: Int?

    enum CodingKeys: String, CodingKey {
        case id
        case className = "class_name"
        case name
        case startTrained = "start_trained"
        case image
        case imageWebp = "image_webp"
        case updateTime = "update_time"
        case properties
        case weaponInfo = "weapon_info"
        case type
        case itemSlotType = "item_slot_type"
        case itemTier = "item_tier"
        case disabled, description, activation
        case componentItems = "component_items"
        case isActiveItem = "is_active_item"
        case shopable, cost
    }
}

enum Activation: String, Codable {
    case instantCast = "instant_cast"
    case passive = "passive"
    case press = "press"
}

// MARK: - Description
struct ItemDescription: Codable {
    let desc, passive, active: String?
}

enum ItemSlotType: String, Codable {
    case spirit = "spirit"
    case vitality = "vitality"
    case weapon = "weapon"
}

// MARK: - Properties
struct Properties: Codable {
    let abilityCastDelay: AbilityCastDelay?
    let abilityCastRange: AbilityCastRange?
    let abilityChannelTime, abilityCharges: AbilityCastDelay?
    let abilityCooldown: AbilityCooldown?
    let abilityCooldownBetweenCharge, abilityDuration: AbilityCastDelay?
    let abilityPostCastDuration: AbilityPostCastDuration?
    let abilityResourceCost: AbilityCastDelay?
    let abilityUnitTargetLimit: AbilityUnitTargetLimit?
    let bonusHealth, bonusHealthRegen, bonusSprintSpeed: AbilityLifestealPercentHero?
    let channelMoveSpeed: AbilityCastRange?
    let techPower: BaseAttackDamagePercent?
    let weaponPower: AbilityCastDelay?
    let baseAttackDamagePercent: BaseAttackDamagePercent?
    let bonusHeavyMeleeDamage: ActiveBonusFireRate?
    let meleeDistanceScale: AirControlPercent?
    let damage, fireRateBonus: AbilityLifestealPercentHero?
    let fireRateDuration: ActivateTime?
    let procCooldown: AbilityLifestealPercentHero?
    let auraRadius, healOnLevelHealAmount: ActiveBonusFireRate?
    let baseDamagePct: AbilityLifestealPercentHero?
    let baseDamagePerShot: ActivateTime?
    let nanoTechPerShot: AbilityLifestealPercentHero?
    let spellAmplificationMultiplier: SpellAmplificationMultiplier?
    let bonusClipPerKill: ActivateTime?
    let bonusFireRate, bonusMoveSpeed: AbilityLifestealPercentHero?
    let maxClipBonus: ActivateTime?
    let maxHealthLossPercent: AbilityLifestealPercentHero?
    let maxStacks: MaxStacks?
    let weaponPowerPerKill, techResist: BaseAttackDamagePercent?
    let baseBonusWeaponPower, bonusHeadshotDamage: AirControlPercent?
    let burstFireShotPercent, burstFireShotsFromClipPercent, cycleTimeFireRateDecrease, intraBurstFireRateIncrease: ActivateTime?
    let nonBurstFireConversionFactor, normalizedClipEmptySpeedIncrease, perfectBurstWeaponPower, activateTime: ActivateTime?
    let assaultDuration: ActiveBonusFireRate?
    let assaultFireRate: AirControlPercent?
    let assaultLifestealPercent, bulletLifestealPercent: AbilityLifestealPercentHero?
    let explodeRadius: ActiveBonusFireRate?
    let jumpVelocityHidden: ActivateTime?
    let bonusClipSizePercent: AbilityLifestealPercentHero?
    let airMoveIncreasePercent, stamina, staminaCooldownReduction: AirControlPercent?
    let bonusClipSize, fervorBulletResist, fervorFireRate, fervorMovespeed: AbilityLifestealPercentHero?
    let lingerDuration: ActiveBonusFireRate?
    let lowHealthThreshold: ActivateTime?
    let slowDuration, slowPercent, cooldownReduction: AbilityLifestealPercentHero?
    let techShieldMaxHealth: BaseAttackDamagePercent?
    let buildUpDuration: ActiveBonusFireRate?
    let buildUpPerShot, dampingFactor, empDuration, empProcChance: ActivateTime?
    let explodeDamage, immunityDuration: ActiveBonusFireRate?
    let liftHeight, maxFallSpeed: ActivateTime?
    let moveSpeedMax: AbilityLifestealPercentHero?
    let slamdownSpeed: ActivateTime?
    let stasisRadius, stunDuration, baseBonusCounter: ActiveBonusFireRate?
    let killWindow: ActivateTime?
    let maxWeaponPower, weaponPowerPerDeath, procBonusMagicDamage: ActiveBonusFireRate?
    let procChance: ActivateTime?
    let radius: ActiveBonusFireRate?
    let spiritPower: BaseAttackDamagePercent?
    let damagePulseAmount, damagePulseRadius: ActiveBonusFireRate?
    let meleeResistPercent: AirControlPercent?
    let bonusMeleeDamagePercent: AbilityLifestealPercentHero?
    let spiritDamage: ActiveBonusFireRate?
    let techArmorDamageReduction: BaseAttackDamagePercent?
    let healthDrainedPerSecond, interval: ActivateTime?
    let weaponPowerWhileActivated, dps, dpsIncrease, dpsMax: ActiveBonusFireRate?
    let tickRate: ActivateTime?
    let debuffDuration, startRadius: ActiveBonusFireRate?
    let abilityLifestealPercentHero: AbilityLifestealPercentHero?
    let airControlPercent: AirControlPercent?
    let dropDownSpeed: ActivateTime?
    let impactDamage: ActiveBonusFireRate?
    let impactHeight: ActivateTime?
    let interuptCooldown: InteruptCooldown?
    let minAimAngle: ActivateTime?
    let slamDownRadius: ActiveBonusFireRate?
    let tossSpeed, verticalDifferenceTolerance: ActivateTime?
    let bonusReloadSpeed, bonusWeaponPower, healthDamagePercent: ActiveBonusFireRate?
    let overdriveClipDuration, bulletResist: AbilityLifestealPercentHero?
    let techRadiusMultiplier, techRangeMultiplier: BaseAttackDamagePercent?
    let tetherDuration: ActiveBonusFireRate?
    let tetherRadius: BaseAttackDamagePercent?
    let tempTechShieldHealth: ActiveBonusFireRate?
    let bonusAbilityCharges, cooldownBetweenChargeReduction: AbilityLifestealPercentHero?
    let cooldownReductionOnChargedAbilities: AirControlPercent?
    let airJumpVerticalSpeedPercent: ActiveBonusFireRate?
    let airJumps: ActivateTime?
    let bonusPerChain: ActiveBonusFireRate?
    let chainCount: ActivateTime?
    let chainRadius: ActiveBonusFireRate?
    let chainTickRate: ActivateTime?
    let damagePerChain: ActiveBonusFireRate?
    let bulletShieldMaxHealth: AbilityLifestealPercentHero?
    let invisAlertWhenFading, invisCancelOnDamage: ActivateTime?
    let invisDuration, invisFadeToDuration: ActiveBonusFireRate?
    let invisMoveSpeedMod: AbilityLifestealPercentHero?
    let revealOnDamageDuration, revealOnSpottedDuration: ActiveBonusFireRate?
    let spottedRadius: ActivateTime?
    let delayDuration: ActiveBonusFireRate?
    let minimumDamage: ActivateTime?
    let movementSpeedSlow: AbilityLifestealPercentHero?
    let techDamagePercent: BaseAttackDamagePercent?
    let nonHeroAbilityLifestealTooltipOnly, fullInvisDistance: ActivateTime?
    let nonPlayerBonusWeaponPower, nonPlayerBulletResist, bulletShieldDamagePercent, resistReduction: AbilityLifestealPercentHero?
    let statusResistancePercent: BaseAttackDamagePercent?
    let activeBonusFireRate: ActiveBonusFireRate?
    let activeBonusLifesteal: AbilityLifestealPercentHero?
    let activeReloadPercent, minTargetsRequired: ActivateTime?
    let fireRateSlow: AbilityLifestealPercentHero?
    let silenceDuration: ActivateTime?
    let techDamageReduction: BaseAttackDamagePercent?
    let shreddersTechAmp, bonusAbilityDurationPercent, slowResistancePercent: AbilityLifestealPercentHero?
    let captureRadius: ActiveBonusFireRate?
    let imbuedTechRadiusMultiplier, imbuedTechRangeMultiplier, nonImbuedTechRadiusMultiplier, nonImbuedTechRangeMultiplier: AbilityLifestealPercentHero?
    let spellShieldFlavorText: BaseAttackDamagePercent?
    let spellShieldLingerDuration: ActivateTime?
    let attackDamageWhenShielded, fireRateWhenShielded: AbilityLifestealPercentHero?
    let ammoPerSoul: ActivateTime?
    let spiritPowerPerSoul: BaseAttackDamagePercent?
    let lifestealHeal, lifestealHealPercent: ActiveBonusFireRate?
    let nonHeroHealPct: ActivateTime?
    let stunDelay: ActiveBonusFireRate?
    let visualContractRadius: ActivateTime?
    let healthSteal, particleRadius: ActiveBonusFireRate?
    let stackLostPerDeath: ActivateTime?
    let stealDuration: ActiveBonusFireRate?
    let stealPerHit, stealPerKill: ActivateTime?
    let imbuedTechPower, moveWhileShootingSpeedPenaltyReductionPercent, moveWhileZoomedSpeedPenaltyReductionPercent: AbilityLifestealPercentHero?
    let movementSpeedBonusDuration: ActiveBonusFireRate?
    let tempBulletShieldHealth: BaseAttackDamagePercent?
    let bonusReloadTime, initialFireRateDecrease, maxFireRateIncrease, spinUpDecay: ActivateTime?
    let spinUpTime: ActivateTime?
    let closeRangeBonusDamageRange, closeRangeBonusWeaponPower, activeMoveSpeedPenalty: AbilityLifestealPercentHero?
    let critDamagePercent, damageDuration, damageToStack, weaponPowerPerStack: ActiveBonusFireRate?
    let lifestrikeHeal, lifestrikeHealPercent: ActiveBonusFireRate?
    let bonusBulletSpeedPercent: AbilityLifestealPercentHero?
    let vexBarrierBulletMaxHealth: BaseAttackDamagePercent?
    let vexBarrierShieldDuration: ActiveBonusFireRate?
    let vexBarrierTechMaxHealth: BaseAttackDamagePercent?
    let regenDuration, totalHealthRegen: ActiveBonusFireRate?
    let bonusSpirit, ambushBonusFireRate, ambushBonusTechPower: AbilityLifestealPercentHero?
    let ambushDuration, healInterval, healPercentAmount: ActiveBonusFireRate?
    let selfModifier: ActivateTime?
    let groundDashReductionPercent: AbilityLifestealPercentHero?
    let damageReduction, damageThreshold: ActivateTime?
    let bonusBaseWeaponDamageTaken: AirControlPercent?
    let heightOffGround, nonHeroReductionPercent: ActivateTime?
    let techArmor: BaseAttackDamagePercent?
    let imbuedBonusDamage, imbuedBonusDuration: AbilityLifestealPercentHero?
    let movementThresholdSq, regenWhileInvisible: ActivateTime?
    let endRadius, npcDamageMult, spreadDuration, headShotBonusDamage: ActiveBonusFireRate?
    let outgoingDamagePenaltyPercent: AirControlPercent?
    let bulletArmorReduction: AbilityLifestealPercentHero?
    let killBonusMoveSpeedPerStack, lowHealthLifeStealPercent: ActiveBonusFireRate?
    let lowHealthPercentThreshold, maxKillBonusMoveSpeedStack: ActivateTime?
    let healPerStack: ActiveBonusFireRate?
    let baseAttackDamagePercentBonus: BaseAttackDamagePercent?
    let enemyLifeThreshold: ActivateTime?
    let activeBonusMoveSpeed: AbilityLifestealPercentHero?
    let activeRadius: ActiveBonusFireRate?
    let bonusFireRatePlayerUnit, maxHealthDamage: AbilityLifestealPercentHero?
    let reProcLockoutTime: ActivateTime?
    let bonusAttackRangePercent, bonusZoomPercent, longRangeBonusWeaponPower, longRangeBonusWeaponPowerMinRange: AbilityLifestealPercentHero?
    let reloadSpeedMultipler: AirControlPercent?
    let respawnBonusHealthDuration: ActivateTime?
    let respawnDelay, storedSpiritDamage: ActiveBonusFireRate?
    let baseAttackDamagePercentAtMaxDuration: BaseAttackDamagePercent?
    let shootDurationForMax, modelScaleGrowth: ActivateTime?
    let healAmpReceivePenaltyPercent, healAmpRegenPenaltyPercent: AirControlPercent?
    let maxHealthPercentAsDPS, maxHealthPercentAsHealPerSecond: ActiveBonusFireRate?
    let bulletResistDuration: ActivateTime?
    let bulletResistPerStack: AirControlPercent?
    let maxArmorStacks: ActivateTime?
    let ricochetDamagePercent, ricochetRadius: ActiveBonusFireRate?
    let ricochetTargetsTooltipOnly, singleTargetPlayerMultiplier: ActivateTime?
    let bonusTechPower: AirControlPercent?
    let buffDuration: ActiveBonusFireRate?
    let degenResistance: AbilityLifestealPercentHero?
    let healAmpCastPercent, healAmpRegenPercent: AirControlPercent?
    let lifeThreshold: ActivateTime?
    let healOnKill: ActiveBonusFireRate?
    let skipFrames: AirControlPercent?
    let spiritSteal: ActivateTime?
    let spiritStealDuration: ActiveBonusFireRate?
    let attackConeAngle, bulletSpeedOverride, casterHealthPercent, modelScale: ActivateTime?
    let stationaryRecoilReduction, stationaryWeaponPower, trackingSpeed, turretAttackDelay: ActivateTime?
    let turretAttackRange, turretDeployTime, turretLifetime: ActiveBonusFireRate?
    let headshotBonusSteal: ActivateTime?
    let spiritStolePerHit: ActiveBonusFireRate?
    let nonImbuedBonusDuration, activatedFireRate, slideScale, flyMoveSpeed: AbilityLifestealPercentHero?
    let flyingBulletShield, flyingTechShield, shieldDuration: AbilityLifestealPercentHero?
    let summonDuration: ActivateTime?
    let bulletShieldOnCast: AbilityLifestealPercentHero?
    let techShieldOnCast: BaseAttackDamagePercent?
    let highGroundBonusWeaponPower, bulletArmor: AbilityLifestealPercentHero?
    let heroTargetBonus: ActivateTime?
    let bonusMovespeed: AbilityLifestealPercentHero?
    let bonusSpiritMaxTime, bonusSpiritMin, bonusSpiritWindow: ActivateTime?
    let magicIncreasePerStack, bonusDamagePerHero, dotHealthPercent: ActiveBonusFireRate?
    let saviorBulletShieldHealth, saviorMagicShieldHealth: AbilityLifestealPercentHero?
    let techArmorGain, techPowerGain, techPowerReduction: BaseAttackDamagePercent?
    let imbuedCooldownReduction, nonImbuedCooldownReduction: AbilityLifestealPercentHero?
    let casterBuffDuration: ActiveBonusFireRate?
    let buffDamageMult: ActivateTime?
    let buffMoveSpeedBonus: AbilityLifestealPercentHero?
    let galvanicBuffDuration, galvanicDebuffDuration, healAmount, healRadius: ActiveBonusFireRate?
    let bulletDamageReflectedPct: ActiveBonusFireRate?
    let returnFireBulletResist: AbilityLifestealPercentHero?
    let spiritDamageReflectedPct, deathImmunityDuration: ActiveBonusFireRate?
    let deathImmunityPulseRateMultiplier: ActivateTime?
    let pulseInterval, pulseRadius: ActiveBonusFireRate?
    let bonusClipDuration, cooldownReductionFlat, lightMeleeTimeWindow, healLifePercentOutOfCombat: ActivateTime?
    let healthThreshold, restoreDelay, bonusFireRateNPC: ActivateTime?
    let dotDuration: ActiveBonusFireRate?
    let dotMultiplerTroopers: ActivateTime?
    let maxHealthRegen: ActiveBonusFireRate?
    let bonusSpiritForChargedAbilities: AirControlPercent?
    let healFromHero, healFromNPC: ActiveBonusFireRate?
    let bulletResistReduction, magicResistReduction: AbilityLifestealPercentHero?
    let bonusSpiritWithMagicShield: ActiveBonusFireRate?
    let cooldownReductionWithShield: AbilityLifestealPercentHero?
    let respawnHealthPercent: ActiveBonusFireRate?
    let spawnTimePenalty: AbilityLifestealPercentHero?
    let healPercentPerHeadshot, spiritPowerGainPct: ActiveBonusFireRate?
    let localBulletArmorReduction: AbilityLifestealPercentHero?
    let armorLossPerHit, maxBulletResist: ActiveBonusFireRate?
    let stackLossFrequency: ActivateTime?
    let bonusChargedAbilityDamage: AirControlPercent?
    let bonusChargedCooldownReduction, techCleaveDamagePercent, techCleaveRadius: ActiveBonusFireRate?

    enum CodingKeys: String, CodingKey {
        case abilityCastDelay = "AbilityCastDelay"
        case abilityCastRange = "AbilityCastRange"
        case abilityChannelTime = "AbilityChannelTime"
        case abilityCharges = "AbilityCharges"
        case abilityCooldown = "AbilityCooldown"
        case abilityCooldownBetweenCharge = "AbilityCooldownBetweenCharge"
        case abilityDuration = "AbilityDuration"
        case abilityPostCastDuration = "AbilityPostCastDuration"
        case abilityResourceCost = "AbilityResourceCost"
        case abilityUnitTargetLimit = "AbilityUnitTargetLimit"
        case bonusHealth = "BonusHealth"
        case bonusHealthRegen = "BonusHealthRegen"
        case bonusSprintSpeed = "BonusSprintSpeed"
        case channelMoveSpeed = "ChannelMoveSpeed"
        case techPower = "TechPower"
        case weaponPower = "WeaponPower"
        case baseAttackDamagePercent = "BaseAttackDamagePercent"
        case bonusHeavyMeleeDamage = "BonusHeavyMeleeDamage"
        case meleeDistanceScale = "MeleeDistanceScale"
        case damage = "Damage"
        case fireRateBonus = "FireRateBonus"
        case fireRateDuration = "FireRateDuration"
        case procCooldown = "ProcCooldown"
        case auraRadius = "AuraRadius"
        case healOnLevelHealAmount = "HealOnLevelHealAmount"
        case baseDamagePct = "BaseDamagePct"
        case baseDamagePerShot = "BaseDamagePerShot"
        case nanoTechPerShot = "NanoTechPerShot"
        case spellAmplificationMultiplier = "SpellAmplificationMultiplier"
        case bonusClipPerKill = "BonusClipPerKill"
        case bonusFireRate = "BonusFireRate"
        case bonusMoveSpeed = "BonusMoveSpeed"
        case maxClipBonus = "MaxClipBonus"
        case maxHealthLossPercent = "MaxHealthLossPercent"
        case maxStacks = "MaxStacks"
        case weaponPowerPerKill = "WeaponPowerPerKill"
        case techResist = "TechResist"
        case baseBonusWeaponPower = "BaseBonusWeaponPower"
        case bonusHeadshotDamage = "BonusHeadshotDamage"
        case burstFireShotPercent = "BurstFireShotPercent"
        case burstFireShotsFromClipPercent = "BurstFireShotsFromClipPercent"
        case cycleTimeFireRateDecrease = "CycleTimeFireRateDecrease"
        case intraBurstFireRateIncrease = "IntraBurstFireRateIncrease"
        case nonBurstFireConversionFactor = "NonBurstFireConversionFactor"
        case normalizedClipEmptySpeedIncrease = "NormalizedClipEmptySpeedIncrease"
        case perfectBurstWeaponPower = "PerfectBurstWeaponPower"
        case activateTime = "ActivateTime"
        case assaultDuration = "AssaultDuration"
        case assaultFireRate = "AssaultFireRate"
        case assaultLifestealPercent = "AssaultLifestealPercent"
        case bulletLifestealPercent = "BulletLifestealPercent"
        case explodeRadius = "ExplodeRadius"
        case jumpVelocityHidden = "JumpVelocityHidden"
        case bonusClipSizePercent = "BonusClipSizePercent"
        case airMoveIncreasePercent = "AirMoveIncreasePercent"
        case stamina = "Stamina"
        case staminaCooldownReduction = "StaminaCooldownReduction"
        case bonusClipSize = "BonusClipSize"
        case fervorBulletResist = "FervorBulletResist"
        case fervorFireRate = "FervorFireRate"
        case fervorMovespeed = "FervorMovespeed"
        case lingerDuration = "LingerDuration"
        case lowHealthThreshold = "LowHealthThreshold"
        case slowDuration = "SlowDuration"
        case slowPercent = "SlowPercent"
        case cooldownReduction = "CooldownReduction"
        case techShieldMaxHealth = "TechShieldMaxHealth"
        case buildUpDuration = "BuildUpDuration"
        case buildUpPerShot = "BuildUpPerShot"
        case dampingFactor = "DampingFactor"
        case empDuration = "EMPDuration"
        case empProcChance = "EMPProcChance"
        case explodeDamage = "ExplodeDamage"
        case immunityDuration = "ImmunityDuration"
        case liftHeight = "LiftHeight"
        case maxFallSpeed = "MaxFallSpeed"
        case moveSpeedMax = "MoveSpeedMax"
        case slamdownSpeed = "SlamdownSpeed"
        case stasisRadius = "StasisRadius"
        case stunDuration = "StunDuration"
        case baseBonusCounter = "BaseBonusCounter"
        case killWindow = "KillWindow"
        case maxWeaponPower = "MaxWeaponPower"
        case weaponPowerPerDeath = "WeaponPowerPerDeath"
        case procBonusMagicDamage = "ProcBonusMagicDamage"
        case procChance = "ProcChance"
        case radius = "Radius"
        case spiritPower = "SpiritPower"
        case damagePulseAmount = "DamagePulseAmount"
        case damagePulseRadius = "DamagePulseRadius"
        case meleeResistPercent = "MeleeResistPercent"
        case bonusMeleeDamagePercent = "BonusMeleeDamagePercent"
        case spiritDamage = "SpiritDamage"
        case techArmorDamageReduction = "TechArmorDamageReduction"
        case healthDrainedPerSecond = "HealthDrainedPerSecond"
        case interval = "Interval"
        case weaponPowerWhileActivated = "WeaponPowerWhileActivated"
        case dps = "DPS"
        case dpsIncrease = "DPSIncrease"
        case dpsMax = "DPSMax"
        case tickRate = "TickRate"
        case debuffDuration = "DebuffDuration"
        case startRadius = "StartRadius"
        case abilityLifestealPercentHero = "AbilityLifestealPercentHero"
        case airControlPercent = "AirControlPercent"
        case dropDownSpeed = "DropDownSpeed"
        case impactDamage = "ImpactDamage"
        case impactHeight = "ImpactHeight"
        case interuptCooldown = "InteruptCooldown"
        case minAimAngle = "MinAimAngle"
        case slamDownRadius = "SlamDownRadius"
        case tossSpeed = "TossSpeed"
        case verticalDifferenceTolerance = "VerticalDifferenceTolerance"
        case bonusReloadSpeed = "BonusReloadSpeed"
        case bonusWeaponPower = "BonusWeaponPower"
        case healthDamagePercent = "HealthDamagePercent"
        case overdriveClipDuration = "OverdriveClipDuration"
        case bulletResist = "BulletResist"
        case techRadiusMultiplier = "TechRadiusMultiplier"
        case techRangeMultiplier = "TechRangeMultiplier"
        case tetherDuration = "TetherDuration"
        case tetherRadius = "TetherRadius"
        case tempTechShieldHealth = "TempTechShieldHealth"
        case bonusAbilityCharges = "BonusAbilityCharges"
        case cooldownBetweenChargeReduction = "CooldownBetweenChargeReduction"
        case cooldownReductionOnChargedAbilities = "CooldownReductionOnChargedAbilities"
        case airJumpVerticalSpeedPercent = "AirJumpVerticalSpeedPercent"
        case airJumps = "AirJumps"
        case bonusPerChain = "BonusPerChain"
        case chainCount = "ChainCount"
        case chainRadius = "ChainRadius"
        case chainTickRate = "ChainTickRate"
        case damagePerChain = "DamagePerChain"
        case bulletShieldMaxHealth = "BulletShieldMaxHealth"
        case invisAlertWhenFading = "InvisAlertWhenFading"
        case invisCancelOnDamage = "InvisCancelOnDamage"
        case invisDuration = "InvisDuration"
        case invisFadeToDuration = "InvisFadeToDuration"
        case invisMoveSpeedMod = "InvisMoveSpeedMod"
        case revealOnDamageDuration = "RevealOnDamageDuration"
        case revealOnSpottedDuration = "RevealOnSpottedDuration"
        case spottedRadius = "SpottedRadius"
        case delayDuration = "DelayDuration"
        case minimumDamage = "MinimumDamage"
        case movementSpeedSlow = "MovementSpeedSlow"
        case techDamagePercent = "TechDamagePercent"
        case nonHeroAbilityLifestealTooltipOnly = "NonHeroAbilityLifestealTooltipOnly"
        case fullInvisDistance = "FullInvisDistance"
        case nonPlayerBonusWeaponPower = "NonPlayerBonusWeaponPower"
        case nonPlayerBulletResist = "NonPlayerBulletResist"
        case bulletShieldDamagePercent = "BulletShieldDamagePercent"
        case resistReduction = "ResistReduction"
        case statusResistancePercent = "StatusResistancePercent"
        case activeBonusFireRate = "ActiveBonusFireRate"
        case activeBonusLifesteal = "ActiveBonusLifesteal"
        case activeReloadPercent = "ActiveReloadPercent"
        case minTargetsRequired = "MinTargetsRequired"
        case fireRateSlow = "FireRateSlow"
        case silenceDuration = "SilenceDuration"
        case techDamageReduction = "TechDamageReduction"
        case shreddersTechAmp = "ShreddersTechAmp"
        case bonusAbilityDurationPercent = "BonusAbilityDurationPercent"
        case slowResistancePercent = "SlowResistancePercent"
        case captureRadius = "CaptureRadius"
        case imbuedTechRadiusMultiplier = "ImbuedTechRadiusMultiplier"
        case imbuedTechRangeMultiplier = "ImbuedTechRangeMultiplier"
        case nonImbuedTechRadiusMultiplier = "NonImbuedTechRadiusMultiplier"
        case nonImbuedTechRangeMultiplier = "NonImbuedTechRangeMultiplier"
        case spellShieldFlavorText = "SpellShieldFlavorText"
        case spellShieldLingerDuration = "SpellShieldLingerDuration"
        case attackDamageWhenShielded = "AttackDamageWhenShielded"
        case fireRateWhenShielded = "FireRateWhenShielded"
        case ammoPerSoul = "AmmoPerSoul"
        case spiritPowerPerSoul = "SpiritPowerPerSoul"
        case lifestealHeal = "LifestealHeal"
        case lifestealHealPercent = "LifestealHealPercent"
        case nonHeroHealPct = "NonHeroHealPct"
        case stunDelay = "StunDelay"
        case visualContractRadius = "VisualContractRadius"
        case healthSteal = "HealthSteal"
        case particleRadius = "ParticleRadius"
        case stackLostPerDeath = "StackLostPerDeath"
        case stealDuration = "StealDuration"
        case stealPerHit = "StealPerHit"
        case stealPerKill = "StealPerKill"
        case imbuedTechPower = "ImbuedTechPower"
        case moveWhileShootingSpeedPenaltyReductionPercent = "MoveWhileShootingSpeedPenaltyReductionPercent"
        case moveWhileZoomedSpeedPenaltyReductionPercent = "MoveWhileZoomedSpeedPenaltyReductionPercent"
        case movementSpeedBonusDuration = "MovementSpeedBonusDuration"
        case tempBulletShieldHealth = "TempBulletShieldHealth"
        case bonusReloadTime = "BonusReloadTime"
        case initialFireRateDecrease = "InitialFireRateDecrease"
        case maxFireRateIncrease = "MaxFireRateIncrease"
        case spinUpDecay = "SpinUpDecay"
        case spinUpTime = "SpinUpTime"
        case closeRangeBonusDamageRange = "CloseRangeBonusDamageRange"
        case closeRangeBonusWeaponPower = "CloseRangeBonusWeaponPower"
        case activeMoveSpeedPenalty = "ActiveMoveSpeedPenalty"
        case critDamagePercent = "CritDamagePercent"
        case damageDuration = "DamageDuration"
        case damageToStack = "DamageToStack"
        case weaponPowerPerStack = "WeaponPowerPerStack"
        case lifestrikeHeal = "LifestrikeHeal"
        case lifestrikeHealPercent = "LifestrikeHealPercent"
        case bonusBulletSpeedPercent = "BonusBulletSpeedPercent"
        case vexBarrierBulletMaxHealth = "VexBarrierBulletMaxHealth"
        case vexBarrierShieldDuration = "VexBarrierShieldDuration"
        case vexBarrierTechMaxHealth = "VexBarrierTechMaxHealth"
        case regenDuration = "RegenDuration"
        case totalHealthRegen = "TotalHealthRegen"
        case bonusSpirit = "BonusSpirit"
        case ambushBonusFireRate = "AmbushBonusFireRate"
        case ambushBonusTechPower = "AmbushBonusTechPower"
        case ambushDuration = "AmbushDuration"
        case healInterval = "HealInterval"
        case healPercentAmount = "HealPercentAmount"
        case selfModifier = "SelfModifier"
        case groundDashReductionPercent = "GroundDashReductionPercent"
        case damageReduction = "DamageReduction"
        case damageThreshold = "DamageThreshold"
        case bonusBaseWeaponDamageTaken = "BonusBaseWeaponDamageTaken"
        case heightOffGround = "HeightOffGround"
        case nonHeroReductionPercent = "NonHeroReductionPercent"
        case techArmor = "TechArmor"
        case imbuedBonusDamage = "ImbuedBonusDamage"
        case imbuedBonusDuration = "ImbuedBonusDuration"
        case movementThresholdSq = "MovementThresholdSq"
        case regenWhileInvisible = "RegenWhileInvisible"
        case endRadius = "EndRadius"
        case npcDamageMult = "NPCDamageMult"
        case spreadDuration = "SpreadDuration"
        case headShotBonusDamage = "HeadShotBonusDamage"
        case outgoingDamagePenaltyPercent = "OutgoingDamagePenaltyPercent"
        case bulletArmorReduction = "BulletArmorReduction"
        case killBonusMoveSpeedPerStack = "KillBonusMoveSpeedPerStack"
        case lowHealthLifeStealPercent = "LowHealthLifeStealPercent"
        case lowHealthPercentThreshold = "LowHealthPercentThreshold"
        case maxKillBonusMoveSpeedStack = "MaxKillBonusMoveSpeedStack"
        case healPerStack = "HealPerStack"
        case baseAttackDamagePercentBonus = "BaseAttackDamagePercentBonus"
        case enemyLifeThreshold = "EnemyLifeThreshold"
        case activeBonusMoveSpeed = "ActiveBonusMoveSpeed"
        case activeRadius = "ActiveRadius"
        case bonusFireRatePlayerUnit = "BonusFireRatePlayerUnit"
        case maxHealthDamage = "MaxHealthDamage"
        case reProcLockoutTime = "ReProcLockoutTime"
        case bonusAttackRangePercent = "BonusAttackRangePercent"
        case bonusZoomPercent = "BonusZoomPercent"
        case longRangeBonusWeaponPower = "LongRangeBonusWeaponPower"
        case longRangeBonusWeaponPowerMinRange = "LongRangeBonusWeaponPowerMinRange"
        case reloadSpeedMultipler = "ReloadSpeedMultipler"
        case respawnBonusHealthDuration = "RespawnBonusHealthDuration"
        case respawnDelay = "RespawnDelay"
        case storedSpiritDamage = "StoredSpiritDamage"
        case baseAttackDamagePercentAtMaxDuration = "BaseAttackDamagePercentAtMaxDuration"
        case shootDurationForMax = "ShootDurationForMax"
        case modelScaleGrowth = "ModelScaleGrowth"
        case healAmpReceivePenaltyPercent = "HealAmpReceivePenaltyPercent"
        case healAmpRegenPenaltyPercent = "HealAmpRegenPenaltyPercent"
        case maxHealthPercentAsDPS = "MaxHealthPercentAsDPS"
        case maxHealthPercentAsHealPerSecond = "MaxHealthPercentAsHealPerSecond"
        case bulletResistDuration = "BulletResistDuration"
        case bulletResistPerStack = "BulletResistPerStack"
        case maxArmorStacks = "MaxArmorStacks"
        case ricochetDamagePercent = "RicochetDamagePercent"
        case ricochetRadius = "RicochetRadius"
        case ricochetTargetsTooltipOnly = "RicochetTargetsTooltipOnly"
        case singleTargetPlayerMultiplier = "SingleTargetPlayerMultiplier"
        case bonusTechPower = "BonusTechPower"
        case buffDuration = "BuffDuration"
        case degenResistance = "DegenResistance"
        case healAmpCastPercent = "HealAmpCastPercent"
        case healAmpRegenPercent = "HealAmpRegenPercent"
        case lifeThreshold = "LifeThreshold"
        case healOnKill = "HealOnKill"
        case skipFrames = "SkipFrames"
        case spiritSteal = "SpiritSteal"
        case spiritStealDuration = "SpiritStealDuration"
        case attackConeAngle = "AttackConeAngle"
        case bulletSpeedOverride = "BulletSpeedOverride"
        case casterHealthPercent = "CasterHealthPercent"
        case modelScale = "ModelScale"
        case stationaryRecoilReduction = "StationaryRecoilReduction"
        case stationaryWeaponPower = "StationaryWeaponPower"
        case trackingSpeed = "TrackingSpeed"
        case turretAttackDelay = "TurretAttackDelay"
        case turretAttackRange = "TurretAttackRange"
        case turretDeployTime = "TurretDeployTime"
        case turretLifetime = "TurretLifetime"
        case headshotBonusSteal = "HeadshotBonusSteal"
        case spiritStolePerHit = "SpiritStolePerHit"
        case nonImbuedBonusDuration = "NonImbuedBonusDuration"
        case activatedFireRate = "ActivatedFireRate"
        case slideScale = "SlideScale"
        case flyMoveSpeed = "FlyMoveSpeed"
        case flyingBulletShield = "FlyingBulletShield"
        case flyingTechShield = "FlyingTechShield"
        case shieldDuration = "ShieldDuration"
        case summonDuration = "SummonDuration"
        case bulletShieldOnCast = "BulletShieldOnCast"
        case techShieldOnCast = "TechShieldOnCast"
        case highGroundBonusWeaponPower = "HighGroundBonusWeaponPower"
        case bulletArmor = "BulletArmor"
        case heroTargetBonus = "HeroTargetBonus"
        case bonusMovespeed = "BonusMovespeed"
        case bonusSpiritMaxTime = "BonusSpiritMaxTime"
        case bonusSpiritMin = "BonusSpiritMin"
        case bonusSpiritWindow = "BonusSpiritWindow"
        case magicIncreasePerStack = "MagicIncreasePerStack"
        case bonusDamagePerHero = "BonusDamagePerHero"
        case dotHealthPercent = "DotHealthPercent"
        case saviorBulletShieldHealth = "SaviorBulletShieldHealth"
        case saviorMagicShieldHealth = "SaviorMagicShieldHealth"
        case techArmorGain = "TechArmorGain"
        case techPowerGain = "TechPowerGain"
        case techPowerReduction = "TechPowerReduction"
        case imbuedCooldownReduction = "ImbuedCooldownReduction"
        case nonImbuedCooldownReduction = "NonImbuedCooldownReduction"
        case casterBuffDuration = "CasterBuffDuration"
        case buffDamageMult = "BuffDamageMult"
        case buffMoveSpeedBonus = "BuffMoveSpeedBonus"
        case galvanicBuffDuration = "GalvanicBuffDuration"
        case galvanicDebuffDuration = "GalvanicDebuffDuration"
        case healAmount = "HealAmount"
        case healRadius = "HealRadius"
        case bulletDamageReflectedPct = "BulletDamageReflectedPct"
        case returnFireBulletResist = "ReturnFireBulletResist"
        case spiritDamageReflectedPct = "SpiritDamageReflectedPct"
        case deathImmunityDuration = "DeathImmunityDuration"
        case deathImmunityPulseRateMultiplier = "DeathImmunityPulseRateMultiplier"
        case pulseInterval = "PulseInterval"
        case pulseRadius = "PulseRadius"
        case bonusClipDuration = "BonusClipDuration"
        case cooldownReductionFlat = "CooldownReductionFlat"
        case lightMeleeTimeWindow = "LightMeleeTimeWindow"
        case healLifePercentOutOfCombat = "HealLifePercentOutOfCombat"
        case healthThreshold = "HealthThreshold"
        case restoreDelay = "RestoreDelay"
        case bonusFireRateNPC = "BonusFireRateNPC"
        case dotDuration = "DotDuration"
        case dotMultiplerTroopers = "DotMultiplerTroopers"
        case maxHealthRegen = "MaxHealthRegen"
        case bonusSpiritForChargedAbilities = "BonusSpiritForChargedAbilities"
        case healFromHero = "HealFromHero"
        case healFromNPC = "HealFromNPC"
        case bulletResistReduction = "BulletResistReduction"
        case magicResistReduction = "MagicResistReduction"
        case bonusSpiritWithMagicShield = "BonusSpiritWithMagicShield"
        case cooldownReductionWithShield = "CooldownReductionWithShield"
        case respawnHealthPercent = "RespawnHealthPercent"
        case spawnTimePenalty = "SpawnTimePenalty"
        case healPercentPerHeadshot = "HealPercentPerHeadshot"
        case spiritPowerGainPct = "SpiritPowerGainPct"
        case localBulletArmorReduction = "LocalBulletArmorReduction"
        case armorLossPerHit = "ArmorLossPerHit"
        case maxBulletResist = "MaxBulletResist"
        case stackLossFrequency = "StackLossFrequency"
        case bonusChargedAbilityDamage = "BonusChargedAbilityDamage"
        case bonusChargedCooldownReduction = "BonusChargedCooldownReduction"
        case techCleaveDamagePercent = "TechCleaveDamagePercent"
        case techCleaveRadius = "TechCleaveRadius"
    }
}

// MARK: - AbilityCastDelay
struct AbilityCastDelay: Codable {
    let value: String?
    let canSetTokenOverride: Bool?
    let cssClass: AbilityCastDelayCSSClass?
    let disableValue, locTokenOverride: String?
    let providedPropertyType: AbilityCastDelayProvidedPropertyType?

    enum CodingKeys: String, CodingKey {
        case value
        case canSetTokenOverride = "can_set_token_override"
        case cssClass = "css_class"
        case disableValue = "disable_value"
        case locTokenOverride = "loc_token_override"
        case providedPropertyType = "provided_property_type"
    }
}

enum AbilityCastDelayCSSClass: String, Codable {
    case cast = "cast"
    case chargeCooldown = "charge_cooldown"
    case duration = "duration"
}

enum AbilityCastDelayProvidedPropertyType: String, Codable {
    case modifierValueWeaponPower = "MODIFIER_VALUE_WEAPON_POWER"
}

// MARK: - AbilityCastRange
struct AbilityCastRange: Codable {
    let value: String?
    let canSetTokenOverride: Bool?
    let cssClass: AbilityCastRangeCSSClass?
    let displayUnits: DisplayUnits?
    let locTokenOverride, providedPropertyType: String?

    enum CodingKeys: String, CodingKey {
        case value
        case canSetTokenOverride = "can_set_token_override"
        case cssClass = "css_class"
        case displayUnits = "display_units"
        case locTokenOverride = "loc_token_override"
        case providedPropertyType = "provided_property_type"
    }
}

enum AbilityCastRangeCSSClass: String, Codable {
    case moveSpeed = "move_speed"
    case range = "range"
}

enum DisplayUnits: String, Codable {
    case eDisplayUnitMeters = "EDisplayUnit_Meters"
    case eDisplayUnitMetersPerSecond = "EDisplayUnit_MetersPerSecond"
    case eDisplayUnitNormal = "EDisplayUnit_Normal"
}

// MARK: - AbilityCooldown
struct AbilityCooldown: Codable {
    let value: AbilityCooldownValue?
    let canSetTokenOverride: Bool?
    let cssClass: AbilityCooldownCSSClass?
    let disableValue: String?

    enum CodingKeys: String, CodingKey {
        case value
        case canSetTokenOverride = "can_set_token_override"
        case cssClass = "css_class"
        case disableValue = "disable_value"
    }
}

enum AbilityCooldownCSSClass: String, Codable {
    case bulletArmorDown = "bullet_armor_down"
    case bulletArmorUp = "bullet_armor_up"
    case bulletDamage = "bullet_damage"
    case cast = "cast"
    case cooldown = "cooldown"
    case distance = "distance"
    case duration = "duration"
    case eTechPower = "ETechPower"
    case empty = ""
    case fireRate = "fireRate"
    case healing = "healing"
    case health = "health"
    case meleeDamage = "melee_damage"
    case moveSpeed = "move_speed"
    case movementSpeed = "movement_speed"
    case slow = "slow"
    case techArmorDown = "tech_armor_down"
    case techArmorUp = "tech_armor_up"
    case techDamage = "tech_damage"
    case time = "time"
}

enum AbilityCooldownValue: Codable {
    case double(Double)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Double.self) {
            self = .double(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(AbilityCooldownValue.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for AbilityCooldownValue"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .double(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - AbilityLifestealPercentHero
struct AbilityLifestealPercentHero: Codable {
    let value, providedPropertyType: String?
    let cssClass: AbilityCooldownCSSClass?
    let locTokenOverride: String?
    let displayUnits: DisplayUnits?

    enum CodingKeys: String, CodingKey {
        case value
        case providedPropertyType = "provided_property_type"
        case cssClass = "css_class"
        case locTokenOverride = "loc_token_override"
        case displayUnits = "display_units"
    }
}

// MARK: - AbilityPostCastDuration
struct AbilityPostCastDuration: Codable {
    let value, disableValue: String?

    enum CodingKeys: String, CodingKey {
        case value
        case disableValue = "disable_value"
    }
}

// MARK: - AbilityUnitTargetLimit
struct AbilityUnitTargetLimit: Codable {
    let value: String?
    let canSetTokenOverride: Bool?

    enum CodingKeys: String, CodingKey {
        case value
        case canSetTokenOverride = "can_set_token_override"
    }
}

// MARK: - ActivateTime
struct ActivateTime: Codable {
    let value: String?
}

// MARK: - ActiveBonusFireRate
struct ActiveBonusFireRate: Codable {
    let value: String?
    let cssClass: AbilityCooldownCSSClass?

    enum CodingKeys: String, CodingKey {
        case value
        case cssClass = "css_class"
    }
}

// MARK: - AirControlPercent
struct AirControlPercent: Codable {
    let value, providedPropertyType: String?

    enum CodingKeys: String, CodingKey {
        case value
        case providedPropertyType = "provided_property_type"
    }
}

// MARK: - BaseAttackDamagePercent
struct BaseAttackDamagePercent: Codable {
    let value: String?
    let providedPropertyType: BaseAttackDamagePercentProvidedPropertyType?
    let cssClass: AbilityCooldownCSSClass?
    let disableValue: String?
    let displayUnits: DisplayUnits?
    let locTokenOverride: String?
    let canSetTokenOverride: Bool?

    enum CodingKeys: String, CodingKey {
        case value
        case providedPropertyType = "provided_property_type"
        case cssClass = "css_class"
        case disableValue = "disable_value"
        case displayUnits = "display_units"
        case locTokenOverride = "loc_token_override"
        case canSetTokenOverride = "can_set_token_override"
    }
}

enum BaseAttackDamagePercentProvidedPropertyType: String, Codable {
    case modifierValueBaseBulletDamagePercent = "MODIFIER_VALUE_BASE_BULLET_DAMAGE_PERCENT"
    case modifierValueBaseattackDamagePercent = "MODIFIER_VALUE_BASEATTACK_DAMAGE_PERCENT"
    case modifierValueBulletShieldHealthMax = "MODIFIER_VALUE_BULLET_SHIELD_HEALTH_MAX"
    case modifierValueStatusResistance = "MODIFIER_VALUE_STATUS_RESISTANCE"
    case modifierValueTechArmor = "MODIFIER_VALUE_TECH_ARMOR"
    case modifierValueTechArmorDamageResist = "MODIFIER_VALUE_TECH_ARMOR_DAMAGE_RESIST"
    case modifierValueTechArmorDamageResistReduction = "MODIFIER_VALUE_TECH_ARMOR_DAMAGE_RESIST_REDUCTION"
    case modifierValueTechDamagePercent = "MODIFIER_VALUE_TECH_DAMAGE_PERCENT"
    case modifierValueTechPower = "MODIFIER_VALUE_TECH_POWER"
    case modifierValueTechRadiusPercent = "MODIFIER_VALUE_TECH_RADIUS_PERCENT"
    case modifierValueTechRangePercent = "MODIFIER_VALUE_TECH_RANGE_PERCENT"
    case modifierValueTechShieldHealthMax = "MODIFIER_VALUE_TECH_SHIELD_HEALTH_MAX"
}

// MARK: - InteruptCooldown
struct InteruptCooldown: Codable {
    let value: InteruptCooldownValue?
    let cssClass: AbilityCooldownCSSClass?

    enum CodingKeys: String, CodingKey {
        case value
        case cssClass = "css_class"
    }
}

enum InteruptCooldownValue: Codable {
    case integer(Int)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(InteruptCooldownValue.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for InteruptCooldownValue"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .integer(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - MaxStacks
struct MaxStacks: Codable {
    let value: InteruptCooldownValue?
}

// MARK: - SpellAmplificationMultiplier
struct SpellAmplificationMultiplier: Codable {
    let value: String?
    let displayUnits: DisplayUnits?

    enum CodingKeys: String, CodingKey {
        case value
        case displayUnits = "display_units"
    }
}

enum TypeEnum: String, Codable {
    case upgrade = "upgrade"
}

// MARK: - WeaponInfo
struct WeaponInfo: Codable {
    let bulletSpeedCurve: BulletSpeedCurve?

    enum CodingKeys: String, CodingKey {
        case bulletSpeedCurve = "bullet_speed_curve"
    }
}

// MARK: - BulletSpeedCurve
struct BulletSpeedCurve: Codable {
    let spline: [Spline]?
    let domainMaxs, domainMins: [Int]?

    enum CodingKeys: String, CodingKey {
        case spline
        case domainMaxs = "domain_maxs"
        case domainMins = "domain_mins"
    }
}

// MARK: - Spline
struct Spline: Codable {
    let slopeIncoming, slopeOutgoing, x, y: Int?

    enum CodingKeys: String, CodingKey {
        case slopeIncoming = "slope_incoming"
        case slopeOutgoing = "slope_outgoing"
        case x, y
    }
}

typealias UpgradeItem = [UpgradeItemElement]
