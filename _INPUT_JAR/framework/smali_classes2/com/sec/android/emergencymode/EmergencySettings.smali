.class public Lcom/sec/android/emergencymode/EmergencySettings;
.super Ljava/lang/Object;
.source "EmergencySettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmergencySettings"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 63
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 82
    :cond_5
    :goto_5
    return-object v8

    .line 66
    :cond_6
    const/4 v8, 0x0

    .line 67
    .local v8, "ret":Ljava/lang/String;
    const/4 v6, 0x0

    .line 69
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pref=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    if-eqz v6, :cond_45

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_45

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 74
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_45} :catch_4b
    .catchall {:try_start_8 .. :try_end_45} :catchall_6a

    .line 79
    :cond_45
    if-eqz v6, :cond_5

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 76
    .end local v3    # "selection":Ljava/lang/String;
    :catch_4b
    move-exception v7

    .line 77
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4c
    const-string v0, "EmergencySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_4c .. :try_end_64} :catchall_6a

    .line 79
    if-eqz v6, :cond_5

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 79
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_6a
    move-exception v0

    if-eqz v6, :cond_70

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_70
    throw v0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 112
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 116
    .end local p2    # "defaultValue":Z
    :goto_6
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_7
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_6
.end method

.method public static getDouble(Landroid/content/ContentResolver;Ljava/lang/String;D)D
    .registers 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 162
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "ret":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result-wide p2

    .line 167
    .end local p2    # "defaultValue":D
    :goto_8
    return-wide p2

    .line 165
    .restart local p2    # "defaultValue":D
    :catch_9
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static getEmergencyNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 186
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 220
    :cond_5
    :goto_5
    return-object v11

    .line 189
    :cond_6
    const/4 v11, 0x0

    .line 190
    .local v11, "ret":Ljava/lang/String;
    const/4 v7, 0x0

    .line 192
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_8
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 193
    .local v10, "mccmnc":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 194
    const-string v0, "gsm.operator.numeric2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 196
    :cond_1c
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, "mcc":Ljava/lang/String;
    const-string v0, "EmergencySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmergencyNumber requested Country : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyConstants;->URI_ECCLIST:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 201
    if-eqz v7, :cond_74

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_74

    .line 202
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 203
    invoke-interface {v7, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencySettings;->makeEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_73} :catch_99
    .catchall {:try_start_8 .. :try_end_73} :catchall_d7

    move-result-object v11

    .line 208
    :cond_74
    if-eqz v7, :cond_79

    .line 209
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_79
    if-nez v11, :cond_5

    .line 211
    const-string v0, "EmergencySettings"

    const-string v1, "getEmergencyNumber not found emergency number!"

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "countryCode":Ljava/lang/String;
    const-string v0, "China"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 214
    const-string v11, "119"

    goto/16 :goto_5

    .line 216
    :cond_95
    const-string v11, "911"

    goto/16 :goto_5

    .line 205
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "countryCode":Ljava/lang/String;
    .end local v9    # "mcc":Ljava/lang/String;
    .end local v10    # "mccmnc":Ljava/lang/String;
    :catch_99
    move-exception v8

    .line 206
    .local v8, "e":Ljava/lang/Exception;
    :try_start_9a
    const-string v0, "EmergencySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_9a .. :try_end_b2} :catchall_d7

    .line 208
    if-eqz v7, :cond_b7

    .line 209
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_b7
    if-nez v11, :cond_5

    .line 211
    const-string v0, "EmergencySettings"

    const-string v1, "getEmergencyNumber not found emergency number!"

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 213
    .restart local v6    # "countryCode":Ljava/lang/String;
    const-string v0, "China"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 214
    const-string v11, "119"

    goto/16 :goto_5

    .line 216
    :cond_d3
    const-string v11, "911"

    goto/16 :goto_5

    .line 208
    .end local v6    # "countryCode":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_d7
    move-exception v0

    if-eqz v7, :cond_dd

    .line 209
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_dd
    if-nez v11, :cond_f7

    .line 211
    const-string v1, "EmergencySettings"

    const-string v2, "getEmergencyNumber not found emergency number!"

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 213
    .restart local v6    # "countryCode":Ljava/lang/String;
    const-string v1, "China"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 214
    const-string v11, "119"

    .line 218
    .end local v6    # "countryCode":Ljava/lang/String;
    :cond_f7
    :goto_f7
    throw v0

    .line 216
    .restart local v6    # "countryCode":Ljava/lang/String;
    :cond_f8
    const-string v11, "911"

    goto :goto_f7
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "ret":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result p2

    .line 99
    .end local p2    # "defaultValue":I
    :goto_8
    return p2

    .line 97
    .restart local p2    # "defaultValue":I
    :catch_9
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "ret":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result-wide p2

    .line 149
    .end local p2    # "defaultValue":J
    :goto_8
    return-wide p2

    .line 147
    .restart local p2    # "defaultValue":J
    :catch_9
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 132
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_6
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_7
    move-object p2, v0

    goto :goto_6
.end method

.method private static isPossibleNormalCall()Z
    .registers 7

    .prologue
    .line 247
    const/4 v2, 0x0

    .line 249
    .local v2, "return_val":Z
    :try_start_1
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 250
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2e

    .line 251
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I

    move-result v3

    .line 252
    .local v3, "serviceState":I
    const-string v4, "EmergencySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serviceState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2b} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_3a
    .catchall {:try_start_1 .. :try_end_2b} :catchall_38

    .line 253
    if-nez v3, :cond_2e

    .line 254
    const/4 v2, 0x1

    .line 262
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "serviceState":I
    :cond_2e
    :goto_2e
    return v2

    .line 257
    :catch_2f
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_30
    const-string v4, "EmergencySettings"

    const-string v5, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v4, v5}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_38
    move-exception v4

    goto :goto_2e

    .line 259
    :catch_3a
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_38

    goto :goto_2e
.end method

.method private static makeEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 225
    const-string v1, "EmergencySettings"

    const-string v2, "This is Emergency number"

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local p0    # "number":Ljava/lang/String;
    .local v0, "simState":Ljava/lang/String;
    :cond_e
    :goto_e
    return-object p0

    .line 229
    .end local v0    # "simState":Ljava/lang/String;
    .restart local p0    # "number":Ljava/lang/String;
    :cond_f
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .restart local v0    # "simState":Ljava/lang/String;
    if-eqz v0, :cond_2e

    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 231
    const-string v2, "EmergencySettings"

    const-string v3, "SIM Ready, not emergency number."

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencySettings;->isPossibleNormalCall()Z

    move-result v2

    if-nez v2, :cond_e

    move-object p0, v1

    .line 235
    goto :goto_e

    .line 238
    :cond_2e
    const-string v2, "EmergencySettings"

    const-string v3, "SIM not Ready, default emergency number."

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    .line 239
    goto :goto_e
.end method

.method public static put(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 50
    if-nez p0, :cond_3

    .line 60
    :goto_2
    return-void

    .line 53
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pref=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "selection":Ljava/lang/String;
    sget-object v3, Lcom/sec/android/emergencymode/EmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 56
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "pref"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v3, "value"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v3, Lcom/sec/android/emergencymode/EmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 60
    .local v0, "resultUri":Landroid/net/Uri;
    goto :goto_2
.end method
