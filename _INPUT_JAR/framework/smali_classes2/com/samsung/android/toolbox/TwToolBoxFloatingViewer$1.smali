.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$1;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 2

    .prologue
    .line 248
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardSecure()Z
    .registers 2

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardShowing()Z
    .registers 2

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method
