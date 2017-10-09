.class public Lcom/android/server/display/WfdBridgeBase$BridgePeer;
.super Ljava/lang/Thread;
.source "WfdBridgeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WfdBridgeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BridgePeer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdBridgeBase::BridgePeer"


# instance fields
.field public mBusyFlag:I

.field public mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

.field public mIsLegacyDevice:Z

.field private mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

.field private mSocReader:Ljava/io/BufferedReader;

.field private mSocWriter:Ljava/io/PrintWriter;

.field mSocket:Ljava/net/Socket;

.field public mWbpVersion:F

.field final synthetic this$0:Lcom/android/server/display/WfdBridgeBase;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;Ljava/net/Socket;Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;)V
    .registers 8
    .param p2, "soc"    # Ljava/net/Socket;
    .param p3, "msgHandler"    # Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->this$0:Lcom/android/server/display/WfdBridgeBase;

    .line 131
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    .line 126
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mBusyFlag:I

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mIsLegacyDevice:Z

    .line 128
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mWbpVersion:F

    .line 132
    const-string v1, "WfdBridgeBase::BridgePeer"

    const-string v2, "Create BridgePeer"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput-object p3, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    .line 135
    iput-object p2, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    .line 138
    :try_start_1c
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocReader:Ljava/io/BufferedReader;

    .line 139
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocWriter:Ljava/io/PrintWriter;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3b} :catch_3f

    .line 144
    :goto_3b
    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->start()V

    .line 145
    return-void

    .line 140
    :catch_3f
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WfdBridgeBase::BridgePeer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method


# virtual methods
.method public closeSocket()V
    .registers 4

    .prologue
    .line 162
    const-string v1, "WfdBridgeBase::BridgePeer"

    const-string v2, "Close Socket"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_10

    .line 169
    :goto_f
    return-void

    .line 166
    :catch_10
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WfdBridgeBase::BridgePeer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public isSocClosed()Z
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 156
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    .line 158
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isSocConnected()Z
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 149
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    .line 151
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public run()V
    .registers 10

    .prologue
    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "msg":Ljava/lang/String;
    const/16 v5, 0x100

    new-array v0, v5, [C

    .line 194
    .local v0, "buf":[C
    const/4 v4, 0x0

    .line 196
    .local v4, "readLen":I
    :goto_6
    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    if-eqz v5, :cond_7a

    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 198
    :try_start_12
    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocReader:Ljava/io/BufferedReader;

    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    if-lez v4, :cond_6a

    .line 199
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_70

    .line 200
    .end local v2    # "msg":Ljava/lang/String;
    .local v3, "msg":Ljava/lang/String;
    :try_start_22
    const-string v5, "WfdBridgeBase::BridgePeer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Get MSG : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v5, "\r\n\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5b

    .line 203
    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v6, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    iget-object v7, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->this$0:Lcom/android/server/display/WfdBridgeBase;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v3, p0}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;)V

    invoke-virtual {v5, v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    move-object v2, v3

    .end local v3    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_6

    .line 205
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "msg":Ljava/lang/String;
    :cond_5b
    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v6, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    iget-object v7, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->this$0:Lcom/android/server/display/WfdBridgeBase;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v3, p0}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;)V

    invoke-virtual {v5, v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_68} :catch_82

    move-object v2, v3

    .end local v3    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_6

    .line 209
    :cond_6a
    const-wide/16 v6, 0xa

    :try_start_6c
    invoke-static {v6, v7}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->sleep(J)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_6

    .line 212
    :catch_70
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    :goto_71
    const-string v5, "WfdBridgeBase::BridgePeer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7a
    const-string v5, "WfdBridgeBase::BridgePeer"

    const-string v6, "End of Peer"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 212
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "msg":Ljava/lang/String;
    :catch_82
    move-exception v1

    move-object v2, v3

    .end local v3    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_71
.end method

.method public send(Ljava/lang/String;)I
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v0, "WfdBridgeBase::BridgePeer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public socketState()I
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    .line 177
    :cond_c
    const/4 v0, 0x0

    .line 180
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method
