.class public Lcom/samsung/wfd/WFDNative;
.super Ljava/lang/Object;
.source "WFDNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WFDNative$WfdActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WFDNative_JAVA"

.field public static listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

.field private static localIpAddress:Ljava/lang/String;

.field private static localMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    const-string/jumbo v0, "uibc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    const-string v0, "WFDNative_JAVA"

    const-string/jumbo v1, "try to load libwfdrtsp.so"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string/jumbo v0, "wfdrtsp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    const-string v0, "WFDNative_JAVA"

    const-string v1, "libwfdrtsp.so loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v0, "WFDNative_JAVA"

    const-string/jumbo v1, "try to load libwfdnative.so"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string/jumbo v0, "wfdnative"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    const-string v0, "WFDNative_JAVA"

    const-string v1, "libwfdnative.so loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "00:00:00:00:00:00"

    sput-object v0, Lcom/samsung/wfd/WFDNative;->localMacAddress:Ljava/lang/String;

    .line 130
    const-string v0, ""

    sput-object v0, Lcom/samsung/wfd/WFDNative;->localIpAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    return-void
.end method

.method public static native WFDGetSubtitleStatus()Z
.end method

.method public static native WFDGetSuspendStatus()Z
.end method

.method public static native WFDPostSubtitle(Ljava/lang/String;I)Z
.end method

.method public static native WFDPostSuspend(Ljava/lang/String;)Z
.end method

.method public static native WFDSetSubtitleStatus(Z)Z
.end method

.method public static native WFDSetSuspendStatus(Z)Z
.end method

.method public static native audioReroute(I)V
.end method

.method public static native changeParams(IIII)Z
.end method

.method public static native disableUIBC(I)Z
.end method

.method public static native disableWfd()Z
.end method

.method public static native enableUIBC(I)Z
.end method

.method public static native enableWfd(Lcom/samsung/wfd/WfdDevice;)Z
.end method

.method public static eventCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 35
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "objectArray"    # [Ljava/lang/Object;

    .prologue
    .line 200
    const-string v2, "WFDNative_JAVA"

    const-string v3, "eventCallback triggered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-eqz p0, :cond_b

    if-nez p1, :cond_13

    .line 202
    :cond_b
    const-string v2, "WFDNative_JAVA"

    const-string v3, "No event info, ignore."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_12
    :goto_12
    return-void

    .line 205
    :cond_13
    move-object/from16 v0, p1

    array-length v14, v0

    .line 206
    .local v14, "array_length":I
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallbackEvent \""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\" --- objectArray length="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_3c
    move/from16 v0, v24

    if-ge v0, v14, :cond_6d

    .line 208
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tobjectArray["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "] = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v8, p1, v24

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    add-int/lit8 v24, v24, 0x1

    goto :goto_3c

    .line 210
    :cond_6d
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    if-nez v2, :cond_79

    .line 211
    const-string v2, "WFDNative_JAVA"

    const-string v3, "Listener is destroyed, can\'t notify"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 215
    :cond_79
    const-string v2, "Error"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 216
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eventName: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p1

    array-length v2, v0

    if-lez v2, :cond_12

    .line 218
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 219
    .local v21, "errorCode":Ljava/lang/String;
    const-string v2, "ERROR_CMD"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 220
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, 0x0

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 221
    :cond_bd
    const-string v2, "RTSPCloseCallback"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 222
    const-string v2, "WFDNative_JAVA"

    const-string v3, "RTSP close callback, treat as TEARDOWN start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->TEARDOWN_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 226
    .end local v21    # "errorCode":Ljava/lang/String;
    :cond_d8
    const-string v2, "ServiceStateChanged"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_160

    .line 227
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_139

    const/16 v20, 0x1

    .line 228
    .local v20, "enabled":Z
    :goto_f3
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " WFD service isActive:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz v20, :cond_13c

    .line 230
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WFD_SERVICE_ENABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, 0x0

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    .line 231
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " WFD_SERVICE_ENABLED"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 227
    .end local v20    # "enabled":Z
    :cond_139
    const/16 v20, 0x0

    goto :goto_f3

    .line 233
    .restart local v20    # "enabled":Z
    :cond_13c
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WFD_SERVICE_DISABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, 0x0

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    .line 234
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " WFD_SERVICE_DISABLED"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 236
    .end local v20    # "enabled":Z
    :cond_160
    const-string v2, "SessionStateChanged"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_286

    .line 237
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    .line 238
    .local v25, "sessionState":Ljava/lang/String;
    const/4 v4, 0x0

    .line 239
    .local v4, "sessionId":I
    const/4 v2, 0x2

    if-le v14, v2, :cond_17f

    .line 240
    add-int/lit8 v2, v14, -0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 242
    :cond_17f
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " SessionState: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v2, "STANDBY"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b8

    .line 244
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->STANDBY_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-interface {v2, v3, v4}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 245
    :cond_1b8
    const-string v2, "STOPPED"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 246
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->TEARDOWN:Lcom/samsung/wfd/WfdEnums$SessionState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->updateState(Lcom/samsung/wfd/WfdEnums$SessionState;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 247
    :cond_1ce
    const-string v2, "ESTABLISHING"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    .line 248
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHING:Lcom/samsung/wfd/WfdEnums$SessionState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->updateState(Lcom/samsung/wfd/WfdEnums$SessionState;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 249
    :cond_1e4
    const-string v2, "ESTABLISHED"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_215

    .line 250
    const-string v2, "WFDNative_JAVA"

    const-string v3, "WFD client connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 252
    .local v5, "audiomode":I
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "version":Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "ipaddr":Ljava/lang/String;
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$SessionState;->ESTABLISHED:Lcom/samsung/wfd/WfdEnums$SessionState;

    invoke-interface/range {v2 .. v7}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->updateState(Lcom/samsung/wfd/WfdEnums$SessionState;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 255
    .end local v5    # "audiomode":I
    .end local v6    # "version":Ljava/lang/String;
    .end local v7    # "ipaddr":Ljava/lang/String;
    :cond_215
    const-string v2, "ERROR"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22f

    .line 256
    const-string v2, "WFDNative_JAVA"

    const-string v3, "WFD client ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-interface {v2, v3, v4}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 258
    :cond_22f
    const-string v2, "SINK_RESPOND"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 259
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    .line 260
    .local v28, "url":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    .line 261
    .local v31, "ver":Ljava/lang/String;
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " url:  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ver: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->SINK_RESPOND:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-interface {v2, v3, v0, v1}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->sinkResponse(Lcom/samsung/wfd/WfdEnums$WfdEvent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 264
    .end local v4    # "sessionId":I
    .end local v25    # "sessionState":Ljava/lang/String;
    .end local v28    # "url":Ljava/lang/String;
    .end local v31    # "ver":Ljava/lang/String;
    :cond_286
    const-string v2, "StreamControlCompleted"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_312

    .line 265
    const-string v2, "WFDNative_JAVA"

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_12

    .line 267
    const/4 v2, 0x1

    aget-object v26, p1, v2

    check-cast v26, Ljava/lang/String;

    .line 268
    .local v26, "state":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 269
    .restart local v4    # "sessionId":I
    const-string v2, "PLAY"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2be

    .line 270
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->PLAY_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-interface {v2, v3, v4}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 271
    :cond_2be
    const-string v2, "PLAY_DONE"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d5

    .line 272
    sget-object v8, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v9, Lcom/samsung/wfd/WfdEnums$SessionState;->PLAY:Lcom/samsung/wfd/WfdEnums$SessionState;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v10, v4

    invoke-interface/range {v8 .. v13}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->updateState(Lcom/samsung/wfd/WfdEnums$SessionState;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 273
    :cond_2d5
    const-string v2, "PAUSE"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e8

    .line 274
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->PAUSE_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-interface {v2, v3, v4}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 275
    :cond_2e8
    const-string v2, "PAUSE_DONE"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2ff

    .line 276
    sget-object v8, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v9, Lcom/samsung/wfd/WfdEnums$SessionState;->PAUSE:Lcom/samsung/wfd/WfdEnums$SessionState;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v10, v4

    invoke-interface/range {v8 .. v13}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->updateState(Lcom/samsung/wfd/WfdEnums$SessionState;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 277
    :cond_2ff
    const-string v2, "TEARDOWN"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 278
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->TEARDOWN_START:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-interface {v2, v3, v4}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 286
    .end local v4    # "sessionId":I
    .end local v26    # "state":Ljava/lang/String;
    :cond_312
    const-string v2, "UIBCControlCompleted"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_380

    .line 287
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_12

    .line 288
    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 289
    .restart local v4    # "sessionId":I
    const/4 v2, 0x1

    aget-object v26, p1, v2

    check-cast v26, Ljava/lang/String;

    .line 290
    .restart local v26    # "state":Ljava/lang/String;
    const-string v2, "ENABLED"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35d

    .line 291
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->UIBC_ENABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-interface {v2, v3, v4}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    .line 292
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ENABLED"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 294
    :cond_35d
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->UIBC_DISABLED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    invoke-interface {v2, v3, v4}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    .line 295
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " DISABLED"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 298
    .end local v4    # "sessionId":I
    .end local v26    # "state":Ljava/lang/String;
    :cond_380
    const-string v2, "MMEvent"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_472

    .line 299
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_12

    .line 300
    const/4 v2, 0x0

    aget-object v30, p1, v2

    check-cast v30, Ljava/lang/String;

    .line 301
    .local v30, "var":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v29, p1, v2

    check-cast v29, Ljava/lang/String;

    .line 302
    .local v29, "value":Ljava/lang/String;
    const-string v2, "HDCP_CONNECT"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c2

    .line 303
    const-string v2, "SUCCESS"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b8

    .line 304
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_CONNECT_SUCCESS:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 306
    :cond_3b8
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_CONNECT_FAIL:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 308
    :cond_3c2
    const-string v2, "MM_RTP_EVENT"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e0

    .line 309
    const-string v2, "FAIL"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 310
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->MM_RTP_EVENT_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 312
    :cond_3e0
    const-string v2, "MMStreamStarted"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 313
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 314
    .local v32, "width":I
    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 315
    .local v23, "height":I
    const/16 v22, 0x0

    .line 316
    .local v22, "hdcp":I
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x3

    if-le v2, v3, :cond_40d

    .line 317
    const/4 v2, 0x3

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 319
    :cond_40d
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MMStreamStarted"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v16, Landroid/os/Bundle;

    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 322
    .local v16, "b":Landroid/os/Bundle;
    const-string v2, "event"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string/jumbo v3, "width"

    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v3, "height"

    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v2, "hdcp"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    const/4 v3, -0x1

    move-object/from16 v0, v16

    invoke-interface {v2, v0, v3}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notify(Landroid/os/Bundle;I)V

    goto/16 :goto_12

    .line 330
    .end local v16    # "b":Landroid/os/Bundle;
    .end local v22    # "hdcp":I
    .end local v23    # "height":I
    .end local v29    # "value":Ljava/lang/String;
    .end local v30    # "var":Ljava/lang/String;
    .end local v32    # "width":I
    :cond_472
    const-string v2, "VideoEvent"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d4

    .line 331
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_4cb

    .line 332
    const/4 v2, 0x0

    aget-object v19, p1, v2

    check-cast v19, Ljava/lang/String;

    .line 333
    .local v19, "desc":Ljava/lang/String;
    const-string v2, "RuntimeError"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49b

    .line 334
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->VIDEO_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 335
    :cond_49b
    const-string v2, "ConfigureFailure"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4af

    .line 336
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->VIDEO_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 338
    :cond_4af
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown description:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 341
    .end local v19    # "desc":Ljava/lang/String;
    :cond_4cb
    const-string v2, "WFDNative_JAVA"

    const-string v3, "No description for VideoEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 343
    :cond_4d4
    const-string v2, "AudioEvent"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55e

    .line 344
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_555

    .line 345
    const/4 v2, 0x0

    aget-object v19, p1, v2

    check-cast v19, Ljava/lang/String;

    .line 346
    .restart local v19    # "desc":Ljava/lang/String;
    const-string v2, "RuntimeError"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4fd

    .line 347
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIO_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 348
    :cond_4fd
    const-string v2, "ConfigureFailure"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_511

    .line 349
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIO_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 350
    :cond_511
    const-string v2, "AudioProxyOpened"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_525

    .line 351
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIOPROXY_OPENED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 352
    :cond_525
    const-string v2, "AudioProxyClosed"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_539

    .line 353
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->AUDIOPROXY_CLOSED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 355
    :cond_539
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown description:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 358
    .end local v19    # "desc":Ljava/lang/String;
    :cond_555
    const-string v2, "WFDNative_JAVA"

    const-string v3, "No description for AudioEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 360
    :cond_55e
    const-string v2, "HdcpEvent"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5ac

    .line 361
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_5a3

    .line 362
    const/4 v2, 0x0

    aget-object v19, p1, v2

    check-cast v19, Ljava/lang/String;

    .line 363
    .restart local v19    # "desc":Ljava/lang/String;
    const-string v2, "RuntimeError"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_587

    .line 364
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->HDCP_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 366
    :cond_587
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown description:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 369
    .end local v19    # "desc":Ljava/lang/String;
    :cond_5a3
    const-string v2, "WFDNative_JAVA"

    const-string v3, "No description for AudioEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 371
    :cond_5ac
    const-string v2, "NetworkEvent"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66c

    .line 372
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_663

    .line 373
    const/4 v2, 0x0

    aget-object v19, p1, v2

    check-cast v19, Ljava/lang/String;

    .line 374
    .restart local v19    # "desc":Ljava/lang/String;
    const-string v2, "RuntimeError"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d5

    .line 375
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->NETWORK_RUNTIME_ERROR:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 376
    :cond_5d5
    const-string v2, "ConfigureFailure"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e9

    .line 377
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->NETWORK_CONFIGURE_FAILURE:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 378
    :cond_5e9
    const-string v2, "RtpTransportNegotiationSuccess"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5fd

    .line 379
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->RTP_TRANSPORT_NEGOTIATED:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, -0x1

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 380
    :cond_5fd
    const-string v2, "BufferingUpdate"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_626

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_626

    .line 381
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 382
    .local v15, "audioTimestamp":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 383
    .local v17, "bufferLength":Ljava/lang/String;
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->BUFFER_UPDATE_EVENT:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    move-object/from16 v0, v17

    invoke-interface {v2, v3, v15, v0}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->updateEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 384
    .end local v15    # "audioTimestamp":Ljava/lang/String;
    .end local v17    # "bufferLength":Ljava/lang/String;
    :cond_626
    const-string v2, "PlaybackControl"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_647

    .line 385
    const/4 v2, 0x1

    aget-object v18, p1, v2

    check-cast v18, Ljava/lang/String;

    .line 386
    .local v18, "cmd":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v27, p1, v2

    check-cast v27, Ljava/lang/String;

    .line 387
    .local v27, "status":Ljava/lang/String;
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->TCP_PLAYBACK_CONTROL:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-interface {v2, v3, v0, v1}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->updateEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 389
    .end local v18    # "cmd":Ljava/lang/String;
    .end local v27    # "status":Ljava/lang/String;
    :cond_647
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown description:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 392
    .end local v19    # "desc":Ljava/lang/String;
    :cond_663
    const-string v2, "WFDNative_JAVA"

    const-string v3, "No description for NetworkEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 395
    :cond_66c
    const-string v2, "WeakNetwork"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68c

    .line 396
    const-string v2, "WFDNative_JAVA"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    sget-object v2, Lcom/samsung/wfd/WFDNative;->listener:Lcom/samsung/wfd/WFDNative$WfdActionListener;

    sget-object v3, Lcom/samsung/wfd/WfdEnums$WfdEvent;->WEAK_NETWORK:Lcom/samsung/wfd/WfdEnums$WfdEvent;

    const/4 v8, 0x0

    invoke-interface {v2, v3, v8}, Lcom/samsung/wfd/WFDNative$WfdActionListener;->notifyEvent(Lcom/samsung/wfd/WfdEnums$WfdEvent;I)V

    goto/16 :goto_12

    .line 399
    :cond_68c
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receive unrecognized event from WFDNative.cpp: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12
.end method

.method public static native eventWiFiStateChanged()V
.end method

.method public static native executeRuntimeCommand(I)V
.end method

.method public static native getConfigItems([I)V
.end method

.method public static native getEngineStatus()I
.end method

.method public static getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v1, "0.0.0.0"

    .line 154
    .local v1, "peerIP":Ljava/lang/String;
    const/4 v0, 0x0

    .line 156
    .local v0, "devIndex":I
    const-string v2, "WFDNative_JAVA"

    const-string v3, "getIpAddress() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v2, "WFDNative_JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "peerIP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-ltz v0, :cond_2c

    .line 159
    const-string v2, "WFDNative_JAVA"

    const-string v3, "ip info in deviceList = "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_34

    if-ltz v0, :cond_34

    .line 166
    :cond_34
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3b

    .line 172
    .end local v1    # "peerIP":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-object v1

    .line 168
    .restart local v1    # "peerIP":Ljava/lang/String;
    :cond_3b
    if-gez v0, :cond_3a

    .line 172
    const-string v1, ""

    goto :goto_3a
.end method

.method public static getLinkSpeed()I
    .registers 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .registers 1

    .prologue
    .line 141
    sget-object v0, Lcom/samsung/wfd/WFDNative;->localIpAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 142
    const-string v0, "192.168.49.1"

    sput-object v0, Lcom/samsung/wfd/WFDNative;->localIpAddress:Ljava/lang/String;

    .line 144
    :cond_c
    sget-object v0, Lcom/samsung/wfd/WFDNative;->localIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static getWfdDeviceCoupleSinkStatusBitmap(Ljava/lang/String;)I
    .registers 2
    .param p0, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public static getWfdDeviceInfoBitmap(Ljava/lang/String;)J
    .registers 3
    .param p0, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 178
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getWfdDeviceMaxThroughput(Ljava/lang/String;)I
    .registers 2
    .param p0, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public static getWfdDeviceRtspPort(Ljava/lang/String;)I
    .registers 2
    .param p0, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 184
    const/16 v0, 0x356

    return v0
.end method

.method public static native getWfdIeInfo()[I
.end method

.method public static native handleDown(I[I[I[I)V
.end method

.method public static native handleMove(I[I[I[I)V
.end method

.method public static native handleUp(I[I[I[I)V
.end method

.method public static native isActiveUIBC()Z
.end method

.method public static native isDongleRenameAvailable()Z
.end method

.method public static native isDongleTcpAvailable()Z
.end method

.method public static native keyDown(II)V
.end method

.method public static native keyUp(II)V
.end method

.method public static native negotiateRtpTransport(III)V
.end method

.method public static native pause(IZ)V
.end method

.method public static native pauseMuxer()V
.end method

.method public static native play(IZ)V
.end method

.method public static renameSink(Ljava/lang/String;)V
    .registers 1
    .param p0, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p0}, Lcom/samsung/wfd/WFDNative;->setDongleName(Ljava/lang/String;)Z

    .line 138
    return-void
.end method

.method public static native resumeMuxer()V
.end method

.method public static native sendUIBCKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public static native sendUIBCMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public static native sendUpdateUserInput(I)Z
.end method

.method public static native setAvPlaybackMode(I)Z
.end method

.method public static native setBitrate(I)V
.end method

.method public static native setBuffering(I)V
.end method

.method public static native setCapability(ILjava/lang/String;)V
.end method

.method public static native setDisplayRotation(I)Z
.end method

.method public static native setDongleName(Ljava/lang/String;)Z
.end method

.method public static native setResolution(II[I)Z
.end method

.method public static native setRtpTransport(I)V
.end method

.method public static native setUIBC(I)Z
.end method

.method public static native setVideoSurface(Landroid/view/Surface;)V
.end method

.method public static native standby(I)V
.end method

.method public static native startUIBC(Ljava/lang/Object;)V
.end method

.method public static native startWfdSession(Lcom/samsung/wfd/WfdDevice;)V
.end method

.method public static native stopUIBC()V
.end method

.method public static native stopWfdSession(I)V
.end method

.method public static native tcpPlaybackControl(II)V
.end method

.method public static native teardown(IZ)V
.end method
