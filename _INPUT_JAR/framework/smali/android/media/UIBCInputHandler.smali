.class public Landroid/media/UIBCInputHandler;
.super Ljava/lang/Object;
.source "UIBCInputHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIBCInputHandler_JNI.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    const-string v0, "UIBCInputHandler_JNI.java"

    const-string/jumbo v1, "try to load libuibc.so"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string/jumbo v0, "uibc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/UIBCInputHandler;->mContext:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Landroid/media/UIBCInputHandler;->mContext:Landroid/content/Context;

    .line 41
    const-string v0, "UIBCInputHandler_JNI.java"

    const-string v1, "UIBCInputHandler construct"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public static native handleDown(I[I[I[I)V
.end method

.method public static native handleMove(I[I[I[I)V
.end method

.method public static native handleScroll(FF)V
.end method

.method public static native handleUp(I[I[I[I)V
.end method

.method public static native isActiveUIBC()Z
.end method

.method public static native keyDown(II)V
.end method

.method public static native keyUp(II)V
.end method


# virtual methods
.method public isActive()Z
    .registers 6

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, "isActive":Z
    :try_start_1
    invoke-static {}, Landroid/media/UIBCInputHandler;->isActiveUIBC()Z

    move-result v1

    .line 48
    const-string v2, "UIBCInputHandler_JNI.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UIBC Active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 52
    :goto_1d
    return v1

    .line 49
    :catch_1e
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v2, "UIBCInputHandler_JNI.java"

    const-string v3, "NoSuchMethod - mWfdSinkManager.isActiveUIBC()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method
