.class public abstract Lcom/android/internal/os/BaseCommand;
.super Ljava/lang/Object;
.source "BaseCommand.java"


# static fields
.field public static final FATAL_ERROR_CODE:Ljava/lang/String; = "Error type 1"

.field public static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field public static final NO_SYSTEM_ERROR_CODE:Ljava/lang/String; = "Error type 2"


# instance fields
.field protected mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mNextArg:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextArg()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v2, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 124
    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    .line 125
    .local v0, "arg":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    .line 130
    .end local v0    # "arg":Ljava/lang/String;
    :goto_9
    return-object v0

    .line 127
    :cond_a
    iget v2, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    iget-object v3, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1c

    .line 128
    iget-object v1, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    aget-object v0, v1, v2

    goto :goto_9

    :cond_1c
    move-object v0, v1

    .line 130
    goto :goto_9
.end method

.method public nextArgRequired()Ljava/lang/String;
    .registers 6

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/internal/os/BaseCommand;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_2d

    .line 141
    iget-object v2, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 142
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    .end local v1    # "prev":Ljava/lang/String;
    :cond_2d
    return-object v0
.end method

.method public nextOption()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 90
    iget-object v3, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    if-eqz v3, :cond_2e

    .line 91
    iget-object v2, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 92
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    .end local v1    # "prev":Ljava/lang/String;
    :cond_2e
    iget v3, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    iget-object v4, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_37

    move-object v0, v2

    .line 115
    :goto_36
    return-object v0

    .line 97
    :cond_37
    iget-object v3, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    aget-object v0, v3, v4

    .line 98
    .local v0, "arg":Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_47

    move-object v0, v2

    .line 99
    goto :goto_36

    .line 101
    :cond_47
    iget v3, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    .line 102
    const-string v3, "--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    move-object v0, v2

    .line 103
    goto :goto_36

    .line 105
    :cond_57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_7a

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_7a

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_77

    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    .line 108
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    .line 110
    :cond_77
    iput-object v2, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    goto :goto_36

    .line 114
    :cond_7a
    iput-object v2, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    goto :goto_36
.end method

.method public abstract onRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onShowUsage(Ljava/io/PrintStream;)V
.end method

.method public run([Ljava/lang/String;)V
    .registers 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 37
    array-length v1, p1

    if-ge v1, v2, :cond_a

    .line 38
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 56
    :goto_9
    return-void

    .line 42
    :cond_a
    iput-object p1, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    .line 47
    :try_start_12
    invoke-virtual {p0}, Lcom/android/internal/os/BaseCommand;->onRun()V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_15} :catch_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_3e

    goto :goto_9

    .line 48
    :catch_16
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 50
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 51
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3e
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 54
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_9
.end method

.method public showError(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 71
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 72
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public showUsage()V
    .registers 2

    .prologue
    .line 62
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    .line 63
    return-void
.end method
