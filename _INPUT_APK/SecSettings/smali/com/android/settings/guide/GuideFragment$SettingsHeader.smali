.class final enum Lcom/android/settings/guide/GuideFragment$SettingsHeader;
.super Ljava/lang/Enum;
.source "GuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/guide/GuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SettingsHeader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/guide/GuideFragment$SettingsHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum BLUETOOTH:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum NONE:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum WIFI:Lcom/android/settings/guide/GuideFragment$SettingsHeader;


# instance fields
.field private final mGuideMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

.field private final mHeaderId:J


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 106
    new-instance v1, Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    const-string v2, "NONE"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/android/settings/guide/GuideFragment$GuideModes;)V

    sput-object v1, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    .line 108
    new-instance v5, Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    const-string v6, "WIFI"

    const-wide/32 v8, 0x7f100657

    sget-object v10, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/android/settings/guide/GuideFragment$GuideModes;

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/android/settings/guide/GuideFragment$GuideModes;)V

    sput-object v5, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->WIFI:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    .line 110
    new-instance v9, Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    const-string v10, "BLUETOOTH"

    const-wide/32 v12, 0x7f100659

    sget-object v14, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/settings/guide/GuideFragment$GuideModes;

    invoke-direct/range {v9 .. v14}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/android/settings/guide/GuideFragment$GuideModes;)V

    sput-object v9, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    sget-object v1, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->WIFI:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    aput-object v1, v0, v11

    sput-object v0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->$VALUES:[Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJLcom/android/settings/guide/GuideFragment$GuideModes;)V
    .locals 1
    .param p3, "headerId"    # J
    .param p5, "mode"    # Lcom/android/settings/guide/GuideFragment$GuideModes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/settings/guide/GuideFragment$GuideModes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput-wide p3, p0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->mHeaderId:J

    .line 125
    iput-object p5, p0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->mGuideMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 126
    return-void
.end method

.method static fromId(J)Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    .locals 8
    .param p0, "id"    # J

    .prologue
    .line 137
    sget-object v4, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    .line 139
    .local v4, "retval":Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    invoke-static {}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->values()[Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 140
    .local v2, "item":Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    iget-wide v6, v2, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->mHeaderId:J

    cmp-long v5, v6, p0

    if-nez v5, :cond_1

    .line 141
    move-object v4, v2

    .line 146
    .end local v2    # "item":Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    :cond_0
    return-object v4

    .line 139
    .restart local v2    # "item":Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    const-class v0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->$VALUES:[Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-virtual {v0}, [Lcom/android/settings/guide/GuideFragment$SettingsHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    return-object v0
.end method
