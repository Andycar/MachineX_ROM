.class public Lcom/android/server/TactileAssistService;
.super Landroid/os/ITactileAssistService$Stub;
.source "TactileAssistService.java"


# static fields
.field private static final ERM:I = 0x0

.field private static final LRA:I = 0x2

.field private static final PZO:I = 0x4

.field private static final SERM:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TactileAssistService"

.field private static mContentResolver:Landroid/content/ContentResolver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTactileAssistSettings:Lcom/android/server/TactileAssistSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 55
    invoke-direct {p0}, Landroid/os/ITactileAssistService$Stub;-><init>()V

    .line 56
    const-string v4, "TactileAssistService"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 57
    const-string v4, "TactileAssistService"

    const-string v5, "TactileAssist Service started"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "def_tactileassist_level"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 61
    .local v3, "tactileassistLevel":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "def_tactileassist_enable"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 64
    .local v1, "tactileassistEnable":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "def_tactileassist_internal_enable"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 68
    .local v2, "tactileassistInternalEnable":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sput-object v4, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    .line 70
    :try_start_38
    const-string v4, "com.android.settings"

    const/4 v5, 0x2

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/TactileAssistService;->mContext:Landroid/content/Context;
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_41} :catch_50

    .line 76
    :goto_41
    iget-object v4, p0, Lcom/android/server/TactileAssistService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/TactileAssistSettings;->getInstance(Landroid/content/Context;)Lcom/android/server/TactileAssistSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/TactileAssistService;->mTactileAssistSettings:Lcom/android/server/TactileAssistSettings;

    .line 77
    iget-object v4, p0, Lcom/android/server/TactileAssistService;->mTactileAssistSettings:Lcom/android/server/TactileAssistSettings;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/android/server/TactileAssistSettings;->storeTactileAssistSettings(IIIZ)V

    .line 81
    return-void

    .line 72
    :catch_50
    move-exception v0

    .line 73
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "TactileAssistService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TactileAssist Service NameNotFound Error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method


# virtual methods
.method public getActuators()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/TactileAssistService;->mTactileAssistSettings:Lcom/android/server/TactileAssistSettings;

    invoke-virtual {v0}, Lcom/android/server/TactileAssistSettings;->getActuators()[I

    move-result-object v0

    return-object v0
.end method

.method public setDensity(II)Z
    .registers 8
    .param p1, "actuator"    # I
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 151
    .local v2, "token":J
    const/4 v0, 0x0

    .line 152
    .local v0, "result":Z
    const/16 v1, 0xf

    if-gt p2, v1, :cond_b

    if-gez p2, :cond_d

    :cond_b
    const/4 v1, 0x0

    .line 176
    :goto_c
    return v1

    .line 153
    :cond_d
    packed-switch p1, :pswitch_data_42

    .line 171
    :pswitch_10
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_density_lra"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 175
    :goto_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v1, v0

    .line 176
    goto :goto_c

    .line 155
    :pswitch_1d
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_density_erm"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 157
    goto :goto_18

    .line 159
    :pswitch_26
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_density_serm"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 161
    goto :goto_18

    .line 163
    :pswitch_2f
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_density_lra"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 165
    goto :goto_18

    .line 167
    :pswitch_38
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_density_pzo"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 169
    goto :goto_18

    .line 153
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_10
        :pswitch_2f
        :pswitch_10
        :pswitch_38
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_26
    .end packed-switch
.end method

.method public setEnable(Z)Z
    .registers 8
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 91
    .local v2, "token":J
    sget-object v4, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "def_tactileassist_enable"

    if-eqz p1, :cond_2b

    const/4 v1, 0x1

    :goto_b
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 93
    .local v0, "result":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    const-string v1, "TactileAssistService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Accessibility test : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return v0

    .line 91
    .end local v0    # "result":Z
    :cond_2b
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public setInternalEnable(Z)Z
    .registers 8
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 101
    .local v2, "token":J
    sget-object v4, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "def_tactileassist_internal_enable"

    if-eqz p1, :cond_13

    const/4 v1, 0x1

    :goto_b
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 103
    .local v0, "result":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    return v0

    .line 101
    .end local v0    # "result":Z
    :cond_13
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public setLevel(I)Z
    .registers 7
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 110
    .local v2, "token":J
    const/4 v1, 0x3

    if-gt p1, v1, :cond_a

    const/4 v1, 0x1

    if-ge p1, v1, :cond_c

    :cond_a
    const/4 v0, 0x0

    .line 114
    :goto_b
    return v0

    .line 111
    :cond_c
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_level"

    invoke-static {v1, v4, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 113
    .local v0, "result":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b
.end method

.method public setSharpness(II)Z
    .registers 8
    .param p1, "actuator"    # I
    .param p2, "sharpness"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 182
    .local v2, "token":J
    const/4 v0, 0x0

    .line 183
    .local v0, "result":Z
    const/16 v1, 0xf

    if-gt p2, v1, :cond_b

    if-gez p2, :cond_d

    :cond_b
    const/4 v1, 0x0

    .line 203
    :goto_c
    return v1

    .line 184
    :cond_d
    packed-switch p1, :pswitch_data_3a

    .line 202
    :goto_10
    :pswitch_10
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v1, v0

    .line 203
    goto :goto_c

    .line 186
    :pswitch_15
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_sharpness_erm"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 188
    goto :goto_10

    .line 190
    :pswitch_1e
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_sharpness_serm"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 192
    goto :goto_10

    .line 194
    :pswitch_27
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_sharpness_lra"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 196
    goto :goto_10

    .line 198
    :pswitch_30
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_sharpness_pzo"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_10

    .line 184
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_10
        :pswitch_27
        :pswitch_10
        :pswitch_30
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_1e
    .end packed-switch
.end method

.method public setStrength(II)Z
    .registers 8
    .param p1, "actuator"    # I
    .param p2, "strength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 120
    .local v2, "token":J
    const/4 v0, 0x0

    .line 121
    .local v0, "result":Z
    const/16 v1, 0xf

    if-gt p2, v1, :cond_b

    if-gez p2, :cond_d

    :cond_b
    const/4 v1, 0x0

    .line 145
    :goto_c
    return v1

    .line 122
    :cond_d
    packed-switch p1, :pswitch_data_42

    .line 140
    :pswitch_10
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_strength_pzo"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 144
    :goto_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v1, v0

    .line 145
    goto :goto_c

    .line 124
    :pswitch_1d
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_strength_erm"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 126
    goto :goto_18

    .line 128
    :pswitch_26
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_strength_serm"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 130
    goto :goto_18

    .line 132
    :pswitch_2f
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_strength_lra"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 134
    goto :goto_18

    .line 136
    :pswitch_38
    sget-object v1, Lcom/android/server/TactileAssistService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "def_tactileassist_strength_pzo"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 138
    goto :goto_18

    .line 122
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_10
        :pswitch_2f
        :pswitch_10
        :pswitch_38
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_26
    .end packed-switch
.end method

.method public storeAppList()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 208
    iget-object v0, p0, Lcom/android/server/TactileAssistService;->mTactileAssistSettings:Lcom/android/server/TactileAssistSettings;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/android/server/TactileAssistSettings;->storeTactileAssistSettings(IIIZ)V

    .line 209
    return v2
.end method
