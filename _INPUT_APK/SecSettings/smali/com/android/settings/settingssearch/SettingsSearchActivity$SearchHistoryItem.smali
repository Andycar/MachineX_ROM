.class Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;
.super Ljava/lang/Object;
.source "SettingsSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchHistoryItem"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field time:Ljava/lang/String;

.field timeMillis:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/settingssearch/SettingsSearchActivity$1;

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchHistoryItem;-><init>()V

    return-void
.end method
