.class public Lcom/android/settings/LabelName;
.super Landroid/app/Activity;
.source "LabelName.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f0400f9

    invoke-virtual {p0, v0}, Lcom/android/settings/LabelName;->setContentView(I)V

    .line 14
    return-void
.end method
