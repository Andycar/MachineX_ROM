.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final POWER_AUDIO:Ljava/lang/String; = "dsp.audio"

.field public static final POWER_BATTERY_CAPACITY:Ljava/lang/String; = "battery.capacity"

.field public static final POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"

.field public static final POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"

.field public static final POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"

.field public static final POWER_CPU_ACTIVE:Ljava/lang/String; = "cpu.active"

.field public static final POWER_CPU_AWAKE:Ljava/lang/String; = "cpu.awake"

.field public static final POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final POWER_CPU_SPEEDS:Ljava/lang/String; = "cpu.speeds"

.field public static final POWER_FLASHLIGHT:Ljava/lang/String; = "camera.flashlight"

.field public static final POWER_GPS_ON:Ljava/lang/String; = "gps.on"

.field public static final POWER_NONE:Ljava/lang/String; = "none"

.field public static final POWER_RADIO_ACTIVE:Ljava/lang/String; = "radio.active"

.field public static final POWER_RADIO_ON:Ljava/lang/String; = "radio.on"

.field public static final POWER_RADIO_SCANNING:Ljava/lang/String; = "radio.scanning"

.field public static final POWER_SCREEN_FULL:Ljava/lang/String; = "screen.full"

.field public static final POWER_SCREEN_ON:Ljava/lang/String; = "screen.on"

.field public static final POWER_VIDEO:Ljava/lang/String; = "dsp.video"

.field public static final POWER_WAKEUP:Ljava/lang/String; = "wakeup.power"

.field public static final POWER_WIFI_ACTIVE:Ljava/lang/String; = "wifi.active"

.field public static final POWER_WIFI_BATCHED_SCAN:Ljava/lang/String; = "wifi.batchedscan"

.field public static final POWER_WIFI_ON:Ljava/lang/String; = "wifi.on"

.field public static final POWER_WIFI_SCAN:Ljava/lang/String; = "wifi.scan"

.field private static final TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field static final sPowerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 169
    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Landroid/content/Context;)V

    .line 171
    :cond_e
    return-void
.end method

.method private readPowerValuesFromXml(Landroid/content/Context;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const v4, 0x1110012

    .line 175
    .local v4, "id":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 176
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v7, 0x0

    .line 177
    .local v7, "parsingArray":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    .line 181
    .local v1, "arrayName":Ljava/lang/String;
    :try_start_12
    const-string v9, "device"

    invoke-static {v6, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 184
    :cond_17
    :goto_17
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 186
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "element":Ljava/lang/String;
    if-nez v3, :cond_35

    .line 216
    if-eqz v7, :cond_31

    .line 217
    sget-object v9, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Double;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_31} :catch_a7
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_31} :catch_be
    .catchall {:try_start_12 .. :try_end_31} :catchall_ae

    .line 224
    :cond_31
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 226
    return-void

    .line 189
    :cond_35
    if-eqz v7, :cond_50

    :try_start_37
    const-string/jumbo v9, "value"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_50

    .line 191
    sget-object v9, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Double;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/4 v7, 0x0

    .line 194
    :cond_50
    const-string v9, "array"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 195
    const/4 v7, 0x1

    .line 196
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    const/4 v9, 0x0

    const-string v12, "name"

    invoke-interface {v6, v9, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    .line 198
    :cond_64
    const-string v9, "item"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_75

    const-string/jumbo v9, "value"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 199
    :cond_75
    const/4 v5, 0x0

    .line 200
    .local v5, "name":Ljava/lang/String;
    if-nez v7, :cond_7f

    const/4 v9, 0x0

    const-string v12, "name"

    invoke-interface {v6, v9, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 201
    :cond_7f
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v12, 0x4

    if-ne v9, v12, :cond_17

    .line 202
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;
    :try_end_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_89} :catch_a7
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_89} :catch_be
    .catchall {:try_start_37 .. :try_end_89} :catchall_ae

    move-result-object v8

    .line 203
    .local v8, "power":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 205
    .local v10, "value":D
    :try_start_8c
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_8c .. :try_end_93} :catch_c5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8c .. :try_end_93} :catch_a7
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_93} :catch_be
    .catchall {:try_start_8c .. :try_end_93} :catchall_ae

    move-result-wide v10

    .line 208
    :goto_94
    :try_start_94
    const-string v9, "item"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b3

    .line 209
    sget-object v9, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v9, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_94 .. :try_end_a5} :catch_a7
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a5} :catch_be
    .catchall {:try_start_94 .. :try_end_a5} :catchall_ae

    goto/16 :goto_17

    .line 219
    .end local v3    # "element":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "power":Ljava/lang/String;
    .end local v10    # "value":D
    :catch_a7
    move-exception v2

    .line 220
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_a8
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_ae
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_ae

    .line 224
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_ae
    move-exception v9

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v9

    .line 210
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "power":Ljava/lang/String;
    .restart local v10    # "value":D
    :cond_b3
    if-eqz v7, :cond_17

    .line 211
    :try_start_b5
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b5 .. :try_end_bc} :catch_a7
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_bc} :catch_be
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_ae

    goto/16 :goto_17

    .line 221
    .end local v3    # "element":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "power":Ljava/lang/String;
    .end local v10    # "value":D
    :catch_be
    move-exception v2

    .line 222
    .local v2, "e":Ljava/io/IOException;
    :try_start_bf
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_c5
    .catchall {:try_start_bf .. :try_end_c5} :catchall_ae

    .line 206
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "power":Ljava/lang/String;
    .restart local v10    # "value":D
    :catch_c5
    move-exception v9

    goto :goto_94
.end method


# virtual methods
.method public getAveragePower(Ljava/lang/String;)D
    .registers 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 234
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 235
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, "data":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_1e

    .line 237
    check-cast v0, [Ljava/lang/Double;

    .end local v0    # "data":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 242
    :goto_1d
    return-wide v2

    .line 239
    .restart local v0    # "data":Ljava/lang/Object;
    :cond_1e
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_1d

    .line 242
    .end local v0    # "data":Ljava/lang/Object;
    :cond_2b
    const-wide/16 v2, 0x0

    goto :goto_1d
.end method

.method public getAveragePower(Ljava/lang/String;I)D
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 255
    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 256
    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 257
    .local v0, "data":Ljava/lang/Object;
    instance-of v4, v0, [Ljava/lang/Double;

    if-eqz v4, :cond_31

    .line 258
    check-cast v0, [Ljava/lang/Double;

    .end local v0    # "data":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, [Ljava/lang/Double;

    .line 259
    .local v1, "values":[Ljava/lang/Double;
    array-length v4, v1

    if-le v4, p2, :cond_25

    if-ltz p2, :cond_25

    .line 260
    aget-object v2, v1, p2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 270
    .end local v1    # "values":[Ljava/lang/Double;
    :cond_24
    :goto_24
    return-wide v2

    .line 261
    .restart local v1    # "values":[Ljava/lang/Double;
    :cond_25
    if-ltz p2, :cond_24

    .line 264
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_24

    .line 267
    .end local v1    # "values":[Ljava/lang/Double;
    .restart local v0    # "data":Ljava/lang/Object;
    :cond_31
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_24
.end method

.method public getBatteryCapacity()D
    .registers 3

    .prologue
    .line 280
    const-string v0, "battery.capacity"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumSpeedSteps()I
    .registers 4

    .prologue
    .line 288
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    const-string v2, "cpu.speeds"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 289
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_14

    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_14

    .line 290
    check-cast v0, [Ljava/lang/Double;

    .end local v0    # "value":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Double;

    array-length v1, v0

    .line 292
    :goto_13
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method
