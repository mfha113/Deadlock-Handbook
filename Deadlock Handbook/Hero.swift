//
//  Hero.swift
//  Deadlock Handbook
//
//  Michael Ha
//  CSC 680
//
//  I generated this with the help of quicktype.io using the JSON schema
//  from the API call. This stores a single hero and all the data from
//  the API call

import Foundation

// MARK: - Hero
struct Hero: Codable, Identifiable{
    let id: Int
    let className, name: String?
    let description: Description
    let recommendedUpgrades: [String]?
    let playerSelectable, botSelectable, disabled, inDevelopment: Bool?
    let needsTesting, assignedPlayersOnly, limitedTesting: Bool?
    let complexity, skin, readability: Int?
    let images: Images
    let items: Items
    let startingStats: [String: StartingStat]
    let itemSlotInfo: ItemSlotInfo
    let physics: Physics
    let colors: Colors
    let shopStatDisplay: ShopStatDisplay
    let statsDisplay: StatsDisplay
    let heroStatsUI: HeroStatsUI
    let levelInfo: [String: LevelInfo]
    let scalingStats: ScalingStats
    let purchaseBonuses: PurchaseBonuses
    let standardLevelUpUpgrades: StandardLevelUpUpgrades

    enum CodingKeys: String, CodingKey {
        case id
        case className = "class_name"
        case name, description
        case recommendedUpgrades = "recommended_upgrades"
        case playerSelectable = "player_selectable"
        case botSelectable = "bot_selectable"
        case disabled
        case inDevelopment = "in_development"
        case needsTesting = "needs_testing"
        case assignedPlayersOnly = "assigned_players_only"
        case limitedTesting = "limited_testing"
        case complexity, skin, readability, images, items
        case startingStats = "starting_stats"
        case itemSlotInfo = "item_slot_info"
        case physics, colors
        case shopStatDisplay = "shop_stat_display"
        case statsDisplay = "stats_display"
        case heroStatsUI = "hero_stats_ui"
        case levelInfo = "level_info"
        case scalingStats = "scaling_stats"
        case purchaseBonuses = "purchase_bonuses"
        case standardLevelUpUpgrades = "standard_level_up_upgrades"
    }
}

// MARK: - Colors
struct Colors: Codable {
    let glowEnemy, glowFriendly, glowTeam1, glowTeam2: [Int]?
    let ui: [Int]?

    enum CodingKeys: String, CodingKey {
        case glowEnemy = "glow_enemy"
        case glowFriendly = "glow_friendly"
        case glowTeam1 = "glow_team1"
        case glowTeam2 = "glow_team2"
        case ui
    }
}

// MARK: - Description
struct Description: Codable {
    let lore, role, playstyle: String?
}

// MARK: - HeroStatsUI
struct HeroStatsUI: Codable {
    let weaponStatDisplay: String?
    let displayStats: [DisplayStat]

    enum CodingKeys: String, CodingKey {
        case weaponStatDisplay = "weapon_stat_display"
        case displayStats = "display_stats"
    }
}

// MARK: - DisplayStat
struct DisplayStat: Codable {
    let category: Category
    let statType: String?

    enum CodingKeys: String, CodingKey {
        case category
        case statType = "stat_type"
    }
}

enum Category: String, Codable {
    case eCitadelStatSpirit = "ECitadelStat_Spirit"
    case eCitadelStatVitality = "ECitadelStat_Vitality"
    case eCitadelStatWeapon = "ECitadelStat_Weapon"
}

// MARK: - Images
struct Images: Codable {
    let iconHeroCard: String?
    let iconHeroCardWebp: String?
    let iconImageSmall: String?
    let iconImageSmallWebp: String?
    let minimapImage: String?
    let minimapImageWebp: String?
    let selectionImage: String?
    let selectionImageWebp: String?
    let topBarImage: String?
    let topBarImageWebp: String?

    enum CodingKeys: String, CodingKey {
        case iconHeroCard = "icon_hero_card"
        case iconHeroCardWebp = "icon_hero_card_webp"
        case iconImageSmall = "icon_image_small"
        case iconImageSmallWebp = "icon_image_small_webp"
        case minimapImage = "minimap_image"
        case minimapImageWebp = "minimap_image_webp"
        case selectionImage = "selection_image"
        case selectionImageWebp = "selection_image_webp"
        case topBarImage = "top_bar_image"
        case topBarImageWebp = "top_bar_image_webp"
    }
}

// MARK: - ItemSlotInfo
struct ItemSlotInfo: Codable {
    let spirit, vitality, weapon: ItemSlotInfoSpirit
}

// MARK: - ItemSlotInfoSpirit
struct ItemSlotInfoSpirit: Codable {
    let maxPurchasesForTier: [Int]?

    enum CodingKeys: String, CodingKey {
        case maxPurchasesForTier = "max_purchases_for_tier"
    }
}

// MARK: - Items
struct Items: Codable {
    let abilityClimbRope, abilityInnate1, abilityInnate2, abilityInnate3: String?
    let abilityJump, abilityMantle, abilitySlide, abilityZipLine: String?
    let abilityZipLineBoost, signature1, signature2, signature3: String?
    let signature4, weaponMelee, weaponPrimary: String?

    enum CodingKeys: String, CodingKey {
        case abilityClimbRope = "ability_climb_rope"
        case abilityInnate1 = "ability_innate1"
        case abilityInnate2 = "ability_innate2"
        case abilityInnate3 = "ability_innate3"
        case abilityJump = "ability_jump"
        case abilityMantle = "ability_mantle"
        case abilitySlide = "ability_slide"
        case abilityZipLine = "ability_zip_line"
        case abilityZipLineBoost = "ability_zip_line_boost"
        case signature1, signature2, signature3, signature4
        case weaponMelee = "weapon_melee"
        case weaponPrimary = "weapon_primary"
    }
}

// MARK: - LevelInfo
struct LevelInfo: Codable {
    let bonusCurrencies: [BonusCurrency]?
    let requiredGold: Int?
    let useStandardUpgrade: Bool?

    enum CodingKeys: String, CodingKey {
        case bonusCurrencies = "bonus_currencies"
        case requiredGold = "required_gold"
        case useStandardUpgrade = "use_standard_upgrade"
    }
}

enum BonusCurrency: String, Codable {
    case eAbilityPoints = "EAbilityPoints"
    case eAbilityUnlocks = "EAbilityUnlocks"
}

// MARK: - Physics
struct Physics: Codable {
    let collisionHeight, collisionRadius, footstepSoundTravelDistanceMeters, stealthSpeedMetersPerSecond: Int?
    let stepHeight: Int?
    let stepSoundTime: Double?

    enum CodingKeys: String, CodingKey {
        case collisionHeight = "collision_height"
        case collisionRadius = "collision_radius"
        case footstepSoundTravelDistanceMeters = "footstep_sound_travel_distance_meters"
        case stealthSpeedMetersPerSecond = "stealth_speed_meters_per_second"
        case stepHeight = "step_height"
        case stepSoundTime = "step_sound_time"
    }
}

// MARK: - PurchaseBonuses
struct PurchaseBonuses: Codable {
    let spirit, vitality, weapon: [SpiritElement]
}

// MARK: - SpiritElement
struct SpiritElement: Codable {
    let valueType: ValueType
    let tier: Int?
    let value: String?

    enum CodingKeys: String, CodingKey {
        case valueType = "value_type"
        case tier, value
    }
}

enum ValueType: String, Codable {
    case modifierValueBaseHealthPercent = "MODIFIER_VALUE_BASE_HEALTH_PERCENT"
    case modifierValueBaseattackDamagePercent = "MODIFIER_VALUE_BASEATTACK_DAMAGE_PERCENT"
    case modifierValueTechPower = "MODIFIER_VALUE_TECH_POWER"
}

// MARK: - ScalingStats
struct ScalingStats: Codable {
}

// MARK: - ShopStatDisplay
struct ShopStatDisplay: Codable {
    let spiritStatsDisplay: SpiritStatsDisplay
    let vitalityStatsDisplay: VitalityStatsDisplay
    let weaponStatsDisplay: WeaponStatsDisplay

    enum CodingKeys: String, CodingKey {
        case spiritStatsDisplay = "spirit_stats_display"
        case vitalityStatsDisplay = "vitality_stats_display"
        case weaponStatsDisplay = "weapon_stats_display"
    }
}

// MARK: - SpiritStatsDisplay
struct SpiritStatsDisplay: Codable {
    let displayStats: [String]?

    enum CodingKeys: String, CodingKey {
        case displayStats = "display_stats"
    }
}

// MARK: - VitalityStatsDisplay
struct VitalityStatsDisplay: Codable {
    let displayStats, otherDisplayStats: [String]?

    enum CodingKeys: String, CodingKey {
        case displayStats = "display_stats"
        case otherDisplayStats = "other_display_stats"
    }
}

// MARK: - WeaponStatsDisplay
struct WeaponStatsDisplay: Codable {
    let displayStats, otherDisplayStats, weaponAttributes: [String]?
    let weaponImage: String?
    let weaponImageWebp: String?

    enum CodingKeys: String, CodingKey {
        case displayStats = "display_stats"
        case otherDisplayStats = "other_display_stats"
        case weaponAttributes = "weapon_attributes"
        case weaponImage = "weapon_image"
        case weaponImageWebp = "weapon_image_webp"
    }
}

// MARK: - StandardLevelUpUpgrades
struct StandardLevelUpUpgrades: Codable {
    let modifierValueBaseBulletDamageFromLevel: Double?
    let modifierValueBaseHealthFromLevel: Int?
    let modifierValueBaseMeleeDamageFromLevel: Double?
    let modifierValueBoonCount, modifierValueBulletArmorDamageResist, modifierValueTechArmorDamageResist, modifierValueTechDamagePercent: Int?

    enum CodingKeys: String, CodingKey {
        case modifierValueBaseBulletDamageFromLevel = "MODIFIER_VALUE_BASE_BULLET_DAMAGE_FROM_LEVEL"
        case modifierValueBaseHealthFromLevel = "MODIFIER_VALUE_BASE_HEALTH_FROM_LEVEL"
        case modifierValueBaseMeleeDamageFromLevel = "MODIFIER_VALUE_BASE_MELEE_DAMAGE_FROM_LEVEL"
        case modifierValueBoonCount = "MODIFIER_VALUE_BOON_COUNT"
        case modifierValueBulletArmorDamageResist = "MODIFIER_VALUE_BULLET_ARMOR_DAMAGE_RESIST"
        case modifierValueTechArmorDamageResist = "MODIFIER_VALUE_TECH_ARMOR_DAMAGE_RESIST"
        case modifierValueTechDamagePercent = "MODIFIER_VALUE_TECH_DAMAGE_PERCENT"
    }
}

// MARK: - StartingStat
struct StartingStat: Codable {
    let value: Double?
    let displayStatName: String?

    enum CodingKeys: String, CodingKey {
        case value
        case displayStatName = "display_stat_name"
    }
}

// MARK: - StatsDisplay
struct StatsDisplay: Codable {
    let healthHeaderStats, healthStats, magicHeaderStats, magicStats: [String]?
    let weaponHeaderStats, weaponStats: [String]?

    enum CodingKeys: String, CodingKey {
        case healthHeaderStats = "health_header_stats"
        case healthStats = "health_stats"
        case magicHeaderStats = "magic_header_stats"
        case magicStats = "magic_stats"
        case weaponHeaderStats = "weapon_header_stats"
        case weaponStats = "weapon_stats"
    }
}
