.class public Landroid/net/wifi/WifiApWhiteList;
.super Ljava/lang/Object;
.source "WifiApWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiApWhiteList$WhiteList;
    }
.end annotation


# static fields
.field public static final WL_ALREADY_IN_TABLE:I = 0x4

.field public static final WL_FAIL:I = 0x2

.field public static final WL_NOT_IN_TABLE:I = 0x5

.field public static final WL_NOT_MAC:I = 0x3

.field public static final WL_SUCCESS:I = 0x1

.field private static volatile uniqueInstance:Landroid/net/wifi/WifiApWhiteList;


# instance fields
.field private final BUFFER_SIZE:I

.field private final HOSTAPD_ACCEPT:Ljava/lang/String;

.field private mWhiteList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/net/wifi/WifiApWhiteList$WhiteList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "/data/misc/wifi/hostapd.accept"

    iput-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->HOSTAPD_ACCEPT:Ljava/lang/String;

    .line 39
    const/16 v0, 0x40

    iput v0, p0, Landroid/net/wifi/WifiApWhiteList;->BUFFER_SIZE:I

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    .line 55
    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->createOrChangePermission()V

    .line 56
    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->readWhiteListFile()V

    .line 57
    return-void
.end method

.method private createOrChangePermission()V
    .registers 7

    .prologue
    .line 67
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/misc/wifi/hostapd.accept"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, "file":Ljava/io/File;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 70
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/sh"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "-c"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "/system/bin/chmod 665 /data/misc/wifi/hostapd.accept"

    aput-object v5, v0, v4

    .line 71
    .local v0, "cmd":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_23} :catch_30

    move-result-object v3

    .line 73
    .local v3, "p":Ljava/lang/Process;
    :try_start_24
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 74
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_2a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2a} :catch_30

    .line 81
    .end local v0    # "cmd":[Ljava/lang/String;
    .end local v3    # "p":Ljava/lang/Process;
    :goto_2a
    return-void

    .line 75
    .restart local v0    # "cmd":[Ljava/lang/String;
    .restart local v3    # "p":Ljava/lang/Process;
    :catch_2b
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2c
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_2a

    .line 78
    .end local v0    # "cmd":[Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "p":Ljava/lang/Process;
    :catch_30
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a
.end method

.method public static getInstance()Landroid/net/wifi/WifiApWhiteList;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Landroid/net/wifi/WifiApWhiteList;->uniqueInstance:Landroid/net/wifi/WifiApWhiteList;

    if-nez v0, :cond_b

    .line 61
    new-instance v0, Landroid/net/wifi/WifiApWhiteList;

    invoke-direct {v0}, Landroid/net/wifi/WifiApWhiteList;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiApWhiteList;->uniqueInstance:Landroid/net/wifi/WifiApWhiteList;

    .line 63
    :cond_b
    sget-object v0, Landroid/net/wifi/WifiApWhiteList;->uniqueInstance:Landroid/net/wifi/WifiApWhiteList;

    return-object v0
.end method

.method private isMacAddress(Ljava/lang/String;)Z
    .registers 5
    .param p1, "macAddressCandidate"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string v2, "[0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0 -9a-fA-F]{2}[-:][0-9a-fA-F]{2}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 215
    .local v1, "macPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 216
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private readWhiteListFile()V
    .registers 9

    .prologue
    .line 84
    iget-object v6, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 86
    const/4 v0, 0x0

    .line 89
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/misc/wifi/hostapd.accept"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x40

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_64
    .catchall {:try_start_6 .. :try_end_14} :catchall_55

    .line 90
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :cond_14
    :goto_14
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "bufReadLine":Ljava/lang/String;
    if-eqz v2, :cond_43

    .line 91
    const/4 v4, 0x0

    .line 92
    .local v4, "mac":Ljava/lang/String;
    const/4 v5, 0x0

    .line 93
    .local v5, "name":Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 94
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 96
    iget-object v6, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    new-instance v7, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    invoke-direct {v7, v4, v5}, Landroid/net/wifi/WifiApWhiteList$WhiteList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_37} :catch_38
    .catchall {:try_start_14 .. :try_end_37} :catchall_61

    goto :goto_14

    .line 99
    .end local v2    # "bufReadLine":Ljava/lang/String;
    .end local v4    # "mac":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :catch_38
    move-exception v3

    move-object v0, v1

    .line 100
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_3a
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_55

    .line 102
    if-eqz v0, :cond_42

    .line 104
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_50

    .line 110
    .end local v3    # "e":Ljava/io/IOException;
    :cond_42
    :goto_42
    return-void

    .line 102
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "bufReadLine":Ljava/lang/String;
    :cond_43
    if-eqz v1, :cond_66

    .line 104
    :try_start_45
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4a

    move-object v0, v1

    .line 107
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_42

    .line 105
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_4a
    move-exception v3

    .line 106
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 107
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_42

    .line 105
    .end local v2    # "bufReadLine":Ljava/lang/String;
    :catch_50
    move-exception v3

    .line 106
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 102
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_55
    move-exception v6

    :goto_56
    if-eqz v0, :cond_5b

    .line 104
    :try_start_58
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 107
    :cond_5b
    :goto_5b
    throw v6

    .line 105
    :catch_5c
    move-exception v3

    .line 106
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    .line 102
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catchall_61
    move-exception v6

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_56

    .line 99
    :catch_64
    move-exception v3

    goto :goto_3a

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "bufReadLine":Ljava/lang/String;
    :cond_66
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_42
.end method

.method private writeWhiteListFile()V
    .registers 7

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    const-string v5, "/data/misc/wifi/hostapd.accept"

    invoke-direct {v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_6a
    .catchall {:try_start_1 .. :try_end_8} :catchall_5b

    .line 116
    .end local v1    # "fw":Ljava/io/FileWriter;
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_8
    iget-object v5, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 117
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 118
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 119
    .local v4, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v4}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 121
    invoke-virtual {v4}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 122
    :cond_2c
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v4}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 124
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3d} :catch_3e
    .catchall {:try_start_8 .. :try_end_3d} :catchall_67

    goto :goto_e

    .line 126
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v4    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :catch_3e
    move-exception v0

    move-object v1, v2

    .line 127
    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :goto_40
    :try_start_40
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_5b

    .line 129
    if-eqz v1, :cond_48

    .line 131
    :try_start_45
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_56

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :cond_48
    :goto_48
    return-void

    .line 129
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_49
    if-eqz v2, :cond_6c

    .line 131
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_50

    move-object v1, v2

    .line 134
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_48

    .line 132
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_50
    move-exception v0

    .line 133
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 134
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_48

    .line 132
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :catch_56
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_5b
    move-exception v5

    :goto_5c
    if-eqz v1, :cond_61

    .line 131
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    .line 134
    :cond_61
    :goto_61
    throw v5

    .line 132
    :catch_62
    move-exception v0

    .line 133
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_61

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catchall_67
    move-exception v5

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_5c

    .line 126
    :catch_6a
    move-exception v0

    goto :goto_40

    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_6c
    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_48
.end method


# virtual methods
.method public addWhiteList(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiApWhiteList;->isMacAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 141
    const/4 v1, 0x3

    .line 151
    :goto_7
    return v1

    .line 143
    :cond_8
    iget-object v1, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 144
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 146
    const/4 v1, 0x4

    goto :goto_7

    .line 149
    :cond_26
    iget-object v1, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    new-instance v2, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    invoke-direct {v2, p1, p2}, Landroid/net/wifi/WifiApWhiteList$WhiteList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->writeWhiteListFile()V

    .line 151
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 183
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 185
    .local v1, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 186
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v2

    .line 189
    .end local v1    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :goto_20
    return-object v2

    :cond_21
    const-string v2, ""

    goto :goto_20
.end method

.method public getIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/net/wifi/WifiApWhiteList$WhiteList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 205
    const/4 v0, 0x0

    .line 206
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_9
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public isContains(Ljava/lang/String;)Z
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 194
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 196
    .local v1, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 197
    const/4 v2, 0x1

    .line 200
    .end local v1    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public modifyWhiteList(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 170
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 172
    .local v1, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 173
    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->setName(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->writeWhiteListFile()V

    .line 175
    const/4 v2, 0x1

    .line 178
    .end local v1    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :goto_23
    return v2

    :cond_24
    const/4 v2, 0x2

    goto :goto_23
.end method

.method public removeWhiteList(Ljava/lang/String;)I
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 156
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 158
    .local v1, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 159
    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 160
    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->writeWhiteListFile()V

    .line 161
    const/4 v2, 0x1

    .line 165
    .end local v1    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :goto_25
    return v2

    :cond_26
    const/4 v2, 0x2

    goto :goto_25
.end method
