.class Lcom/android/settings/motion2014/SMotionGuideHub2014$8;
.super Ljava/lang/Object;
.source "SMotionGuideHub2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/SMotionGuideHub2014;->showUseRingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V
    .locals 0

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$8;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$8;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$2600(Lcom/android/settings/motion2014/SMotionGuideHub2014;Z)V

    .line 1283
    return-void
.end method
