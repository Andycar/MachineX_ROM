.class Lcom/android/keyguard/sec/JPWeatherImageArchive;
.super Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
.source "JPWeatherImageArchive.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;-><init>()V

    return-void
.end method

.method private checkDayOrNight()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getImage(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 10
    sparse-switch p1, :sswitch_data_0

    .line 240
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_01:I

    :goto_0
    return v0

    .line 20
    :sswitch_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_01:I

    goto :goto_0

    .line 23
    :cond_0
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_18:I

    goto :goto_0

    .line 39
    :sswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_02:I

    goto :goto_0

    .line 42
    :cond_1
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_19:I

    goto :goto_0

    .line 48
    :sswitch_2
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_03:I

    goto :goto_0

    .line 62
    :sswitch_3
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_09:I

    goto :goto_0

    .line 84
    :sswitch_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_06:I

    goto :goto_0

    .line 87
    :cond_2
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_05:I

    goto :goto_0

    .line 108
    :sswitch_5
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_05:I

    goto :goto_0

    .line 118
    :sswitch_6
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_06:I

    goto :goto_0

    .line 121
    :cond_3
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_05:I

    goto :goto_0

    .line 128
    :sswitch_7
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_05:I

    goto :goto_0

    .line 141
    :sswitch_8
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_06:I

    goto :goto_0

    .line 144
    :cond_4
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_05:I

    goto :goto_0

    .line 150
    :sswitch_9
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_06:I

    goto :goto_0

    .line 153
    :cond_5
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_05:I

    goto :goto_0

    .line 181
    :sswitch_a
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_10:I

    goto :goto_0

    .line 188
    :sswitch_b
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 189
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_11:I

    goto :goto_0

    .line 191
    :cond_6
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_12:I

    goto :goto_0

    .line 203
    :sswitch_c
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_12:I

    goto :goto_0

    .line 206
    :cond_7
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_12:I

    goto :goto_0

    .line 226
    :sswitch_d
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_13:I

    goto :goto_0

    .line 229
    :sswitch_e
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_14:I

    goto :goto_0

    .line 233
    :sswitch_f
    invoke-direct {p0}, Lcom/android/keyguard/sec/JPWeatherImageArchive;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 234
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_15:I

    goto :goto_0

    .line 236
    :cond_8
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_18:I

    goto/16 :goto_0

    .line 10
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_b
        0x69 -> :sswitch_b
        0x6a -> :sswitch_4
        0x6b -> :sswitch_4
        0x6c -> :sswitch_4
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x70 -> :sswitch_4
        0x71 -> :sswitch_4
        0x72 -> :sswitch_4
        0x73 -> :sswitch_c
        0x74 -> :sswitch_c
        0x75 -> :sswitch_c
        0x76 -> :sswitch_4
        0x77 -> :sswitch_4
        0x78 -> :sswitch_4
        0x79 -> :sswitch_4
        0x7a -> :sswitch_4
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x80 -> :sswitch_4
        0x81 -> :sswitch_4
        0x82 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_1
        0x8c -> :sswitch_4
        0xa0 -> :sswitch_b
        0xaa -> :sswitch_b
        0xb5 -> :sswitch_c
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_1
        0xca -> :sswitch_5
        0xcb -> :sswitch_5
        0xcc -> :sswitch_a
        0xcd -> :sswitch_a
        0xce -> :sswitch_5
        0xcf -> :sswitch_5
        0xd0 -> :sswitch_5
        0xd1 -> :sswitch_2
        0xd2 -> :sswitch_1
        0xd3 -> :sswitch_1
        0xd4 -> :sswitch_5
        0xd5 -> :sswitch_5
        0xd6 -> :sswitch_5
        0xd7 -> :sswitch_a
        0xd8 -> :sswitch_a
        0xd9 -> :sswitch_a
        0xda -> :sswitch_5
        0xdb -> :sswitch_5
        0xdc -> :sswitch_5
        0xdd -> :sswitch_5
        0xde -> :sswitch_5
        0xdf -> :sswitch_1
        0xe0 -> :sswitch_5
        0xe1 -> :sswitch_5
        0xe2 -> :sswitch_5
        0xe3 -> :sswitch_5
        0xe4 -> :sswitch_a
        0xe5 -> :sswitch_a
        0xe6 -> :sswitch_a
        0xe7 -> :sswitch_2
        0xf0 -> :sswitch_5
        0xfa -> :sswitch_a
        0x104 -> :sswitch_a
        0x10e -> :sswitch_a
        0x119 -> :sswitch_a
        0x12c -> :sswitch_3
        0x12d -> :sswitch_6
        0x12e -> :sswitch_7
        0x12f -> :sswitch_d
        0x130 -> :sswitch_3
        0x132 -> :sswitch_3
        0x134 -> :sswitch_3
        0x135 -> :sswitch_d
        0x137 -> :sswitch_6
        0x139 -> :sswitch_7
        0x13a -> :sswitch_d
        0x13b -> :sswitch_d
        0x13c -> :sswitch_6
        0x13d -> :sswitch_7
        0x140 -> :sswitch_6
        0x141 -> :sswitch_7
        0x142 -> :sswitch_d
        0x143 -> :sswitch_6
        0x144 -> :sswitch_6
        0x145 -> :sswitch_6
        0x146 -> :sswitch_d
        0x147 -> :sswitch_d
        0x148 -> :sswitch_3
        0x149 -> :sswitch_3
        0x154 -> :sswitch_a
        0x15e -> :sswitch_3
        0x169 -> :sswitch_c
        0x173 -> :sswitch_a
        0x190 -> :sswitch_a
        0x191 -> :sswitch_c
        0x192 -> :sswitch_a
        0x193 -> :sswitch_d
        0x195 -> :sswitch_a
        0x196 -> :sswitch_a
        0x197 -> :sswitch_a
        0x199 -> :sswitch_d
        0x19b -> :sswitch_c
        0x19d -> :sswitch_a
        0x19e -> :sswitch_d
        0x1a4 -> :sswitch_c
        0x1a5 -> :sswitch_a
        0x1a6 -> :sswitch_d
        0x1a7 -> :sswitch_d
        0x1a8 -> :sswitch_d
        0x1a9 -> :sswitch_a
        0x1aa -> :sswitch_a
        0x1ab -> :sswitch_a
        0x1ae -> :sswitch_e
        0x1c2 -> :sswitch_a
        0x1f4 -> :sswitch_0
        0x226 -> :sswitch_f
        0x228 -> :sswitch_1
        0x229 -> :sswitch_8
        0x22e -> :sswitch_8
        0x232 -> :sswitch_1
        0x233 -> :sswitch_8
        0x238 -> :sswitch_8
        0x23c -> :sswitch_1
        0x23d -> :sswitch_8
        0x246 -> :sswitch_1
        0x247 -> :sswitch_8
        0x258 -> :sswitch_0
        0x352 -> :sswitch_3
        0x353 -> :sswitch_8
        0x355 -> :sswitch_3
        0x356 -> :sswitch_d
        0x357 -> :sswitch_8
        0x35d -> :sswitch_8
        0x35f -> :sswitch_3
        0x360 -> :sswitch_d
        0x361 -> :sswitch_8
        0x367 -> :sswitch_9
        0x369 -> :sswitch_3
        0x36a -> :sswitch_d
        0x371 -> :sswitch_9
        0x373 -> :sswitch_3
        0x374 -> :sswitch_d
    .end sparse-switch
.end method
