.class Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;
.super Landroid/os/Handler;
.source "IptablesLogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/IptablesLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/IptablesLogging;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/IptablesLogging;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;->this$0:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    const-wide/16 v12, 0x3e8

    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_3b

    .line 114
    :goto_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 115
    .local v5, "data":Landroid/os/Bundle;
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 116
    .local v9, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 119
    .local v8, "it":Ljava/util/Iterator;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v4, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8e

    .line 122
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "command":Ljava/lang/String;
    if-eqz v1, :cond_16

    .line 124
    const-string v12, " "

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "commandArray":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v10, v0

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_31
    if-ge v7, v10, :cond_45

    aget-object v2, v0, v7

    .line 127
    .local v2, "commandArg":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    .line 110
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "commandArg":Ljava/lang/String;
    .end local v3    # "commandArray":[Ljava/lang/String;
    .end local v4    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "data":Landroid/os/Bundle;
    .end local v7    # "i$":I
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "len$":I
    :catch_3b
    move-exception v6

    .line 111
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v6, v13}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_5

    .line 130
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v3    # "commandArray":[Ljava/lang/String;
    .restart local v4    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "data":Landroid/os/Bundle;
    .restart local v7    # "i$":I
    .restart local v8    # "it":Ljava/util/Iterator;
    .restart local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "len$":I
    :cond_45
    :try_start_45
    new-instance v12, Ljava/lang/ProcessBuilder;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v11

    .line 132
    .local v11, "process":Ljava/lang/Process;
    invoke-virtual {v11}, Ljava/lang/Process;->waitFor()I
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_5d} :catch_61
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_5d} :catch_75
    .catchall {:try_start_45 .. :try_end_5d} :catchall_89

    .line 140
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_16

    .line 133
    .end local v11    # "process":Ljava/lang/Process;
    :catch_61
    move-exception v6

    .line 134
    .local v6, "e":Ljava/io/IOException;
    :try_start_62
    const-string v12, "IptablesLogging"

    const-string v13, "handleMessage.IOException"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v6, v13}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_62 .. :try_end_71} :catchall_89

    .line 140
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_16

    .line 136
    .end local v6    # "e":Ljava/io/IOException;
    :catch_75
    move-exception v6

    .line 137
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_76
    const-string v12, "IptablesLogging"

    const-string v13, "handleMessage.InterruptedException"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v6, v13}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_76 .. :try_end_85} :catchall_89

    .line 140
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_16

    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_89
    move-exception v12

    invoke-interface {v4}, Ljava/util/List;->clear()V

    throw v12

    .line 144
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "command":Ljava/lang/String;
    .end local v3    # "commandArray":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    :cond_8e
    return-void
.end method
