.class Lcom/android/settings/SViewColor2014$3;
.super Ljava/lang/Object;
.source "SViewColor2014.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewColor2014;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor2014;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor2014;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/settings/SViewColor2014$3;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 243
    if-eqz p2, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$3;->this$0:Lcom/android/settings/SViewColor2014;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/SViewColor2014;->access$102(Lcom/android/settings/SViewColor2014;Z)Z

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$3;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v0, v2}, Lcom/android/settings/SViewColor2014;->access$200(Lcom/android/settings/SViewColor2014;Z)V

    .line 249
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SViewColor2014$3;->this$0:Lcom/android/settings/SViewColor2014;

    invoke-static {v0, v2}, Lcom/android/settings/SViewColor2014;->access$102(Lcom/android/settings/SViewColor2014;Z)Z

    goto :goto_0
.end method
