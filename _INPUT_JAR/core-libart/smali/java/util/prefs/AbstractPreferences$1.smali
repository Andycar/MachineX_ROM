.class final Ljava/util/prefs/AbstractPreferences$1;
.super Ljava/lang/Thread;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 65
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v1

    .line 66
    .local v1, "uroot":Ljava/util/prefs/Preferences;
    invoke-static {}, Ljava/util/prefs/Preferences;->systemRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    .line 68
    .local v0, "sroot":Ljava/util/prefs/Preferences;
    :try_start_8
    invoke-virtual {v1}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_b
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_8 .. :try_end_b} :catch_f

    .line 73
    :goto_b
    :try_start_b
    invoke-virtual {v0}, Ljava/util/prefs/Preferences;->flush()V
    :try_end_e
    .catch Ljava/util/prefs/BackingStoreException; {:try_start_b .. :try_end_e} :catch_11

    .line 77
    :goto_e
    return-void

    .line 69
    :catch_f
    move-exception v2

    goto :goto_b

    .line 74
    :catch_11
    move-exception v2

    goto :goto_e
.end method
