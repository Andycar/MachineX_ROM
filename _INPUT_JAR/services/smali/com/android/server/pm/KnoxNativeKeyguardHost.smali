.class public Lcom/android/server/pm/KnoxNativeKeyguardHost;
.super Landroid/widget/LinearLayout;
.source "KnoxNativeKeyguardHost.java"


# instance fields
.field final mDelegate:Lcom/android/server/pm/KnoxKeyguardDelegate;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/KnoxKeyguardDelegate;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/android/server/pm/KnoxKeyguardDelegate;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object p2, p0, Lcom/android/server/pm/KnoxNativeKeyguardHost;->mDelegate:Lcom/android/server/pm/KnoxKeyguardDelegate;

    .line 14
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setBackgroundColor(I)V

    .line 15
    return-void
.end method
