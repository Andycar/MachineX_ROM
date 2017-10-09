.class Lcom/android/settings/SelectItemDisplay$6;
.super Ljava/lang/Object;
.source "SelectItemDisplay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SelectItemDisplay;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SelectItemDisplay;


# direct methods
.method constructor <init>(Lcom/android/settings/SelectItemDisplay;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/settings/SelectItemDisplay$6;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay$6;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-virtual {v0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    .line 312
    return-void
.end method
