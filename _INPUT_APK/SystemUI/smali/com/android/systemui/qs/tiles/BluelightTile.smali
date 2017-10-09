.class public Lcom/android/systemui/qs/tiles/BluelightTile;
.super Lcom/android/systemui/qs/QSTile;
.source "BluelightTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final CELLULAR_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mListening:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "ru.machinex.andycar.bluefilter"

    const-string v3, "ru.machinex.andycar.bluefilter.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/BluelightTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 38
    return-void
.end method


# virtual methods
.method public handleClick()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluelightTile;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluelightTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    sget-object v1, Lcom/android/systemui/qs/tiles/BluelightTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 50
    :cond_0
    return-void
.end method

.method public handleLongClick()V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluelightTile;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluelightTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    sget-object v1, Lcom/android/systemui/qs/tiles/BluelightTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    .line 57
    :cond_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluelightTile;->mContext:Landroid/content/Context;

    const v1, 0x7f080232

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluelightTile;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const v0, 0x7f0204b5

    iput v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const v0, 0x7f0204b5

    iput v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->iconId:I

    goto :goto_0
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BluelightTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public hasIccCard()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 77
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 78
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluelightTile;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 80
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v1

    .line 82
    .local v1, "prfDataPhoneId":I
    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 83
    .local v2, "simState":I
    if-eq v2, v4, :cond_0

    if-eqz v2, :cond_0

    move v0, v4

    .line 85
    .local v0, "active":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    .end local v0    # "active":Z
    .end local v1    # "prfDataPhoneId":I
    .end local v2    # "simState":I
    :goto_1
    return v4

    .restart local v1    # "prfDataPhoneId":I
    .restart local v2    # "simState":I
    :cond_0
    move v0, v5

    .line 83
    goto :goto_0

    .restart local v0    # "active":Z
    :cond_1
    move v4, v5

    .line 85
    goto :goto_1

    .line 87
    .end local v0    # "active":Z
    .end local v1    # "prfDataPhoneId":I
    .end local v2    # "simState":I
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BluelightTile;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 89
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    goto :goto_1
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluelightTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BluelightTile;->mListening:Z

    if-ne v0, p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BluelightTile;->mListening:Z

    goto :goto_0
.end method

.method public supportsDualTargets()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
