.class Lcom/android/keyguard/sec/CmaWeatherImageArchive;
.super Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
.source "CmaWeatherImageArchive.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 10
    const-string v1, "CmaWeatherImageArchive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 79
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_02:I

    .line 82
    .local v0, "resource":I
    :goto_0
    return v0

    .line 13
    .end local v0    # "resource":I
    :pswitch_0
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_01:I

    .line 14
    .restart local v0    # "resource":I
    goto :goto_0

    .line 16
    .end local v0    # "resource":I
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_02:I

    .line 17
    .restart local v0    # "resource":I
    goto :goto_0

    .line 19
    .end local v0    # "resource":I
    :pswitch_2
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_03:I

    .line 20
    .restart local v0    # "resource":I
    goto :goto_0

    .line 22
    .end local v0    # "resource":I
    :pswitch_3
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_04:I

    .line 23
    .restart local v0    # "resource":I
    goto :goto_0

    .line 25
    .end local v0    # "resource":I
    :pswitch_4
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_05:I

    .line 26
    .restart local v0    # "resource":I
    goto :goto_0

    .line 28
    .end local v0    # "resource":I
    :pswitch_5
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_06:I

    .line 29
    .restart local v0    # "resource":I
    goto :goto_0

    .line 31
    .end local v0    # "resource":I
    :pswitch_6
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_07:I

    .line 32
    .restart local v0    # "resource":I
    goto :goto_0

    .line 34
    .end local v0    # "resource":I
    :pswitch_7
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_08:I

    .line 35
    .restart local v0    # "resource":I
    goto :goto_0

    .line 37
    .end local v0    # "resource":I
    :pswitch_8
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_09:I

    .line 38
    .restart local v0    # "resource":I
    goto :goto_0

    .line 40
    .end local v0    # "resource":I
    :pswitch_9
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_10:I

    .line 41
    .restart local v0    # "resource":I
    goto :goto_0

    .line 43
    .end local v0    # "resource":I
    :pswitch_a
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_11:I

    .line 44
    .restart local v0    # "resource":I
    goto :goto_0

    .line 46
    .end local v0    # "resource":I
    :pswitch_b
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_12:I

    .line 47
    .restart local v0    # "resource":I
    goto :goto_0

    .line 49
    .end local v0    # "resource":I
    :pswitch_c
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_13:I

    .line 50
    .restart local v0    # "resource":I
    goto :goto_0

    .line 52
    .end local v0    # "resource":I
    :pswitch_d
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_14:I

    .line 53
    .restart local v0    # "resource":I
    goto :goto_0

    .line 55
    .end local v0    # "resource":I
    :pswitch_e
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_15:I

    .line 56
    .restart local v0    # "resource":I
    goto :goto_0

    .line 58
    .end local v0    # "resource":I
    :pswitch_f
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_16:I

    .line 59
    .restart local v0    # "resource":I
    goto :goto_0

    .line 61
    .end local v0    # "resource":I
    :pswitch_10
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_17:I

    .line 62
    .restart local v0    # "resource":I
    goto :goto_0

    .line 64
    .end local v0    # "resource":I
    :pswitch_11
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_18:I

    .line 65
    .restart local v0    # "resource":I
    goto :goto_0

    .line 67
    .end local v0    # "resource":I
    :pswitch_12
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_19:I

    .line 68
    .restart local v0    # "resource":I
    goto :goto_0

    .line 70
    .end local v0    # "resource":I
    :pswitch_13
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_20:I

    .line 71
    .restart local v0    # "resource":I
    goto :goto_0

    .line 73
    .end local v0    # "resource":I
    :pswitch_14
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_21:I

    .line 74
    .restart local v0    # "resource":I
    goto :goto_0

    .line 76
    .end local v0    # "resource":I
    :pswitch_15
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_22:I

    .line 77
    .restart local v0    # "resource":I
    goto :goto_0

    .line 11
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
