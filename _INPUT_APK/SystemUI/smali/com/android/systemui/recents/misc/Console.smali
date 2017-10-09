.class public Lcom/android/systemui/recents/misc/Console;
.super Ljava/lang/Object;
.source "Console.java"


# static fields
.field public static final AnsiBlack:Ljava/lang/String; = "\u001b[30m"

.field public static final AnsiBlue:Ljava/lang/String; = "\u001b[34m"

.field public static final AnsiCyan:Ljava/lang/String; = "\u001b[36m"

.field public static final AnsiGreen:Ljava/lang/String; = "\u001b[32m"

.field public static final AnsiPurple:Ljava/lang/String; = "\u001b[35m"

.field public static final AnsiRed:Ljava/lang/String; = "\u001b[31m"

.field public static final AnsiReset:Ljava/lang/String; = "\u001b[0m"

.field public static final AnsiWhite:Ljava/lang/String; = "\u001b[37m"

.field public static final AnsiYellow:Ljava/lang/String; = "\u001b[33m"

.field public static Enabled:Z

.field public static final mTimeLogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/Console;->mTimeLogs:Ljava/util/Map;

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/misc/Console;->Enabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "\u001b[0m"

    invoke-static {v0, p0, v1, v2}, Lcom/android/systemui/recents/misc/Console;->log(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static log(ZLjava/lang/String;)V
    .locals 2
    .param p0, "condition"    # Z
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 55
    if-eqz p0, :cond_0

    .line 56
    const-string v0, ""

    const-string v1, "\u001b[0m"

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/recents/misc/Console;->log(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static log(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "condition"    # Z
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 62
    if-eqz p0, :cond_0

    .line 63
    const-string v0, "\u001b[0m"

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/recents/misc/Console;->log(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public static log(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "condition"    # Z
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "color"    # Ljava/lang/String;

    .prologue
    .line 69
    if-eqz p0, :cond_0

    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u001b[0m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public static logDivider(Z)V
    .locals 4
    .param p0, "condition"    # Z

    .prologue
    .line 87
    if-eqz p0, :cond_0

    .line 88
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==== ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ============================================================"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public static logError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    const-string v0, "Recents"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public static logRawError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 82
    const-string v0, "Recents"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    return-void
.end method

.method public static logStackTrace()V
    .locals 2

    .prologue
    .line 114
    const-string v0, ""

    const/16 v1, 0x63

    invoke-static {v0, v1}, Lcom/android/systemui/recents/misc/Console;->logStackTrace(Ljava/lang/String;I)V

    .line 115
    return-void
.end method

.method public static logStackTrace(I)V
    .locals 1
    .param p0, "depth"    # I

    .prologue
    .line 119
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/android/systemui/recents/misc/Console;->logStackTrace(Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method public static logStackTrace(Ljava/lang/String;I)V
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "depth"    # I

    .prologue
    const/4 v10, -0x1

    .line 124
    const/4 v6, 0x0

    .line 125
    .local v6, "offset":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 126
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    const-string v8, ""

    .line 128
    .local v8, "tinyStackTrace":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v0

    if-ge v4, v9, :cond_0

    .line 129
    aget-object v2, v0, v4

    .line 130
    .local v2, "el":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "className":Ljava/lang/String;
    const-string v9, "dalvik.system.VMStack"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_2

    const-string v9, "java.lang.Thread"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_2

    const-string v9, "recents.Console"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_2

    .line 140
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "el":Ljava/lang/StackTraceElement;
    :cond_0
    add-int v9, v6, p1

    array-length v10, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 141
    .local v7, "start":I
    move v3, v6

    .line 142
    .local v3, "end":I
    const-string v5, ""

    .line 143
    .local v5, "indent":Ljava/lang/String;
    add-int/lit8 v4, v7, -0x1

    :goto_1
    if-lt v4, v3, :cond_3

    .line 144
    aget-object v2, v0, v4

    .line 145
    .restart local v2    # "el":Ljava/lang/StackTraceElement;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 147
    if-le v4, v3, :cond_1

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 149
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 143
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 136
    .end local v3    # "end":I
    .end local v5    # "indent":Ljava/lang/String;
    .end local v7    # "start":I
    .restart local v1    # "className":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 128
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 152
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "el":Ljava/lang/StackTraceElement;
    .restart local v3    # "end":I
    .restart local v5    # "indent":Ljava/lang/String;
    .restart local v7    # "start":I
    :cond_3
    const/4 v9, 0x1

    const-string v10, "\u001b[31m"

    invoke-static {v9, p0, v8, v10}, Lcom/android/systemui/recents/misc/Console;->log(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public static logStartTracingTime(ZLjava/lang/String;)V
    .locals 5
    .param p0, "condition"    # Z
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p0, :cond_0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    .local v0, "curTime":J
    sget-object v2, Lcom/android/systemui/recents/misc/Console;->mTimeLogs:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Recents|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "started @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/systemui/recents/misc/Console;->log(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 101
    .end local v0    # "curTime":J
    :cond_0
    return-void
.end method

.method public static logTraceTime(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "condition"    # Z
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 105
    if-eqz p0, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v2, Lcom/android/systemui/recents/misc/Console;->mTimeLogs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v0, v4, v2

    .line 107
    .local v0, "timeDiff":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Recents|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/systemui/recents/misc/Console;->log(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 110
    .end local v0    # "timeDiff":J
    :cond_0
    return-void
.end method

.method public static motionEventActionToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "action"    # I

    .prologue
    .line 158
    packed-switch p0, :pswitch_data_0

    .line 172
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 160
    :pswitch_1
    const-string v0, "Down"

    goto :goto_0

    .line 162
    :pswitch_2
    const-string v0, "Up"

    goto :goto_0

    .line 164
    :pswitch_3
    const-string v0, "Move"

    goto :goto_0

    .line 166
    :pswitch_4
    const-string v0, "Cancel"

    goto :goto_0

    .line 168
    :pswitch_5
    const-string v0, "Pointer Down"

    goto :goto_0

    .line 170
    :pswitch_6
    const-string v0, "Pointer Up"

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static trimMemoryLevelToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 177
    sparse-switch p0, :sswitch_data_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 179
    :sswitch_0
    const-string v0, "UI Hidden"

    goto :goto_0

    .line 181
    :sswitch_1
    const-string v0, "Running Moderate"

    goto :goto_0

    .line 183
    :sswitch_2
    const-string v0, "Background"

    goto :goto_0

    .line 185
    :sswitch_3
    const-string v0, "Running Low"

    goto :goto_0

    .line 187
    :sswitch_4
    const-string v0, "Moderate"

    goto :goto_0

    .line 189
    :sswitch_5
    const-string v0, "Critical"

    goto :goto_0

    .line 191
    :sswitch_6
    const-string v0, "Complete"

    goto :goto_0

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xa -> :sswitch_3
        0xf -> :sswitch_5
        0x14 -> :sswitch_0
        0x28 -> :sswitch_2
        0x3c -> :sswitch_4
        0x50 -> :sswitch_6
    .end sparse-switch
.end method
