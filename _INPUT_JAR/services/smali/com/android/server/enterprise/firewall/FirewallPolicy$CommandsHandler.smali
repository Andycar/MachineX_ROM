.class Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;
.super Landroid/os/Handler;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .registers 2

    .prologue
    .line 2091
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2092
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2096
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 2097
    .local v6, "data":Landroid/os/Bundle;
    const-string v15, "command"

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2098
    .local v2, "command":Ljava/lang/String;
    const-string/jumbo v15, "type"

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 2100
    .local v12, "type":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2101
    .local v5, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v15, " "

    invoke-virtual {v2, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2102
    .local v4, "commandArray":[Ljava/lang/String;
    const-string v11, ""

    .line 2104
    .local v11, "result":Ljava/lang/String;
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_25
    if-ge v8, v9, :cond_2f

    aget-object v3, v1, v8

    .line 2105
    .local v3, "commandArg":Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2104
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 2109
    .end local v3    # "commandArg":Ljava/lang/String;
    :cond_2f
    :try_start_2f
    new-instance v15, Ljava/lang/ProcessBuilder;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v10

    .line 2112
    .local v10, "process":Ljava/lang/Process;
    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    .line 2113
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    invoke-static {v15, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$000(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v11

    .line 2114
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkIptablesCommandResult(Ljava/lang/String;)Z
    invoke-static {v15, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$100(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9a

    .line 2115
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllUsers()Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$200(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/util/ArrayList;

    move-result-object v13

    .line 2116
    .local v13, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .local v14, "x":I
    :goto_68
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_9a

    .line 2117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    move-object/from16 v17, v0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getFirewallPolicyCache(I)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;
    invoke-static {v0, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$300(Lcom/android/server/enterprise/firewall/FirewallPolicy;I)Lcom/android/server/enterprise/firewall/FirewallPolicyCache;

    move-result-object v15

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->addPendingCommand(Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V
    invoke-static {v0, v15, v2, v12}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$400(Lcom/android/server/enterprise/firewall/FirewallPolicy;Lcom/android/server/enterprise/firewall/FirewallPolicyCache;Ljava/lang/String;I)V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_8f} :catch_92
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_8f} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_8f} :catch_a4

    .line 2116
    add-int/lit8 v14, v14, 0x1

    goto :goto_68

    .line 2120
    .end local v10    # "process":Ljava/lang/Process;
    .end local v13    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "x":I
    :catch_92
    move-exception v7

    .line 2121
    .local v7, "e":Ljava/io/IOException;
    const-string v15, "FirewallPolicy"

    const-string v16, "IOException iptables command failed "

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    .end local v7    # "e":Ljava/io/IOException;
    :cond_9a
    :goto_9a
    return-void

    .line 2122
    :catch_9b
    move-exception v7

    .line 2123
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v15, "FirewallPolicy"

    const-string v16, "InterruptedException iptables command failed "

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a

    .line 2124
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catch_a4
    move-exception v7

    .line 2125
    .local v7, "e":Ljava/lang/Exception;
    const-string v15, "FirewallPolicy"

    const-string v16, "Exception on CommandThread"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a
.end method
