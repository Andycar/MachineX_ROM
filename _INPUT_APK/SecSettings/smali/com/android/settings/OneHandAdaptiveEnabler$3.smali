.class Lcom/android/settings/OneHandAdaptiveEnabler$3;
.super Ljava/lang/Object;
.source "OneHandAdaptiveEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OneHandAdaptiveEnabler;->showHandAdaptiveModeDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandAdaptiveEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandAdaptiveEnabler;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/OneHandAdaptiveEnabler$3;->this$0:Lcom/android/settings/OneHandAdaptiveEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/OneHandAdaptiveEnabler$3;->this$0:Lcom/android/settings/OneHandAdaptiveEnabler;

    invoke-static {v0}, Lcom/android/settings/OneHandAdaptiveEnabler;->access$000(Lcom/android/settings/OneHandAdaptiveEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hand_adaptable_operation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    return-void
.end method
