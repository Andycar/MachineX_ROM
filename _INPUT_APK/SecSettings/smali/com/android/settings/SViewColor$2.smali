.class Lcom/android/settings/SViewColor$2;
.super Ljava/lang/Object;
.source "SViewColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewColor;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_use_all"

    iget-object v2, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v2}, Lcom/android/settings/SViewColor;->access$100(Lcom/android/settings/SViewColor;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    iget-object v0, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v0}, Lcom/android/settings/SViewColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_random"

    iget-object v2, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-static {v2}, Lcom/android/settings/SViewColor;->access$200(Lcom/android/settings/SViewColor;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    iget-object v0, p0, Lcom/android/settings/SViewColor$2;->this$0:Lcom/android/settings/SViewColor;

    invoke-virtual {v0}, Lcom/android/settings/SViewColor;->finish()V

    .line 220
    return-void
.end method
