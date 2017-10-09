.class Lcom/android/server/pm/KnoxKeyguardDelegate$2;
.super Ljava/lang/Object;
.source "KnoxKeyguardDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/KnoxKeyguardDelegate;->hideScrim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V
    .registers 2

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$2;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 258
    const-string v0, "KnoxKeyguardDelegate"

    const-string v1, " hide scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$2;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    # getter for: Lcom/android/server/pm/KnoxKeyguardDelegate;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;
    invoke-static {v0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->access$400(Lcom/android/server/pm/KnoxKeyguardDelegate;)Lcom/android/server/pm/KnoxNativeKeyguardHost;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setVisibility(I)V

    .line 260
    return-void
.end method
